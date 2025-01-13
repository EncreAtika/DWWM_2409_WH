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
	/*SELECT question_date, question_label, question_reponse, user_id
    FROM questions
    INNER JOIN users ON user_firstname = Eva AND user_lastname = Satiti;  (PREMIERE TENTATIVE AVEC ERREUR)*/
    
    -- AVEC JOINTURE !!
    SELECT question_date, question_label, question_reponse, users.user_id 
	FROM questions
	JOIN users ON questions.user_id = users.user_id
	WHERE users.user_lastname = "Satiti" AND users.user_firstname = "Eva" ; 
    
    -- SANS JOINTURE !!    
	SELECT question_date, question_label, question_reponse, questions.user_id 
	FROM questions, users 
	WHERE users.user_id = questions.user_id AND users.user_lastname = 'Satiti' AND users.user_firstname = 'Eva'; 
    
    -- 5- Sélectionner les questions (identifiant, date, intitulé, réponse, identifiant utilisateur) dont l’intitulé contient “SQL”. Le résultat est trié par le titre et par ordre décroissant.
	SELECT question_id, question_date, question_label, question_reponse 
	FROM questions 
	WHERE question_label LIKE '%SQL%'
	ORDER BY question_label DESC;

    -- 6- Sélectionner les catégories (nom, description) sans question associée. (nécéssite une jointure).
	SELECT categories.category_name, category_description FROM categories 
	LEFT JOIN categories_questions ON  categories.category_name = categories_questions.category_name 
	WHERE categories_questions.category_name IS NULL;

    -- 7- Sélectionner les questions triées par titre (ordre alphabétique) avec le nom et prénom de l’auteur (nécessite une jointure).
    SELECT question_id, question_date, question_label, question_reponse, user_lastname, user_firstname
	FROM questions 
	JOIN users ON users.user_id = questions.user_id;

    -- 8- Sélectionner les catégories (nom) avec, pour chaque catégorie le nombre de questions associées (nécessite une jointure).
	SELECT categories.category_name, COUNT(categories_questions.question_id) as nb_questions 
	FROM categories 
	LEFT JOIN categories_questions ON categories.category_name = categories_questions.category_name
	GROUP BY categories.category_name;
