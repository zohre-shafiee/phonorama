<?php

header('Content-Type: application/json');

try {
    require_once __DIR__ . '/db_connect.php';
    $conn = panneaux_db();
    
    // Récupération langue sélectionnée 
    // Seulement les langues qui ont un inventaire phonologique (sauf le français, langue de référence)
    $sql = "SELECT DISTINCT l.id_langue, l.nom_langue
            FROM languages l
            JOIN language_inventory li ON li.id_langue = l.id_langue
            WHERE l.id_langue <> 40
            ORDER BY l.nom_langue"; 
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $langues = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($langues, JSON_UNESCAPED_UNICODE);

// Gestion des erreurs    
} catch(Throwable $e) { 
    echo json_encode([
        'success' => false,
        'message' => 'Database request failed. Check the server error log.'
    ]);
}
?>