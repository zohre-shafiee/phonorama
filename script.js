// Formulaire et boutons
document.addEventListener("DOMContentLoaded", () => {
    const select = document.getElementById("langue-select");
    const btnValider = document.getElementById("btn-valider");
    const btnReset = document.getElementById("btn-reset");
    
    // Zone à cacher quand aucune langue n'est sélectionnée 
    const zoneResultats = document.getElementById("zone-resultats");

    // Chargement du menu déroulant
    fetch("get_langues.php")
        .then(r => r.json())
        .then(langues => {
            select.innerHTML = '<option value="">-- Sélectionner une langue --</option>';
            langues.forEach(l => {
                const opt = document.createElement("option");
                opt.value = l.id_langue; 
                opt.textContent = l.nom_langue; 
                select.appendChild(opt);
            });
        })
        .catch(err => console.error("Erreur menu:", err));

    // 2. Action au clic sur Valider
    btnValider.addEventListener("click", () => {
        const idLangue = select.value;
        if (!idLangue) return alert("Sélectionnez une langue");

        // Affiche les tableaux
        if (zoneResultats) zoneResultats.style.display = "block";

        chargerDescription(idLangue);

        fetch(`get_phonemes.php?id_langue=${encodeURIComponent(idLangue)}`)
            .then(r => r.json())
            .then(data => {
                console.log("Données reçues :", data);
                remplirTableaux(data);
            })
            .catch(err => console.error("Erreur PHP:", err));
    });

    // Réinitialisation
    if (btnReset) {
        btnReset.addEventListener("click", () => {
            select.value = ""; 
            
            // Cacher les tableaux
            if (zoneResultats) zoneResultats.style.display = "none";

            // Nettoyage préventif des cellules
            document.querySelectorAll('td[data-point], td[data-post_ant], td[data-level], td[data-diphtongue]').forEach(td => {
                td.innerHTML = "";
            });
            
            const descElem = document.getElementById("description-phonologique");
            if (descElem) {
                descElem.textContent = "Sélectionnez une langue pour afficher sa description.";
            }
        });
    }
});

function remplirTableaux(data) {
    // Nettoyage avant affichage
    document.querySelectorAll('td[data-point], td[data-post_ant], td[data-level], td[data-diphtongue]').forEach(td => {
        td.innerHTML = "";
    });

    ['fr', 'autre'].forEach(groupe => {
        if (!data[groupe]) return;

        data[groupe].forEach(p => {
            let selector = "";

            // Les diphtongues vont dans leur propre tableau (avant le test des voyelles)
            if (p.is_diphtongue) {
                selector = `#diphtongues td[data-diphtongue]`;
            }
            else if (p.mode && p.point && p.voix) {
                selector = `#consonnes tr[data-mode="${p.mode}"] td[data-point="${p.point}"][data-voix="${p.voix}"]`;
            } 
            else if (p.ferm_ouv && p.post_ant) {
                selector = `#voyelles tr[data-ferm_ouv="${p.ferm_ouv}"] td[data-post_ant="${p.post_ant}"][data-arrondi="${p.arrondi}"]`;
            }
            else if (p.level && p.contour) {
                 selector = `#tons td[data-level="${p.level}"][data-contour="${p.contour}"]`;
            }

            if (selector) {
                const cell = document.querySelector(selector);
                if (cell) {
                    const existant = Array.from(cell.querySelectorAll('span')).find(s => s.textContent === p.label);
                    
                    if (!existant) {
                        const span = document.createElement("span");
                        span.textContent = p.label;
                        span.classList.add("phoneme-cell");

                        if (p.is_commun) {
                            span.classList.add("present-commun");
                        } else if (groupe === 'fr') {
                            span.classList.add("present-fr");
                        } else {
                            span.classList.add("present-autre");
                        }
                        
                        cell.appendChild(span);
                        
                        // Tri pour séquences de phonèmes
                        const spans = Array.from(cell.querySelectorAll('span'));
                        spans.sort((a, b) => a.textContent.length - b.textContent.length);
                        spans.forEach(s => cell.appendChild(s));
                    }
                }
            }
        });
    });
}

// Affichage descriptions phonologiques
function chargerDescription(id) {
    fetch(`get_description.php?id_langue=${id}`)
        .then(r => r.json())
        .then(data => {
            const descElem = document.getElementById("description-phonologique");
            if (descElem) {
                descElem.textContent = data.description_text || "Pas de description disponible.";
            }
        });
}