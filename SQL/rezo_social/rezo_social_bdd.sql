DROP DATABASE IF EXISTS rezo_social;
CREATE DATABASE rezo_social;
USE rezo_social;

CREATE TABLE utilisateur
(
	id INT PRIMARY KEY,
	utilisateur_nom VARCHAR(32) NOT NULL UNIQUE,
	utilisateur_email VARCHAR(128) UNIQUE NOT NULL
);

CREATE TABLE aimer
(
	id INT,
    publi_id INT,
    PRIMARY KEY (id, publi_id)
  );

CREATE TABLE publication
(
	publi_id INT AUTO_INCREMENT PRIMARY KEY,
    publi_date DATETIME NOT NULL,
    publi_titre VARCHAR(255),
    publi_contenu TEXT,
    id INT
	);
    
/*Modifier la table publication et y ajouter une clé étrangère*/
ALTER TABLE publication ADD FOREIGN KEY (id) REFERENCES utilisateur(id);

ALTER TABLE aimer ADD CONSTRAINT fk_aimer_utilisateur FOREIGN KEY (id) REFERENCES utilisateur (id);

ALTER TABLE aimer ADD CONSTRAINT fk_aimer_publication FOREIGN KEY (publi_id) REFERENCES publication (publi_id);

/*ALTER TABLE aimer ADD CONSTRAINT fk_aimer_utilisateur FOREIGN KEY (id) REFERENCES utilisateur (id),
					ADD CONSTRAINT fk_aimer_publication FOREIGN KEY (publi_id) REFERENCES publication (publi_id);*/	

/*ALTER TABLE aimer DROP CONSTRAINT fk_aimer_utilisateur;*/





