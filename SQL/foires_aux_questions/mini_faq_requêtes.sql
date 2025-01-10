	-- 1- Sélectionner tous les utilisateurs (identifiant, nom, prénom, email).
    SELECT user_id, user_lastname, user_firstname, user_email
    FROM users;

    -- 2- Sélectionner toutes les questions (date, intitulé, réponse, identifiant utilisateur) triées par date de la plus ancienne à la plus récente.
    SELECT question_date, question_label, question_reponse, user_id
    FROM questions
    ORDER BY question_date asc;

    -- 3- Sélectionner les questions (identifiant, date, intitulé, réponse) de l’utilisateur n°2.
    SELECT  (question_id =2), question_date, question_label, question_reponse
    FROM questions
    WHERE question_id = 2;

    -- 4- Sélectionner les questions (date, intitulé, réponse, identifiant utilisateur) de l’utilisateur Eva Satiti. (nécéssite une jointure).

    -- 5- Sélectionner les questions (identifiant, date, intitulé, réponse, identifiant utilisateur) dont l’intitulé contient “SQL”. Le résultat est trié par le titre et par ordre décroissant.

    -- 6- Sélectionner les catégories (nom, description) sans question associée. (nécéssite une jointure).

    -- 7- Sélectionner les questions triées par titre (ordre alphabétique) avec le nom et prénom de l’auteur (nécessite une jointure).

    -- 8- Sélectionner les catégories (nom) avec, pour chaque catégorie le nombre de questions associées (nécessite une jointure).
