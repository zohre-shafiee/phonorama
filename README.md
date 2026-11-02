# Phonorama — A web-based phonological comparison tool

**Project Management coursework · Collaboration with Aster Formation · French as a Foreign Language (FLE) · Phonology · Web development**

## Overview

Developed as part of a **Project Management course at Université Grenoble Alpes**, in collaboration with **Aster Formation**, Phonorama is a web application designed to help teachers of French as a foreign language explore differences between **French phonological inventories** and those of other languages. The goal is to make linguistic information easier to consult when preparing pronunciation-focused teaching activities.

Instead of displaying an unstructured list of sounds, the interface places phonemes into **consonant and vowel charts** and uses visual distinctions to identify sounds shared by French and the selected language.

## How it works

1. The application retrieves the list of available languages from a database.
2. The user selects a language in the interface.
3. JavaScript requests phonological data through PHP endpoints.
4. The backend queries phoneme inventories and phonetic features in SQLite.
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
                 SQLite database
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
- **Inventory membership:** whether a phoneme appears in French, the selected language or both.

The browser uses these features to place labels in the appropriate table cells. The interface also contains code paths for tonal information where available; this does not imply full support for every tonal language.

## Technical implementation

**Frontend**
- `phonorama.html`: user interface and phoneme tables;
- `style.css`, `style_tableau.css`: styling;
- `script.js`: language selection, API requests, table updates, reset behaviour and phonological descriptions.

**Backend and data**
- `get_langues.php`: returns available languages as JSON;
- `get_phonemes.php`: queries French and selected-language inventories and marks shared phonemes;
- `get_description.php`: returns a language description;
- `gestion.db`: SQLite database used by the PHP endpoints;
- `gestion.sql`, `panorama_mysql.sql`: SQL resources included in the repository.

**Supporting research script**
- `extraction_des_pdfs.py`: an exploratory extraction/OCR script using PDF processing, Tesseract and IPA-specific post-correction. It is a supporting data-processing component, **not** required for the browser to display the existing database records.

## Technologies

- HTML, CSS and JavaScript
- PHP and JSON endpoints
- SQLite and SQL queries
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

## Limitations

- Coverage depends on the languages and phoneme features present in the database.
- Inventory-level contrasts do not automatically predict every pronunciation difficulty a learner may experience.
- The OCR/IPA extraction script has known limitations: specialised phonetic symbols and PDF layout can produce transcription errors, and its Tesseract path is environment-specific.
- The repository does not contain a published automated test suite.

## Teamwork and contribution

Phonorama was developed by **Yoann Goudin, Ekaterina Leonova, Catherine Kovach, Camille Benoit-Guyod, and Zohré Shafiee** as a **five-person team** within the **Project Management course at Université Grenoble Alpes**, in collaboration with **Aster Formation**. It was a collaborative academic project carried out for an external partner, not a solo project.

My involvement included developing parts of the web application with **JavaScript and PHP** and working with **SQLite**. The codebase represents collaborative work, and I do not claim exclusive authorship of all components.

## Related project material

Supplementary university project files:
https://cloud.univ-grenoble-alpes.fr/s/jozpNr3zajXECtx?dir=/&editing=false&openfile=true

Access and availability depend on the original university share settings.
