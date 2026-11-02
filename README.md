# Phonorama — A web-based phonological comparison tool

**Project Management coursework · Collaboration with Aster Formation · French as a Foreign Language (FLE) · Phonology · Web development**

🔗 **Live demo:** [i3l.univ-grenoble-alpes.fr/~l3_gr16/PWTAL/projet-pannorama/phonorama-main/phonorama.html](http://i3l.univ-grenoble-alpes.fr/~l3_gr16/PWTAL/projet-pannorama/phonorama-main/phonorama.html)
(hosted on the Université Grenoble Alpes i3l server)

## Overview

Developed as part of a **Project Management course at Université Grenoble Alpes**, in collaboration with **Aster Formation**, Phonorama is a web application designed to help teachers of French as a foreign language explore differences between **French phonological inventories** and those of other languages. The goal is to make linguistic information easier to consult when preparing pronunciation-focused teaching activities.

Instead of displaying an unstructured list of sounds, the interface places phonemes into **consonant and vowel charts** and uses visual distinctions to identify sounds shared by French and the selected language.

## How it works

1. The application retrieves the list of available languages from a database.
2. The user selects a language in the interface.
3. JavaScript requests phonological data through PHP endpoints.
4. The backend queries phoneme inventories and phonetic features (MySQL on the university server, SQLite for local development).
5. The interface displays phonemes in consonant/vowel charts, distinguishing shared sounds from sounds specific to either inventory.
6. A phonological description of the selected language can also be displayed.

### Simplified data flow

```text
Select a language
       |
       v
JavaScript fetch()
       |
       +--> get_langues.php       List of languages
       +--> get_phonemes.php      French vs selected-language inventories
       +--> get_description.php   Phonological description
                      |
                      v
          MySQL (server) / SQLite (local)
                      |
                      v
             JSON response to browser
                      |
                      v
          Interactive phoneme comparison
```

## Phonological features

The backend uses database tables containing phonemes, language inventories, IPA symbols and sound features.

The comparison code retrieves, when available:

- **Consonants:** manner of articulation, place of articulation and voicing;
- **Vowels:** openness, front/back position and rounding;
- **Inventory membership:** whether a phoneme appears in French, the selected language or both;
- **Affricates** (e.g. `tʃ`, `ts`, `tɕ`) are placed in the affricate row using the place of articulation of their fricative part;
- **Diphthongs** (phonemes made of two or more vowel symbols, e.g. `aɪ`, `ɪə`) are listed in a dedicated column;
- Lateral approximants (`l`, `ʎ`) and a few symbols stored without consonant features (`w`, `ɥ`, `ɕ`, `ʑ`) are mapped to their cell in the chart.

The language menu only lists languages that have a phonological inventory in the database (currently 8: Bengali, Bulgarian, English, Hindi, Italian, Nepali, Polish, Urdu). French is the reference language and is always displayed.

The browser uses these features to place labels in the appropriate table cells. Tone tables are present in the HTML but hidden, since none of the languages currently in the database is tonal.

## Technical implementation

**Frontend**
- `phonorama.html`: user interface and phoneme tables;
- `style.css`, `style_tableau.css`: styling;
- `script.js`: language selection, API requests, table updates, reset behaviour and phonological descriptions.

**Backend and data**
- `get_langues.php`: returns available languages as JSON;
- `get_phonemes.php`: queries French and selected-language inventories and marks shared phonemes;
- `get_description.php`: returns a language description;
- `db_connect.php`: shared PDO connection (MySQL when a private configuration exists, SQLite otherwise);
- `db_config.example.php`: template for the private MySQL configuration (no real credentials);
- `gestion.db`: SQLite database for local development;
- `gestion.sql`: SQL dump of the original SQLite database;
- `panorama_mysql.sql`: MySQL-compatible import script (binary collation on IPA columns, index length adapted to the server).

**Supporting research script**
- `extraction_des_pdfs.py`: an exploratory extraction/OCR script using PDF processing, Tesseract and IPA-specific post-correction. It is a supporting data-processing component, **not** required for the browser to display the existing database records.

## Technologies

- HTML, CSS and JavaScript
- PHP and JSON endpoints
- MySQL, SQLite and SQL queries (PDO)
- Fetch API
- Python, Beautiful Soup, PyMuPDF and Tesseract OCR (supporting extraction script)

## Running the web application locally

This project needs a **PHP-capable web server**; opening the HTML file directly will not execute PHP requests.

1. Install PHP with the SQLite PDO extension enabled.
2. Place the repository in a directory served by PHP.
3. Ensure `gestion.db` is available to the PHP endpoints.
4. For a quick local development server, run:

```bash
php -S localhost:8000
```

Then open `http://localhost:8000/phonorama.html`.

The bundled database and environment may require local setup or adjustments. This README documents the source code; it is **not** a claim that the current application has been independently tested in every environment.

## Deploying on a MySQL server

1. Import `panorama_mysql.sql` into an empty MySQL database (e.g. with phpMyAdmin).
   ⚠️ The script starts with `DROP TABLE IF EXISTS`: do not run it again on a database that is already in use.
2. Copy `db_config.example.php` to **`db_config.local.php`** and fill in the database name, user and password.
   Place it either next to `db_connect.php` or, preferably, outside the public web folder in `~/private/db_config.local.php`.
   This file is listed in `.gitignore` and must never be committed.
3. Upload the HTML, CSS, JS and PHP files to the web folder. The `.db` and `.sql` files are not needed on the server and should not be publicly accessible.

## Limitations

- Coverage depends on the languages and phoneme features present in the database: 103 languages are listed in the `languages` table, but only 8 currently have an inventory.
- Inventory-level contrasts do not automatically predict every pronunciation difficulty a learner may experience.
- The OCR/IPA extraction script has known limitations: specialised phonetic symbols and PDF layout can produce transcription errors, and its Tesseract path is environment-specific.
- The repository does not contain a published automated test suite.

## Teamwork and contribution

Phonorama was developed by **Yoann Goudin, Ekaterina Leonova, Catherine Kovach, Camille Benoit-Guyod, and Zohré Shafiee** as a **five-person team** within the **Project Management course at Université Grenoble Alpes**, in collaboration with **Aster Formation**. It was a collaborative academic project carried out for an external partner, not a solo project.

My involvement included developing parts of the web application with **JavaScript and PHP** and working with **SQLite**. After the course, I migrated the database to **MySQL**, deployed the application on the university server, fixed the placement of affricates, diphthongs and lateral consonants in the charts, and redesigned the interface. The codebase represents collaborative work, and I do not claim exclusive authorship of all components.

## Related project material

Supplementary university project files:
https://cloud.univ-grenoble-alpes.fr/s/jozpNr3zajXECtx?dir=/&editing=false&openfile=true

Access and availability depend on the original university share settings.
