USE rezo_social;

/*AJOUTER DES DONNEES DANS LA TABLE utilisateur*/
INSERT INTO utilisateur 
	(id, utilisateur_nom, utilisateur_email)
VALUES 
	(1, "Zorro", "zorb@example.com"),
	(2, "Patchouli", "patchouli@example.fr"),
	(3, "Eva", "eva.stt@example.com");
    
/*AJOUTER DES DONNEES DANS LA TABLE publication*/
INSERT INTO publication
/* comme c'est autoincrémenté pas besoin de mettre l'identifiant dana la parenthèse*/
	(publi_date, publi_titre, publi_contenu, id)
VALUES /*Si on a un champs datetime préciser l'heure sinon minuit sera affiché par défaut*/
	("2024-11-23 14:30", "Il fait beau", "Quel beau soleil aujourd'hui !", 3),
	("2024-11-23 09:15", "Les bonbons", "Les bonbons, c'est bon", 2),
	("2024-11-27 08:17", "Super resto", "J'ai découvert un super restaurant hier soir.", 1),
    ("2024-12-05 17:52", "Album disponible", "Nouvel album de mon groupe préféré !", 2),
    ("2024-12-15 10:05", "Aidez-moi", "Je cherche une recette de gâteau au chocolat.",3);
    
    INSERT INTO aimer
    (id, publi_id)
    VALUES
    (1, 5),
    (2,4),
    (3,3),
    (2,2),
    (1,1);
    
   /*Permet d'afficher toutes les données de la table  
	SELECT * FROM utilisateur;
    SELECT * FROM publication;
    SELECT * FROM aimer;
    */