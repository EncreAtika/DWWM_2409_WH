/*
INSERER LE JEU D'ESSAI DANS LA TABLE FILMS 
Sous langage : DM/LMD
Data Manipulation Language
Langage de manipulation des données
Principales instructions :
INSERT : Ajouter de nouvelles données dans une table
UPDATE : Mettre à jour des données existantes dans une table
DELETE : Supprimer des données existantes dans une table
TRUNCATE : VIDER une table
*/

-- Toujours selectionner la base de donner avec l'instruction USE
USE video;

-- DELETE FROM realisateur; -- supprime toutes les données de la table réalisateur
TRUNCATE TABLE film_acteur; -- vider la table film_acteur et réinitialise l'auto_increment 
TRUNCATE TABLE film; -- vider la table film et réinitialise l'auto_increment 
TRUNCATE TABLE acteur; -- vider la table acteur et réinitialise l'auto_increment
TRUNCATE TABLE realisateur; -- vider la table realisateur et réinitialise l'auto_increment

/* Insertion des données dans la table "réalisateur"*/
INSERT INTO realisateur

/*Pour insérer les données il y a deux syntaxe mais une est plus précise et c'est la syntaxe dans : */
VALUES 
(NULL,"Besson","Luc"),
(NULL,"Spielberg","Steven"),
(NULL,"Carpenter","John");

INSERT INTO acteur
(acteur_prenom, acteur_nom)
VALUES
("Jean","Réno"),
("Mel","Gibson"),
("Tom","Holland"),
("Eva","Green"),
("Emma","Watson");

/*
REQUÊTES SQL A IMPLEMENTER 
Sous Langage : DQL/LRD
Data Query Language
Langage de requête sur les données
princiâles instructions : 
SELECT : Sélectionner des données existantes dans une ou plusieurs tables
*/

/* 1. Sélectionner toutes les lignes et les colonnes de la table (nom, prénom) */
-- SELECT * FROM acteur ; cette instruction
-- permet de selectionner toutes les colonnes de la table acteur il vaut mieux éviter en raison de possibles erreurs

SELECT acteur_id, acteur_nom, acteur_prenom FROM acteur;

/* 2. Sélectionner l'acteur dont le nom est "Réno" */
SELECT acteur_nom, acteur_prenom
FROM acteur
WHERE acteur_nom = "Gibson";


/* 3. Sélectionner tous les acteurs (identifiant, nom, prénom) triés par nom (ordre alphabétique) */

/* 4. Sélectionner les réalisateurs (nom, prénom) triés par nom et par ordre décroissant */

/* 5. selectionner l'acteur dont l'identifiant est "2" */


SELECT acteur_id, acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_id = 2;


SELECT acteur_id, acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_id <>3;

/*6. selectionner les acteurs dont le prénom commence par "E" */

SELECT acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_prenom LIKE "E%";

/*7. selectionner les acteurs dont le prénom se termine par "n" */

SELECT acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_prenom LIKE "%n";

/*8. selectionner les acteurs dont le prenom contient "a" */
SELECT acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_prenom LIKE "%a%";

/*9. selectionner les acteurs dont le prénom est soit Jean soit Eva*/
SELECT acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_prenom IN ("Jean", "Eva");

/*10. selectionner les acteurs dont le prénom est soit MEL soit Eva*/
SELECT acteur_prenom, acteur_nom
FROM acteur
WHERE acteur_prenom = "Mel" OR acteur_prenom = "Eva";


