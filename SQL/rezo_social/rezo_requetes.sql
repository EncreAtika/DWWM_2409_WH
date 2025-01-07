/*1-Sélectionner tous les utilisateurs (nom d'utilisateur + email).*/
SELECT utilisateur_nom, utilisateur_email
FROM utilisateur;


/* 2-Sélectionner toutes les publications (titre, date, contenu, id utilisateur) triées par date de la plus récente à la plus ancienne */
SELECT publi_titre, publi_date, publi_contenu, id
FROM publication
ORDER BY publi_date desc ;

-- Sélectionner toutes les publications 
-- triées par id utilisateur puis par date de la plus récente à la plus ancienne.
EXPLAIN SELECT * FROM publication ORDER BY id ASC, publi_date DESC;
-- Pour les requête complexe le EXPLAIN permet d'optimiser les requêtes et de savoir ce qui ne va pas.



/*3-Sélectionner les publications de l'utilisateur 2 (pub_id, date, titre)*/
SELECT (id=2), publi_id, publi_date, publi_titre
FROM  publication
WHERE id = 2;


/*4-Sélectionner les publications (pub_id, titre, contenu) dont le titre contient la lettre "a". Le résultat est trié par le titre et par ordre décroissant.*/
SELECT publi_id, publi_titre, publi_contenu
FROM publication
WHERE publi_titre LIKE "%a%"
ORDER BY publi_titre DESC;

/*4_bis -Sélectionner les publications (pub_id, titre, contenu) dont le titre ne contient pas la lettre "a". Le résultat est trié par le titre et par ordre décroissant.*/
SELECT publi_id, publi_titre, publi_contenu
FROM publication
WHERE publi_titre NOT LIKE "%a%"
ORDER BY publi_titre DESC;


/*5-Sélectionner les utilisateurs (id, nom, email) dont l'adresse email se termine par "com".*/
SELECT id, utilisateur_nom, utilisateur_email
FROM utilisateur
WHERE utilisateur_email LIKE "%.com%";

/*6-Sélectionner les publications triées par titre (ordre alphabétique) avec le nom d'utilisateur de l'auteur (nécessite une jointure)*/
SELECT * FROM publication
INNER JOIN utilisateur ON publication.id = utilisateur.id
ORDER BY publication.publi_titre;

/*6 bis -Selectionner les publications triées par titre (ordre alphabétique)
avec le nom d'utilisatuer de l'auteur */
SELECT * FROM publication, utilisateur
WHERE publication.id = utilisateur.id;


/*Je souhaite consulter ma table utilisateur pour voir si une ligne avec l'ID 1 existe déjà*/
SELECT * FROM utilisateur WHERE id = 1;


