/*commentaire*/
-- commentaire

/*supprimer la base de donnees si elle existe*/
DROP DATABASE  IF EXISTS videos;
/*permet de supprimer une structure - ajouter "IF EXISTS" permet d'éviter les erreurs. Si la base de donnée ,n'existe pas il n'y aura pas d'erreurs. */ 

CREATE DATABASE IF NOT EXISTS VIDEOS;
-- permet de créer une base de données 

/* UTILISER LA BASE DE dONNES CREEE*/
USE videos;

/*CREER UNE TABLE NOMMEE FILM "film"*/
CREATE TABLE IF NOT EXISTS film
(
	film_id INT AUTO_INCREMENT PRIMARY KEY,
    film_titre VARCHAR (255) NOT NULL,
    film_duree SMALLINT NOT NULL
);

/*INSERER LE JEU D'ESSAI DANS LA TABLE FILMS*/
INSERT INTO film 
VALUES
(NULL, 'Léon', 120),
(NULL, "E.T", '90'),
(NULL, 'ça', "103");

INSERT INTO film 
(film_titre, film_duree)
VALUES
(NULL, "L'exorciste", 240),
(NULL, "Super papa", 87),
(NULL, 'Gladiator 2', "117");

INSERT INTO film 
(film_duree, film_titre)
VALUES
(98, 'Loup Garou');

/*AFFICHER LES DONNEES DE LA TABLE*/
SELECT * FROM film;