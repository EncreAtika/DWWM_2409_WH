USE db_architecte;

/* 1. Sélectionner l'identifiant, le nom de tous les clients dont le numéro de téléphone commence par '04'*/
SELECT client_ref, client_nom, client_telephone
FROM clients
WHERE client_telephone LIKE "%04%";

/* 2. Sélectionner l'identifiant, le nom et le type de tous les clients qui sont des particuliers */
SELECT client_ref, client_nom, type_client_libelle
FROM clients
JOIN type_clients ON clients.type_client_id = type_clients.type_client_id
WHERE type_client_libelle = "Particulier";


/* 3. Sélectionner l'identifiant, le nom et le type de tous les clients qui ne sont pas des particuliers */
SELECT client_ref, client_nom, type_client_libelle
FROM clients
JOIN type_clients ON clients.type_client_id = type_clients.type_client_id
WHERE type_client_libelle != "Particulier";

/* 4. Sélectionner les projets qui ont été livrés en retard */

