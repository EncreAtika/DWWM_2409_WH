/*CREER UN UTILISATEUR*/
CREATE USER 'toto'@'localhost' IDENTIFIED BY 'desert';

/*Accorder tous les à TOTO sur la base de données rezo_social*/
GRANT ALL PRIVILEGES ON rezo_social.* TO 'toto'@'localhost';

/*RECHARGER LES PRIVILEGES au niveau du serveur*/
FLUSH PRIVILEGES;