<?php
header('Content-Type: application/json; charset=utf-8');

$id_fr = 40; // ID du français dans la bdd

//Récupère langue sélectionnée
if (!isset($_GET['id_langue']) || empty($_GET['id_langue'])) {
    echo json_encode(['success' => false, 'message' => 'Paramètre id_langue manquant'], JSON_UNESCAPED_UNICODE);
    exit;
}

$id_select = (int) $_GET['id_langue']; 

try {
    require_once __DIR__ . '/db_connect.php';
    $conn = panneaux_db();


    // Requête SQL pour tous les phonèmes (fr + autre langue)
    $sql_all = "SELECT p.phoneme_label AS label, li.id_langue, -- Symboles API pour la langue sélectionnée (+fr)
                       s.symbol AS sym1, -- 1er symbole du phonème
                       c.mode_dart AS mode, c.lieu_dart AS point, c.voise AS voix, -- Coordonnées des consonnes
                       s2b.symbol AS sym2, c2.mode_dart AS mode2, c2.lieu_dart AS point2, -- 2e symbole (affriquées)
                       v.ferm_ouv, v.post_ant, v.arrondi, -- Coordonnées des voyelles
                       (SELECT COUNT(*)
                          FROM phoneme_sequence ps2
                          JOIN ipa_symbols s2 ON ps2.id_ipa = s2.id_ipa
                         WHERE ps2.id_phoneme = p.id_phoneme
                           AND s2.categorie = 'voyelle') AS nb_voyelles -- 2 voyelles ou plus = diphtongue

                FROM phonemes p

                JOIN language_inventory li ON p.id_phoneme = li.id_phoneme -- Jointure entre son et langue

                LEFT JOIN phoneme_sequence ps ON p.id_phoneme = ps.id_phoneme AND ps.position = 1                                                                                                      
                LEFT JOIN ipa_symbols s ON ps.id_ipa = s.id_ipa
                LEFT JOIN consonant_features c ON s.id_ipa = c.id_ipa -- Lien entre traits des consonnes et id
                LEFT JOIN vowel_features v ON s.id_ipa = v.id_ipa -- Lien entre traits des voyelles et id

                LEFT JOIN phoneme_sequence ps2b ON p.id_phoneme = ps2b.id_phoneme AND ps2b.position = 2 -- 2e symbole
                LEFT JOIN ipa_symbols s2b ON ps2b.id_ipa = s2b.id_ipa
                LEFT JOIN consonant_features c2 ON s2b.id_ipa = c2.id_ipa

                WHERE li.id_langue IN (:id_fr, :id_select)"; // Pour le fr et la langue sélectionnée

    $stmt = $conn->prepare($sql_all);
    $stmt->execute(['id_fr' => $id_fr, 'id_select' => $id_select]);
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // On sépare les phonèmes du fr. et les phonèmes de l'autre langue
    $phons_fr_labels = [];
    $phons_autre_labels = [];
    foreach ($rows as $row) {
        if ($row['id_langue'] == $id_fr) $phons_fr_labels[] = $row['label'];
        if ($row['id_langue'] == $id_select) $phons_autre_labels[] = $row['label'];
    }

    // Symboles classés « autre » dans la base (sans traits consonantiques) :
    // on leur donne une place dans le tableau des consonnes
    $traits_autres = [
        'w' => ['spirante',  'labio-vel', 'voisée'],
        'ɥ' => ['spirante',  'labio-pal', 'voisée'],
        'ɕ' => ['fricative', 'alv-pal',   'sourde'],
        'ʑ' => ['fricative', 'alv-pal',   'voisée'],
    ];

    foreach ($rows as &$row) {
        // Traits manquants pour w, ɥ, ɕ, ʑ
        if (empty($row['mode']) && isset($traits_autres[$row['sym1']])) {
            list($row['mode'], $row['point'], $row['voix']) = $traits_autres[$row['sym1']];
        }

        // Les latérales (l, ʎ) correspondent à la ligne « Spirantes latér. » du tableau
        if ($row['mode'] === 'latérale') {
            $row['mode'] = 'spir-lat';
        }

        // Affriquées : occlusive + fricative (tʃ, dʒ, ts, tɕ...) -> ligne « Affriquées »,
        // colonne du point d'articulation de la fricative
        $mode2  = $row['mode2'];
        $point2 = $row['point2'];
        if (empty($mode2) && isset($traits_autres[$row['sym2']])) {
            list($mode2, $point2) = $traits_autres[$row['sym2']];
        }
        if ($row['mode'] === 'occlusive' && $mode2 === 'fricative') {
            $row['mode']  = 'affr';
            $row['point'] = $point2;
        }
    }
    unset($row);

    // JSON final
    $resultat = ['fr' => [], 'autre' => []];

    foreach ($rows as $row) {
        $label = $row['label'];
        $is_commun = (in_array($label, $phons_fr_labels) && in_array($label, $phons_autre_labels)); // Booléen pour savoir si le phon. est en commun ou non
        
        $data = [
            'label'     => $label,
            'is_commun' => $is_commun,

            // IMPORTANT : S'assurer que les clés entre [] correspondent aux noms des data- dans le html 
            'mode'      => $row['mode'],
            'point'     => $row['point'],
            'voix'      => $row['voix'],
            'ferm_ouv'  => $row['ferm_ouv'],
            'post_ant'  => $row['post_ant'],
            'arrondi'   => $row['arrondi'],

            // Diphtongue : au moins deux symboles vocaliques (ex. aɪ, eɪ, ɪə)
            'is_diphtongue' => ((int) $row['nb_voyelles'] >= 2)
        ];

        if ($row['id_langue'] == $id_fr) {
            $resultat['fr'][] = $data;
        } else {
            $resultat['autre'][] = $data;
        }
    }

    echo json_encode($resultat, JSON_UNESCAPED_UNICODE);

// Gestion des erreurs 
} catch(Throwable $e) {
    echo json_encode(['success' => false, 'message' => 'Database request failed. Check the server error log.'], JSON_UNESCAPED_UNICODE);
}
?>