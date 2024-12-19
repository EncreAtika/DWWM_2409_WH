/*1-Sélectionner tous les utilisateurs (nom d'utilisateur + email).*/
SELECT utilisateur_nom, utilisateur_email
FROM utilisateur;


/* 2-Sélectionner toutes les publications (titre, date, contenu, id utilisateur) triées par date de la plus récente à la plus ancienne */
SELECT publi_titre, publi_date, publi_contenu, id
FROM publication
ORDER BY publi_date asc ;


/*3-Sélectionner les publications (pub_id, date, titre) de l'utilisateur N°2.*/
SELECT (id=2), publi_id, publi_date, publi_titre
FROM  publication
WHERE id = 2;


/*4-Sélectionner les publications (pub_id, titre, contenu) dont le titre contient la lettre "a". Le résultat est trié par le titre et par ordre décroissant.*/
SELECT publi_id, publi_titre, publi_contenu
FROM publication
WHERE publi_titre LIKE "%a%"
ORDER BY publi_titre DESC;


/*5-Sélectionner les utilisateurs (id, nom, email) dont l'adresse email se termine par "com".*/
SELECT id, utilisateur_nom, utilisateur_email
FROM utilisateur
WHERE utilisateur_email LIKE "%.com%";

/*6-Sélectionner les publications triées par titre (ordre alphabétique) avec le nom d'utilisateur de l'auteur (nécessite une jointure)*/


