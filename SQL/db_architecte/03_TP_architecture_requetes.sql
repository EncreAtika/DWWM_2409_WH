USE db_architecte;

/* 1. Sélectionner l'identifiant, le nom de tous les clients dont le numéro de téléphone commence par '04'*/
SELECT client_ref, client_nom, client_telephone
FROM clients
WHERE client_telephone LIKE "04%";

/* 2. Sélectionner l'identifiant, le nom et le type de tous les clients qui sont des particuliers */
SELECT c.client_ref, c.client_nom, t.type_client_libelle
FROM clients c
JOIN type_clients t ON c.type_client_id = t.type_client_id
WHERE t.type_client_libelle ="Particulier";

/* 3. Sélectionner l'identifiant, le nom et le type de tous les clients qui ne sont pas des particuliers */
SELECT c.client_ref, c.client_nom, t.type_client_libelle
FROM clients c
JOIN type_clients t ON c.type_client_id = t.type_client_id
-- WHERE t.type_client_libelle !="Particulier";
WHERE t.type_client_libelle <> "Particulier";

