DROP DATABASE IF EXISTS rezo_social;
CREATE DATABASE rezo_social;
USE rezo_social;

CREATE TABLE utilisateur
(
	id INT PRIMARY KEY,
	utilisateur_nom VARCHAR(32),
	utilisateur_email VARCHAR(128)
);

CREATE TABLE publication
(
	publi_id INT AUTO_INCREMENT PRIMARY KEY,
    publi_date DATETIME,
    publi_titre VARCHAR(255),
    publi_contenu TEXT,
    id INT,
    FOREIGN KEY (id) REFERENCES utilisateur(id)
);

CREATE TABLE aime
(
	id INT,
    publi_id INT,
    PRIMARY KEY (id, publi_id),
    FOREIGN KEY (id) REFERENCES utilisateur(id),
	FOREIGN KEY (publi_id) REFERENCES publication(publi_id)
);


