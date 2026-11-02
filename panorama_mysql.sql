-- MySQL dump generated from gestion.db for phpMyAdmin import
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS language_inventory;
DROP TABLE IF EXISTS phoneme_sequence;
DROP TABLE IF EXISTS phonology_descriptions;
DROP TABLE IF EXISTS tone_features;
DROP TABLE IF EXISTS diacritics_supras_features;
DROP TABLE IF EXISTS other_symbols_features;
DROP TABLE IF EXISTS nonpulmonic_features;
DROP TABLE IF EXISTS consonant_features;
DROP TABLE IF EXISTS vowel_features;
DROP TABLE IF EXISTS phonemes;
DROP TABLE IF EXISTS ipa_symbols;
DROP TABLE IF EXISTS languages;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE languages (
    id_langue INT NOT NULL,
    nom_langue VARCHAR(255) NOT NULL,
    glottocode VARCHAR(50),
    PRIMARY KEY (id_langue)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table languages (103 rows)
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (1, 'Afar', 'afar1241');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (2, 'Afrikaans', 'afri1274');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (3, 'Albanais', 'tosk1239');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (4, 'Allemand', 'stan1295');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (5, 'Amharique', 'amha1245');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (6, 'Anglais', 'stan1293');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (7, 'Arabe', 'stan1318');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (8, 'Arabe de Juba', 'suda1237');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (9, 'Arménien occidental', 'homs1234');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (10, 'Arménien oriental', 'nucl1235');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (11, 'Balante ganja', 'bala1302');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (12, 'Bambara', 'bamb1269');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (13, 'Baoulé', 'baou1238');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (14, 'Basaa', 'basa1284');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (15, 'Basque', 'basq1248');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (16, 'Bengali', 'beng1280');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (17, 'Berbère', 'tach1250');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (18, 'Birman', 'nucl1310');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (19, 'Bulgare', 'bulg1262');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (20, 'Breton', 'bret1244');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (21, 'Catalan', 'stan1289');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (22, 'Chinois mandarin', 'mand1415');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (23, 'Comorien', 'ngaz1238');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (24, 'Coréen', 'kore1280');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (25, 'Créole capverdien', 'kabul1256');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (26, 'Créole guadeloupéen', 'guad1242');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (27, 'Créole haïtien', 'hait1244');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (28, 'Créole martiniquais', 'mar1259');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (29, 'Créole mauricien', 'mori1278');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (30, 'Créole réunionais', 'reun1238');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (31, 'Créole vincentien', 'vinc1243');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (32, 'Danois', 'dani1285');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (33, 'Dari', 'dari1249');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (34, 'Espagnol', 'stan1288');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (35, 'Ewe', 'ewee1241');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (36, 'Fang boulou', 'bulu1251');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (37, 'Fang ntoumou', 'ntum1238');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (38, 'Filipino', 'fili1244');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (39, 'Finnois', 'finn1318');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (40, 'Français', 'stan1290');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (41, 'Galicien', 'gali1258');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (42, 'Géorgien', 'nucl1302');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (43, 'Grec', 'mode1248');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (44, 'Haoussa', 'haus1257');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (45, 'Hébreu', 'hebr1245');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (46, 'Hindi', 'hind1269');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (47, 'Hongrois', 'hung1274');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (48, 'Islandais', 'icel1247');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (49, 'Italien', 'ital1282');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (50, 'Japonais', 'nucl1643');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (51, 'Joola fooni', 'jola1263');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (52, 'Kabyle', 'kaby1243');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (53, 'Kazakh', 'kaza1248');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (54, 'Khmer', 'cent1989');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (55, 'Kriol', 'uppe1455');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (56, 'Kurde kurmandji', 'nort2641');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (57, 'Kurde sorani', 'cent1972');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (58, 'Laze', 'lazz1240');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (59, 'Letton', 'stan1325');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (60, 'Lingala', 'ling1263');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (61, 'Luxembourgeois', 'luxe1241');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (62, 'Malgache', 'plat1254');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (63, 'Maltais', 'malt1254');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (64, 'Mandinka', 'mand1436');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (65, 'Manjaku', 'mand1418');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (66, 'Mina', 'genn1243');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (67, 'Néerlandais', 'dutc1256');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (68, 'Népali', 'nepal1254');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (69, 'Occitan', 'occi1239');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (70, 'Ourdou', 'urdu1245');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (71, 'Pashto', 'nort2646');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (72, 'Penjabi', 'panj1256');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (73, 'Persan', 'west2369');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (74, 'Peul', 'pula1263');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (75, 'Polonais', 'poli1260');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (76, 'Portugais', 'port1283');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (77, 'Provençal', 'prov1235');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (78, 'Romanche', 'roma1326');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (79, 'Roumain', 'roma1327');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (80, 'Rromani', 'vlax1238');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (81, 'Russe', 'russ1263');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (82, 'Saamaka', 'sara1340');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (83, 'Sango', 'sang1328');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (84, 'Sérère', 'sere1260');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (85, 'Singhalais', 'sinh1246');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (86, 'Slovaque', 'slov1269');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (87, 'Somali', 'soma1255');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (88, 'Soninké', 'soni1259');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (89, 'Soso', 'susu1250');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (90, 'Suédois', 'swed1254');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (91, 'Swahili', 'swah1253');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (92, 'Tamoul', 'tami1289');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (93, 'Tchétchène', 'chec1245');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (94, 'Tchèque', 'czec1258');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (95, 'Tibétain', 'tibe1272');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (96, 'Tigrigna', 'tigr1271');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (97, 'Tswana', 'tswa1253');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (98, 'Turc', 'nucl1301');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (99, 'Ukrainien', 'ukra1253');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (100, 'Vietnamien', 'viet1252');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (101, 'Wolof', 'nucl1347');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (102, 'Yiddish', 'east2295');
INSERT INTO languages (id_langue, nom_langue, glottocode) VALUES (103, 'Yoruba', 'yoru1245');

CREATE TABLE ipa_symbols (
    id_ipa INT NOT NULL AUTO_INCREMENT,
    symbol VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    categorie VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_ipa),
    UNIQUE KEY uq_ipa_symbol (symbol)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table ipa_symbols (159 rows)
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (1, 'i', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (2, 'y', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (3, 'ɨ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (4, 'ʉ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (5, 'ɯ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (6, 'u', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (7, 'ɪ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (8, 'ʏ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (9, 'ʊ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (10, 'e', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (11, 'ø', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (12, 'ɘ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (13, 'ɵ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (14, 'ɤ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (15, 'o', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (16, 'ə', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (17, 'ɛ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (18, 'œ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (19, 'ɜ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (20, 'ɞ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (21, 'ʌ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (22, 'ɔ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (23, 'æ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (24, 'ɐ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (25, 'a', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (26, 'ɶ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (27, 'ɑ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (28, 'ɒ', 'voyelle');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (29, 'p', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (30, 'b', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (31, 't', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (32, 'd', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (33, 'ʈ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (34, 'ɖ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (35, 'c', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (36, 'ɟ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (37, 'k', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (38, 'g', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (39, 'q', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (40, 'ɢ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (41, 'ʔ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (42, 'm', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (43, 'ɱ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (44, 'n', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (45, 'ɳ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (46, 'ɲ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (47, 'ŋ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (48, 'ɴ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (49, 'ʙ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (50, 'r', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (51, 'ʀ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (52, 'ⱱ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (53, 'ɾ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (54, 'ɽ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (55, 'ɸ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (56, 'β', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (57, 'f', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (58, 'v', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (59, 'θ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (60, 'ð', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (61, 's', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (62, 'z', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (63, 'ʃ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (64, 'ʒ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (65, 'ʂ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (66, 'ʐ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (67, 'ç', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (68, 'ʝ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (69, 'x', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (70, 'ɣ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (71, 'χ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (72, 'ʁ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (73, 'ħ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (74, 'ʕ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (75, 'h', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (76, 'ɦ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (77, 'ɬ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (78, 'ɮ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (79, 'ʋ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (80, 'ɹ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (81, 'ɻ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (82, 'j', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (83, 'ɰ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (84, 'l', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (85, 'ɭ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (86, 'ʎ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (87, 'ʟ', 'consonne');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (88, 'ʘ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (89, 'ǀ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (90, 'ǃ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (91, 'ǂ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (92, 'ǁ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (93, 'ɓ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (94, 'ɗ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (95, 'ʄ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (96, 'ɠ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (97, 'ʛ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (98, 'ʼ', 'consonne non-pulmonique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (99, 'ʍ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (100, 'w', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (101, 'ɥ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (102, 'ʜ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (103, 'ʢ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (104, 'ʡ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (105, 'ɕ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (106, 'ʑ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (107, 'ɺ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (108, 'ɧ', 'autre');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (109, '̥', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (110, '̬', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (111, 'ʰ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (112, '̹', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (113, '̜', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (114, '̟', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (115, '̠', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (116, '̈', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (117, '̽', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (118, '̩', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (119, '̯', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (120, '˞', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (121, '̤', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (122, '̰', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (123, '̼', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (124, 'ʷ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (125, 'ʲ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (126, 'ˠ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (127, 'ˤ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (128, '̴', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (129, '̝', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (130, '̞', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (131, '̘', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (132, '̙', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (133, '̪', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (134, '̺', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (135, '̻', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (136, '̃', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (137, 'ⁿ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (138, 'ˡ', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (139, '̚', 'diacritique');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (140, 'ˈ', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (141, 'ˌ', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (142, 'ː', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (143, 'ˑ', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (144, '̆', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (145, '|', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (146, '‖', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (147, '.', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (148, '‿', 'suprasegmental');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (149, '˥', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (150, '˦', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (151, '˧', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (152, '˨', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (153, '˩', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (154, '˩˧', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (155, '˥˩', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (156, '˧˥', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (157, '˩˨', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (158, '˦˥˦', 'ton');
INSERT INTO ipa_symbols (id_ipa, symbol, categorie) VALUES (159, 'ʱ', 'diacritique');

CREATE TABLE phonemes (
    id_phoneme INT NOT NULL AUTO_INCREMENT,
    phoneme_label VARCHAR(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
    PRIMARY KEY (id_phoneme),
    UNIQUE KEY uq_phoneme_label (phoneme_label)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table phonemes (191 rows)
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (1, 'i');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (2, 'y');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (3, 'ɨ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (4, 'ʉ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (5, 'ɯ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (6, 'u');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (7, 'ɪ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (8, 'ʏ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (9, 'ʊ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (10, 'e');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (11, 'ø');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (12, 'ɘ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (13, 'ɵ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (14, 'ɤ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (15, 'o');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (16, 'ə');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (17, 'ɛ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (18, 'œ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (19, 'ɜ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (20, 'ɞ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (21, 'ʌ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (22, 'ɔ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (23, 'æ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (24, 'ɐ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (25, 'a');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (26, 'ɶ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (27, 'ɑ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (28, 'ɒ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (29, 'p');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (30, 'b');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (31, 't');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (32, 'd');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (33, 'ʈ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (34, 'ɖ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (35, 'c');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (36, 'ɟ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (37, 'k');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (38, 'g');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (39, 'q');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (40, 'ɢ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (41, 'ʔ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (42, 'm');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (43, 'ɱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (44, 'n');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (45, 'ɳ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (46, 'ɲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (47, 'ŋ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (48, 'ɴ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (49, 'ʙ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (50, 'r');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (51, 'ʀ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (52, 'ⱱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (53, 'ɾ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (54, 'ɽ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (55, 'ɸ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (56, 'β');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (57, 'f');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (58, 'v');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (59, 'θ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (60, 'ð');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (61, 's');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (62, 'z');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (63, 'ʃ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (64, 'ʒ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (65, 'ʂ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (66, 'ʐ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (67, 'ç');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (68, 'ʝ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (69, 'x');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (70, 'ɣ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (71, 'χ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (72, 'ʁ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (73, 'ħ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (74, 'ʕ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (75, 'h');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (76, 'ɦ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (77, 'ɬ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (78, 'ɮ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (79, 'ʋ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (80, 'ɹ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (81, 'ɻ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (82, 'j');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (83, 'ɰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (84, 'l');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (85, 'ɭ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (86, 'ʎ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (87, 'ʟ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (88, 'ʘ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (89, 'ǀ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (90, 'ǃ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (91, 'ǂ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (92, 'ǁ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (93, 'ɓ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (94, 'ɗ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (95, 'ʄ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (96, 'ɠ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (97, 'ʛ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (98, 'ʼ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (99, 'ʍ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (100, 'w');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (101, 'ɥ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (102, 'ʜ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (103, 'ʢ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (104, 'ʡ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (105, 'ɕ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (106, 'ʑ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (107, 'ɺ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (108, 'ɧ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (109, 'tɕ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (110, 'dʑ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (111, 'ts');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (112, 'dz');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (113, 'ʈʂ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (114, 'ɖʐ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (115, 'tʃ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (116, 'dʒ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (117, 'tsʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (118, 'pʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (119, 'bʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (120, 'tʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (121, 'dʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (122, 'ʈʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (123, 'ɖʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (124, 'kʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (125, 'gʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (126, 'tʃʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (127, 'dʒʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (128, 'ɽʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (129, 'gʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (130, 'cʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (131, 'ɟʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (132, 'ɖʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (133, 'dʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (134, 'bʰ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (135, 'ɟʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (136, 'g̤ʱ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (137, 'ɑ̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (138, 'ɔ̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (139, 'ɛ̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (140, 'ĩː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (141, 'ɪ̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (142, 'ẽː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (143, 'ɛ̃ː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (144, 'ə̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (145, 'ä̃ː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (146, 'ũː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (147, 'ʊ̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (148, 'õː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (149, 'ɔ̃ː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (150, 'ĩ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (151, 'ũ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (152, 'ẽ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (153, 'ã');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (154, 'õ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (155, 'æ̃');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (156, 'əĩ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (157, 'əũ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (158, 'iː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (159, 'eː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (160, 'ɛː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (161, 'äː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (162, 'uː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (163, 'oː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (164, 'ɔː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (165, 'ɑː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (166, 'ɜː');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (167, 'əi');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (168, 'əu');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (169, 'ɑj');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (170, 'æj');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (171, 'ɔj');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (172, 'aɪ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (173, 'aʊ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (174, 'eɪ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (175, 'əʊ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (176, 'ɔɪ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (177, 'ɪə');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (178, 'eə');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (179, 'ʊə');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (180, 'pʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (181, 'bʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (182, 'tʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (183, 'dʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (184, 'mʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (185, 'rʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (186, 'fʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (187, 'vʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (188, 'sʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (189, 'zʲ');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (190, 'ä');
INSERT INTO phonemes (id_phoneme, phoneme_label) VALUES (191, 'ɤ̟');

CREATE TABLE vowel_features (
    id_ipa INT NOT NULL,
    ferm_ouv VARCHAR(100),
    post_ant VARCHAR(100),
    arrondi VARCHAR(100),
    PRIMARY KEY (id_ipa),
    CONSTRAINT fk_vowel_features_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table vowel_features (28 rows)
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (1, 'fermée', 'antérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (2, 'fermée', 'antérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (3, 'fermée', 'centrale', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (4, 'fermée', 'centrale', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (5, 'fermée', 'postérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (6, 'fermée', 'postérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (7, 'pré-fermée', 'quasi-antérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (8, 'pré-fermée', 'quasi-antérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (9, 'pré-fermée', 'quasi-postérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (10, 'mi-fermée', 'antérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (11, 'mi-fermée', 'antérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (12, 'mi-fermée', 'centrale', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (13, 'mi-fermée', 'centrale', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (14, 'mi-fermée', 'postérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (15, 'mi-fermée', 'postérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (16, 'moyenne', 'centrale', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (17, 'mi-ouverte', 'antérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (18, 'mi-ouverte', 'antérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (19, 'mi-ouverte', 'centrale', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (20, 'mi-ouverte', 'centrale', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (21, 'mi-ouverte', 'postérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (22, 'mi-ouverte', 'postérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (23, 'pré-ouverte', 'antérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (24, 'pré-ouverte', 'centrale', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (25, 'ouverte', 'antérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (26, 'ouverte', 'antérieure', 'arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (27, 'ouverte', 'postérieure', 'non-arrondie');
INSERT INTO vowel_features (id_ipa, ferm_ouv, post_ant, arrondi) VALUES (28, 'ouverte', 'postérieure', 'arrondie');

CREATE TABLE consonant_features (
    id_ipa INT NOT NULL,
    lieu_dart VARCHAR(100),
    mode_dart VARCHAR(100),
    voise VARCHAR(100),
    PRIMARY KEY (id_ipa),
    CONSTRAINT fk_consonant_features_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table consonant_features (59 rows)
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (29, 'bilabiale', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (30, 'bilabiale', 'occlusive', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (31, 'alvéolaire', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (32, 'alvéolaire', 'occlusive', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (33, 'rétroflexe', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (34, 'rétroflexe', 'occlusive', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (35, 'palatale', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (36, 'palatale', 'occlusive', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (37, 'vélaire', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (38, 'vélaire', 'occlusive', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (39, 'uvulaire', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (40, 'uvulaire', 'occlusive', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (41, 'glottale', 'occlusive', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (42, 'bilabiale', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (43, 'labio-dentale', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (44, 'alvéolaire', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (45, 'rétroflexe', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (46, 'palatale', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (47, 'vélaire', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (48, 'uvulaire', 'nasale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (49, 'bilabiale', 'roulée', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (50, 'alvéolaire', 'roulée', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (51, 'uvulaire', 'roulée', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (52, 'labio-dentale', 'battue', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (53, 'alvéolaire', 'battue', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (54, 'rétroflexe', 'battue', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (55, 'bilabiale', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (56, 'bilabiale', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (57, 'labio-dentale', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (58, 'labio-dentale', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (59, 'dentale', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (60, 'dentale', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (61, 'alvéolaire', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (62, 'alvéolaire', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (63, 'post-alvéolaire', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (64, 'post-alvéolaire', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (65, 'rétroflexe', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (66, 'rétroflexe', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (67, 'palatale', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (68, 'palatale', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (69, 'vélaire', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (70, 'vélaire', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (71, 'uvulaire', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (72, 'uvulaire', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (73, 'pharyngale', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (74, 'pharyngale', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (75, 'glottale', 'fricative', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (76, 'glottale', 'fricative', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (77, 'alvéolaire', 'fricative latérale', 'sourde');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (78, 'alvéolaire', 'fricative latérale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (79, 'labio-dentale', 'spirante', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (80, 'alvéolaire', 'spirante', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (81, 'rétroflexe', 'spirante', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (82, 'palatale', 'spirante', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (83, 'vélaire', 'spirante', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (84, 'alvéolaire', 'latérale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (85, 'rétroflexe', 'latérale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (86, 'palatale', 'latérale', 'voisée');
INSERT INTO consonant_features (id_ipa, lieu_dart, mode_dart, voise) VALUES (87, 'uvulaire', 'latérale', 'voisée');

CREATE TABLE nonpulmonic_features (
    id_ipa INT NOT NULL,
    type VARCHAR(100),
    lieu_dart VARCHAR(100),
    PRIMARY KEY (id_ipa),
    CONSTRAINT fk_nonpulmonic_features_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table nonpulmonic_features (11 rows)
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (88, 'clic', 'bilabiale');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (89, 'clic', 'dentale');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (90, 'clic', 'alvéolaire');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (91, 'clic', 'palato-alvéolaire');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (92, 'clic', 'latérale alvéolaire');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (93, 'implosive', 'bilabiale');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (94, 'implosive', 'dentale/alvéolaire');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (95, 'implosive', 'palatale');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (96, 'implosive', 'vélaire');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (97, 'implosive', 'uvulaire');
INSERT INTO nonpulmonic_features (id_ipa, type, lieu_dart) VALUES (98, 'éjective', 'variable');

CREATE TABLE other_symbols_features (
    id_ipa INT NOT NULL,
    description TEXT NOT NULL,
    type_articulation VARCHAR(100),
    PRIMARY KEY (id_ipa),
    CONSTRAINT fk_other_symbols_features_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table other_symbols_features (10 rows)
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (99, 'fricative labio-vélaire sourde', 'co-articulé');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (100, 'spirante labio-vélaire voisée', 'co-articulé');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (101, 'spirante labio-palatale voisée', 'co-articulé');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (102, 'fricative épiglottale sourde', 'épiglottal');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (103, 'fricative épiglottale voisée', 'épiglottal');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (104, 'occlusive épiglottale', 'épiglottal');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (105, 'fricative alvéolo-palatale sourde', 'alvéolo-palatal');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (106, 'fricative alvéolo-palatale voisée', 'alvéolo-palatal');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (107, 'battue latérale alvéolaire voisée', 'alvéolaire');
INSERT INTO other_symbols_features (id_ipa, description, type_articulation) VALUES (108, 'fricative post-alvéolaire et vélaire sourde simultanée', 'co-articulé');

CREATE TABLE diacritics_supras_features (
    id_ipa INT NOT NULL,
    feature_type VARCHAR(255),
    PRIMARY KEY (id_ipa),
    CONSTRAINT fk_diacritics_supras_features_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table diacritics_supras_features (41 rows)
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (109, 'dévoisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (110, 'voisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (111, 'aspiré');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (112, 'plus arrondi');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (113, 'moins arrondi');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (114, 'avancé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (115, 'rétracté');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (116, 'centralisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (117, 'mi-centralisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (118, 'syllabique');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (119, 'non-syllabique');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (120, 'rhoticité');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (121, 'murmuré');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (122, 'craqué');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (123, 'linguolabial');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (124, 'labialisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (125, 'palatalisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (126, 'vélarisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (127, 'pharyngalisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (128, 'vélarisé ou pharyngalisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (129, 'relevé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (130, 'abaissé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (131, 'racine de la langue avancée');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (132, 'racine de la langue rétractée');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (133, 'dental');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (134, 'apical');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (135, 'laminal');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (136, 'nasalisé');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (137, 'déclenchement nasal');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (138, 'déclenchement latéral');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (139, 'fin sans relâchement audible');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (140, 'accent primaire');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (141, 'accent secondaire');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (142, 'long');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (143, 'mi-long');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (144, 'extra-bref');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (145, 'pause mineure');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (146, 'pause majeure');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (147, 'coupe syllabique');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (148, 'liaison');
INSERT INTO diacritics_supras_features (id_ipa, feature_type) VALUES (159, 'voisement soufflé (aspiré voisé)');

CREATE TABLE tone_features (
    id_ipa INT NOT NULL,
    tone_type VARCHAR(100),
    contour VARCHAR(100),
    level VARCHAR(100),
    PRIMARY KEY (id_ipa),
    CONSTRAINT fk_tone_features_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table tone_features (8 rows)
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (149, 'niveau', 'plat', 'haut');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (150, 'niveau', 'plat', 'haut');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (151, 'niveau', 'plat', 'moyen');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (152, 'niveau', 'plat', 'bas');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (153, 'niveau', 'plat', 'bas');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (154, 'modulé', 'montant', 'variable');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (155, 'modulé', 'descendant', 'variable');
INSERT INTO tone_features (id_ipa, tone_type, contour, level) VALUES (158, 'modulé', 'convexe', 'variable');

CREATE TABLE phonology_descriptions (
    id_desc INT NOT NULL AUTO_INCREMENT,
    id_langue INT NOT NULL,
    description_text TEXT,
    PRIMARY KEY (id_desc),
    KEY idx_phonology_descriptions_langue (id_langue),
    CONSTRAINT fk_phonology_descriptions_language
        FOREIGN KEY (id_langue) REFERENCES languages(id_langue)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table phonology_descriptions (8 rows)
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (1, 6, 'Les systèmes vocaliques de l''anglais et du français sont sensiblement différents : même les voyelles qui
existent dans les deux langues diffèrent par leur point ou mode d''articulation, ex. : anglais tick, lack, pool,
day [tɪk,læk,pu:l,deɪ], français tique, laque, poule, dé, dès [tik,lak,pul,de,dɛ]. Les anglophones doivent
apprendre à ne pas diphtonguer les voyelles en français (en prononçant par ex. le fait [lə''feɪ]) et à produire
[y] et [ø] qui n''existent pas en anglais. La distinction [œ/ø] (soeur/ceux, de [dœ]/deux) est
particulièrement difficile. Les voyelles nasales sont distinctives en français (pas/pan, pot/pont, paix/pain),
alors qu''elles n''interviennent en anglais que sous l''influence d''une consonne nasale suivante (land (''pays,
terre'') [læ̃nd], pan (''casserole'') [pæ̃:n], comparer français l''Inde [lɛ̃d], pain [pɛ̃]). L''anglais et le français
ont des prosodies différentes : accent de mot en anglais, accent final de groupe en français : Mary adores
chocolate [''mæ:rɪə''dɔ:rz''tʃɒklɪt], Marie adore le chocolat [maʁiadɔʁləʃɔkɔla]. Les anglophones tendront à
produire un accent de mot en français (le chocolat [lə''ʃɔkɔla]. Les consonnes du français nécessitant un
entraînement particulier sont principalement le [ʁ] fricatif uvulaire, surtout en fin de mot (port [pɔʁ] et
devant consonne (porte [pɔʁt], portique [pɔʁtik], les palatales [ɲ] et [j] en position finale (saigne [sɛɲ];
paye [pɛj] et pas [peɪ], fouille [fuj] et pas [fuɪ]), feuille [fœj] et la semi-consonne [ɥ] (huit [ɥit], buée
[bɥe], sueur [sɥœʁ].');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (2, 16, 'Les voyelles [y], [ø], [œ] (pu, peu, peur) du français n’existent pas en bengali. Le bengali distingue
des consonnes dentales [t,d] et des consonnes rétroflexes ([ʈ,ɖ]) articulées contre les alvéoles avec la
pointe de la langue. Le r uvulaire [ʁ] du français standard est difficile à prononcer pour les
bengalophones, habitués à un [r] roulé. La prononciation d''un groupe [Consonne+ʁ] (cri, trop) est
compliquée : les bengalophones tendent à insérer une voyelle entre les deux consonnes ([forãs] pour
France) ou à supprimer le r — en prononçant français comme foncé ou fossé. Le bengali standard ne
connait pas les sons [z] (fr. case) et [d] (fr. cage), qui tendent à être remplacés par le son [v]. Le son
[v] n’existe pas non plus clairement en bengali et tend à être confondu avec [b]. De la même façon, il y
a une fréquente confusion entre les sons [p] et [f].');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (3, 19, 'Comme toutes les langues slaves des pays orthodoxes, le bulgare s’écrit au moyen de l’alphabet
cyrillique. En général, l''orthographe bulgare respecte une règle stricte : toutes les lettres sont
prononcées. Il est important de savoir que certaines lettres qui ont la même forme dans l''alphabet
cyrillique et l''alphabet latin ne transcrivent pas les mêmes sons. Ainsi en cyrillique la lettre Н se
prononce [v], c se prononce toujours [s], g se prononce [d], p se prononce [r]. Compte tenu des
différences phonétiques et phonologiques entre le français et le bulgare, les bulgarophones pourraient
rencontrer des difficultés à prononcer des sons typiques du français : le é fermé et toutes les voyelles
nasales, méconnues du bulgare. D’autres sons pourraient conserver une sonorité typique bulgare : le a réduit [ə] hors accent, le l alvéolaire [ɫ] devant a, o, ou, le r [r] toujours roulé, le h [x] toujours prononcé en bulgare. En position finale, les sonores pourraient être assourdies : salade [sa''lat]. Le
bulgare possède un accent dynamique mobile et les apprenants doivent faire attention à l’accent final de groupe du français.');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (4, 46, 'Les systèmes vocaliques du hindi et du français diffèrent d''abord par la longueur des voyelles, pertinente
en hindi ([ba:l] ''cheveu''/bal ''force'' ; [ki:] ''de''/ki ''que'') mais pas en français. Les sons [y] (rue), [ø] (peu) et
[œ] (peur), qui n’existent pas en hindi, non plus que la nasalité distinctive des voyelles (pas/pan,
peau/pon, paix/pain), demanderont un effort particulier aux apprenants du français. Pour les consonnes,
la principale particularité concerne les occlusives dentales, qui sont articulées différemment en hindi et
en français : les hindiphones tendent à réaliser [t,d] comme des rétroflexes ([ʈ,ɖ]) articulées contre les
alvéoles avec la langue incurvée, et qui s’opposent en hindi aux dentales. La fricative uvulaire [ʁ] du français pose aussi problème car le r est roulé en hindi. Dans plusieurs variétés de hindi, les sons [z] et
[f] n’existent pas et tendent à être respectivement remplacés en français par les consonnes [v] et [pʰ]
(disponibles en hindi) : pose [podʒ], fait [pʰɛ]). La palatale non affriquée [ʒ] (joue), absente en hindi, est
également difficile à acquérir, alors que la sourde correspondante [ʃ] (chou) fait partie du système hindi.
L’accent de mot étant important en hindi, et fonction de la longueur des voyelles ([laɽki:], [a:di:]), l’accent
final de groupe du français est difficile à acquérir.');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (5, 49, 'Les italophones tendent à transférer au français le r "roulé" [r] de l''italien : le r "grasseyé" [ʁ] requiert un
entraînement spécifique.
Les voyelles antérieures arrondies [y] (pu), [ø] (feu), [œ] (peur), [ə] (je/me/le) sont absentes en italien,
ainsi que les voyelles nasales [ɛ̃] (bain), [ɑ̃] (banc), [õ] (bon). L''amuïssement du [ə] dans certaines
positions, notamment à la finale des mots, ne vient pas naturellement aux italophones, qui tendent à le
réaliser partout — comme les francophones méridionaux : cette perle [sɛtœpɛrlœ]. Ils tendent aussi à
transférer au français l''accent de mot italien, en allongeant l''avant-dernière syllabe des mots.
Pour ceux qui ont été alphabétisés en italien, certaines correspondances différentes entre graphie et
prononciation méritent une attention particulière :
GRAPHIE PRONONCIATION ITALIENNE PRONONCIATION FRANÇAISE
c+i, e [y] cielo [''yɛlo] [s] ciel [sjɛl]
sc+i, e [ʃ] scienza [''ʃɛntsa] [s] science [sjãs]
g+i, e [dʒ] giraffa [dʒi''raffa] [ʒ] girafe [ʒiʁaf]
ch+i, e [k] chiuso ''fermé'' [''kjuzo] [ʃ] chien [ʃjɛ̃]
qu [kw] quattro [''kwattro] [k] quatre [katʁ]
z [ts] zenit [''tsenit] [z] zénith [zenit]
ai [aj] farai ''(tu) feras'' [fa''raj] [ɛ],[e] j''ai [dɛ], [de]
oi [oj] poi ''puis'' [poi] [wa] loi [lwa]
au [aw] causa [kawsa] [o] cause [koz]
eu [ew] neurologia [newroloˈdʒia] [ø] neurologie [nøʁolodi]
Par ailleurs, les graphies italiennes et françaises ne découpent pas toujours les mots de la même façon :
ital. stamattina, stasera/français ce matin, ce soir ; ital. vederla/français la voir (cf. ex. (15d)) ; italien alla
quale, français à laquelle (cf. ex. (11)); etc.


--- EXTRACTED DATA TABLES ---
| GRAPHIE | PRONONCIATION ITALIENNE |                             | PRONONCIATION FRANÇAISE |                       |
|---------|-------------------------|-----------------------------|-------------------------|-----------------------|
| c+i, e  | [y]                     | cielo [''yɛlo]               | [s]                     | ciel [sjɛl]           |
| sc+i, e | [ʃ]                     | scienza [''ʃɛntsa]           | [s]                     | science [sjãs]        |
| g+i, e  | [dʒ]                    | giraffa [dʒi''raffa]         | [ʒ]                     | girafe [ʒiʁaf]        |
| ch+i, e | [k]                     | chiuso ''fermé'' [''kjuzo]     | [ʃ]                     | chien [ʃjɛ̃]           |
| qu      | [kw]                    | quattro [''kwattro]          | [k]                     | quatre [katʁ]         |
| z       | [ts]                    | zenit [''tsenit]             | [z]                     | zénith [zenit]        |
| ai      | [aj]                    | farai ''(tu) feras'' [fa''raj] | [ɛ],[e]                 | j''ai [dɛ], [de]       |
| oi      | [oj]                    | poi ''puis'' [poi]            | [wa]                    | loi [lwa]             |
| au      | [aw]                    | causa [kawsa]               | [o]                     | cause [koz]           |
| eu      | [ew]                    | neurologia [newroloˈdʒia]   | [ø]                     | neurologie [nøʁolodi] |

');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (6, 68, 'Les onze voyelles népalaises sont les suivantes : /i/, /u/, /e/, /o/, /ʌ/, /a/, /ĩ/, /ũ/, /ẽ/, /ʌ̃/, et /ã/. Les népalphones ont souvent des difficultés à distinguer en français /e/ et /ɛ/ (fée vs. fais), /o/ et /ɔ/ (vôtre vs. votre), ou encore /œ/ et /ɔ/ (peur vs. port). La prononciation des voyelles françaises étant articulée avec plus de tension musculaire, les népalphones n’arrivent souvent pas bien à produire la bonne distinction entre[i] et [e] (il dit vs elle dit) mais aussi entre [u] et [o] (soule vs saule). La qualité nasale
des voyelles nasales françaises et népalaises étant différente, il y a une confusion dans les deux sens
(perception et production) entre [ã] et [ɔ̃] (cancer vs concert) et entre [ɛ̃] et [ã] (sain vs sang). La voyelle
[y] n’existe pas en népali, la production de celle-ci pose donc un problème pour les népalophones ([tudi]
 pour tu dis).
Si le népali possède un nombre important de consonnes occlusives, il a en revanche seulement deux
fricatives, /s/ et /h/. Les fricatives françaises /f/, /v/, /ʃ/, /z/, et /ʒ/ sont absentes dans cette langue.
Les locuteurs du népali produisent en général [dz] à la place de [ʒ], [bɔ̃dzuʁ] pour bonjour), ou encore
[sa] à la place de [ʃa] (chat). Ils ont également de la difficulté pour produire la fricative uvulaire /ʁ/, à
la place de laquelle on entend souvent une fricative alvéolaire ("roulée") /r/. Le népali est une langue
sans accent lexical, comme le français. Cependant, contrairement au français, le népali n’a pas d’accent
montant à la fin des groupes de mots ou des phrases. Les népalophones ont du mal à intégrer cette
 intonation propre du français lors de la production.');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (7, 70, 'Les systèmes vocaliques de l’ourdou et du français diffèrent d''abord par la longueur des
voyelles, pertinente en ourdou ([ba:l] ''cheveu''/bal ''force'' ; un ''eux''/[u:n] ’laine’) mais pas en
français. Les sons [y] (rue), [ø] (peu) et [œ] (peur), qui n’existent pas en ourdou, non plus
que la nasalité distinctive des voyelles (pas/pan, peau/pon, paix/pain), demanderont un effort
particulier aux apprenants du français. Pour les consonnes, la principale particularité concerne
les occlusives dentales, articulées différemment en ourdou et en français : les ourdouphones
tendent à réaliser [t,d] comme des rétroflexes ([ʈ,ɖ]) articulées contre les alvéoles avec la
langue incurvée, et qui s’opposent aux dentales. La fricative uvulaire [ʁ] du français pose aussi
problème car le r est roulé en ourdou. La palatale non affriquée [ʒ] (joue), absente en ourdou
courant, est également difficile à acquérir, alors que la sourde correspondante [ʃ] (chou) fait
partie du système ourdou. L’accent de mot étant important en ourdou, et fonction de la
longueur des voyelles ([laɽki:], [a:di:]), l’accent final de groupe du français est difficile à acquérir.');
INSERT INTO phonology_descriptions (id_desc, id_langue, description_text) VALUES (8, 75, 'Le polonais est une langue riche en consonnes : le français possède 17 consonnes, le polonais en a 38.
Toutes les consonnes du français existent en polonais sauf le r dorsal qui n’est pas facile à apprendre
pour un polonophone. En revanche, la richesse vocalique du français pose de sérieuses difficultés aux
Polonais : les trois voyelles antérieures arrondies [y] (pu), [ø] (peu), [œ] (peur), les voyelles fermées [e]
(pied), [o] (beau), l’opposition entre [a] antérieur (par) et [ɑ] postérieur (pas), e muet [ə] (haltegarderie), les voyelles nasales [œ̃] (brun), [ɛ̃] (brin), [õ] (bon), [ɑ̃] (banc), la semi-voyelle [ɥ] (fuite).
Une autre difficulté pour un polonophone est de prononcer des consonnes voisées à la fin des mots :
salade > [salat], crève > [kref], etc. Les nombreuses liaisons, si caractéristiques de la prononciation
française (les [z] enfants, mon [n] ami, cet [t] enfant) sont également très difficiles pour les apprenants
polonophones. Alors que chaque mot est accentué en polonais sur son avant-dernière syllabe, l''accent
frappe en français la dernière syllabe d''un groupe de souffle (va plus loin, je le ferai plus tard, etc.).');

CREATE TABLE phoneme_sequence (
    id_phoneme INT NOT NULL,
    id_ipa INT NOT NULL,
    position INT NOT NULL,
    PRIMARY KEY (id_phoneme, position),
    KEY idx_phoneme_sequence_ipa (id_ipa),
    CONSTRAINT fk_phoneme_sequence_phoneme
        FOREIGN KEY (id_phoneme) REFERENCES phonemes(id_phoneme)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_phoneme_sequence_ipa
        FOREIGN KEY (id_ipa) REFERENCES ipa_symbols(id_ipa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table phoneme_sequence (289 rows)
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (1, 1, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (2, 2, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (3, 3, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (4, 4, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (5, 5, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (6, 6, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (7, 7, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (8, 8, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (9, 9, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (10, 10, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (11, 11, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (12, 12, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (13, 13, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (14, 14, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (15, 15, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (16, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (17, 17, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (18, 18, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (19, 19, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (20, 20, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (21, 21, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (22, 22, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (23, 23, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (24, 24, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (25, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (26, 26, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (27, 27, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (28, 28, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (29, 29, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (30, 30, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (31, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (32, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (33, 33, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (34, 34, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (35, 35, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (36, 36, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (37, 37, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (38, 38, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (39, 39, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (40, 40, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (41, 41, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (42, 42, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (43, 43, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (44, 44, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (45, 45, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (46, 46, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (47, 47, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (48, 48, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (49, 49, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (50, 50, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (51, 51, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (52, 52, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (53, 53, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (54, 54, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (55, 55, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (56, 56, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (57, 57, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (58, 58, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (59, 59, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (60, 60, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (61, 61, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (62, 62, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (63, 63, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (64, 64, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (65, 65, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (66, 66, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (67, 67, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (68, 68, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (69, 69, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (70, 70, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (71, 71, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (72, 72, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (73, 73, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (74, 74, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (75, 75, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (76, 76, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (77, 77, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (78, 78, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (79, 79, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (80, 80, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (81, 81, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (82, 82, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (83, 83, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (84, 84, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (85, 85, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (86, 86, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (87, 87, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (88, 88, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (89, 89, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (90, 90, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (91, 91, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (92, 92, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (93, 93, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (94, 94, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (95, 95, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (96, 96, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (97, 97, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (98, 98, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (99, 99, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (100, 100, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (101, 101, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (102, 102, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (103, 103, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (104, 104, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (105, 105, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (106, 106, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (107, 107, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (108, 108, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (109, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (109, 105, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (110, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (110, 106, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (111, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (111, 61, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (112, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (112, 62, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (113, 33, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (113, 65, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (114, 34, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (114, 66, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (115, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (115, 63, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (116, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (116, 64, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (117, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (117, 61, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (117, 125, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (118, 29, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (118, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (119, 30, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (119, 159, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (120, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (120, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (121, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (121, 159, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (122, 33, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (122, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (123, 34, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (123, 159, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (124, 37, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (124, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (125, 38, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (125, 159, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (126, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (126, 63, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (126, 111, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (127, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (127, 64, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (127, 159, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (128, 54, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (128, 159, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (129, 38, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (129, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (130, 35, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (130, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (131, 36, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (131, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (132, 34, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (132, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (133, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (133, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (134, 30, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (134, 111, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (135, 36, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (135, 159, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (136, 38, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (136, 121, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (136, 159, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (137, 27, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (137, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (138, 22, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (138, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (139, 17, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (139, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (140, 1, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (140, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (140, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (141, 7, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (141, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (142, 10, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (142, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (142, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (143, 17, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (143, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (143, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (144, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (144, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (145, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (145, 116, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (145, 136, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (145, 142, 4);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (146, 6, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (146, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (146, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (147, 9, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (147, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (148, 15, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (148, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (148, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (149, 22, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (149, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (149, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (150, 1, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (150, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (151, 6, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (151, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (152, 10, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (152, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (153, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (153, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (154, 15, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (154, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (155, 23, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (155, 136, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (156, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (156, 1, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (156, 136, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (157, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (157, 6, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (157, 136, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (158, 1, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (158, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (159, 10, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (159, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (160, 17, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (160, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (161, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (161, 116, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (161, 142, 3);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (162, 6, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (162, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (163, 15, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (163, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (164, 22, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (164, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (165, 27, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (165, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (166, 19, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (166, 142, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (167, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (167, 1, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (168, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (168, 6, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (169, 27, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (169, 82, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (170, 23, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (170, 82, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (171, 22, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (171, 82, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (172, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (172, 7, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (173, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (173, 9, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (174, 10, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (174, 7, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (175, 16, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (175, 9, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (176, 22, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (176, 7, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (177, 7, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (177, 16, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (178, 10, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (178, 16, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (179, 9, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (179, 16, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (180, 29, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (180, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (181, 30, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (181, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (182, 31, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (182, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (183, 32, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (183, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (184, 42, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (184, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (185, 50, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (185, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (186, 57, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (186, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (187, 58, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (187, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (188, 61, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (188, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (189, 62, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (189, 125, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (190, 25, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (190, 116, 2);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (191, 14, 1);
INSERT INTO phoneme_sequence (id_phoneme, id_ipa, position) VALUES (191, 114, 2);

CREATE TABLE language_inventory (
    id_langue INT NOT NULL,
    id_phoneme INT NOT NULL,
    PRIMARY KEY (id_langue, id_phoneme),
    KEY idx_language_inventory_phoneme (id_phoneme),
    CONSTRAINT fk_language_inventory_language
        FOREIGN KEY (id_langue) REFERENCES languages(id_langue)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_language_inventory_phoneme
        FOREIGN KEY (id_phoneme) REFERENCES phonemes(id_phoneme)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data for table language_inventory (361 rows)
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 58);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 64);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 46);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 72);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 101);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 100);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 1);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 10);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 17);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 2);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 11);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 18);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 16);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 25);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 6);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 15);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 22);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 137);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 138);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 139);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (40, 153);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 58);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 109);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 110);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 105);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 106);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 111);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 112);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 113);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 114);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 65);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 66);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 69);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 35);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 36);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 100);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 25);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 17);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 22);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 1);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 6);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (75, 3);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 58);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 100);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 111);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 112);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 53);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 115);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 116);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 46);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 86);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 1);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 10);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 17);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 25);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 22);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 15);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (49, 6);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 118);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 119);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 120);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 121);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 33);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 122);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 34);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 123);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 124);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 125);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 115);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 126);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 116);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 127);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 65);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 76);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 50);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 54);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 128);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 79);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 158);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 7);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 159);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 160);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 23);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 16);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 162);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 9);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 163);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 164);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 141);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 143);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 144);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 147);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (46, 149);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 124);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 129);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 47);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 35);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 130);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 36);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 131);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 33);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 122);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 34);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 132);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 120);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 133);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 118);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 134);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 50);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 100);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 75);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 1);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 6);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 10);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 25);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 15);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 16);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 144);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 167);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (68, 168);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 118);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 119);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 120);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 121);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 33);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 122);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 34);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 123);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 124);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 136);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 115);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 126);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 116);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 127);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 65);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 76);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 50);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 54);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 128);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 79);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 70);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 69);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 39);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 158);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 7);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 159);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 160);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 23);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 16);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 162);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 9);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 163);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 164);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 141);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 143);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 144);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 147);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (70, 149);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 35);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 36);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 118);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 119);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 120);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 121);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 130);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 135);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 124);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 125);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 47);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 50);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 75);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 100);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 27);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 1);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 10);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 15);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 6);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 22);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 23);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 137);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 138);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 155);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 169);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 170);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (16, 171);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 58);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 111);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 112);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 50);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 115);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 64);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 116);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 69);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 180);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 181);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 182);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 183);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 35);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 36);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 117);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 184);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 46);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 185);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 186);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 187);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 188);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 189);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 86);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 17);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 1);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 191);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 22);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (19, 6);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 29);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 30);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 31);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 32);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 37);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 38);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 115);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 116);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 57);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 58);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 59);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 60);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 61);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 62);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 63);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 64);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 75);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 42);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 44);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 47);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 84);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 80);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 100);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 82);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 158);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 7);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 10);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 23);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 165);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 21);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 166);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 16);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 162);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 9);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 164);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 28);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 174);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 172);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 175);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 173);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 176);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 177);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 178);
INSERT INTO language_inventory (id_langue, id_phoneme) VALUES (6, 179);

ALTER TABLE ipa_symbols AUTO_INCREMENT = 160;
ALTER TABLE phonemes AUTO_INCREMENT = 192;
ALTER TABLE phonology_descriptions AUTO_INCREMENT = 9;

SET FOREIGN_KEY_CHECKS = 1;