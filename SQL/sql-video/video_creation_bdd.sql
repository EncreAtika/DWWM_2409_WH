/*commentaire*/
-- commentaire
/*Création de langage sous langage SQL : DDL/LDD
Data definition Language 
Langage de définition des données
Principales instructions : 
-CREATE= crerr une structure (DATABASE, TABLE, VIEW, PROCEDURE, TRIGGER, FUNCTION). 
-ALTER= Modifier une structure existante.
-DROP= Supprimer une structure existante.
*/

/*supprimer la base de donnees si elle existe*/
DROP DATABASE  IF EXISTS video;
/*permet de supprimer une structure - ajouter "IF EXISTS" permet d'éviter les erreurs. Si la base de donnée ,n'existe pas il n'y aura pas d'erreurs. */ 

/*CREER UNE BASE DE DONNEES NOMMEES videos*/
CREATE DATABASE video;

/*SELECTIONNER/UTILISER LA BASE DE DONNEES CREEE*/
USE video;

-- Les requêtes qui suivent utiliseront
-- la base de données selectionnées ci-dessus

/*CREER UNE TABLE NOMMEE realisateur*/
CREATE TABLE realisateur
/*Définir les colonne grâce aux parenthèses, selon les colonnes on aura plus ou moins d'options*/
(
	realisateur_id INT AUTO_INCREMENT PRIMARY KEY,
    realistaur_nom VARCHAR(100) NOT NULL,
    realistaur_prenom VARCHAR(100) NOT NULL
);

CREATE TABLE acteur
(
	acteur_id INT auto_increment,
    acteur_nom varchar(100) not null,
    acteur_prenom varchar(100) not null,
    /*ajout d'une contrainte, ci dessous entre parenthèse le nom de la colonne qui sert de clé primaire*/
    primary key(acteur_id)
);

CREATE TABLE film
(
	film_id INT auto_increment,
	film_titrevarchar VARCHAR (255) NOT NULL,
    film_duree SMALLINT NOT NULL,
    realisateur_id INT,
    PRIMARY KEY (film_id), 
    FOREIGN KEY (realisateur_id) REFERENCES realisateur(realisateur_id) 
);

CREATE TABLE film_acteur
(
	film_id INT,
    acteur_id INT,
    PRIMARY KEY (film_id, acteur_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id),
     FOREIGN KEY (acteur_id) REFERENCES acteur(acteur_id)
);
/*CONTRAINTES */
