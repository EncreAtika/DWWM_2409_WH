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

/* 4. Sélectionner les projets qui ont été livrés en retard */
SELECT projet_ref
FROM projets
WHERE projet_date_fin_prevue < projet_date_fin_effective;

/* 5. Sélectionner la date de dépôt, la date de fin prévue, les superficies, le prix de tous les projets 
avec le nom du client et le nom de l'architecte associés au projet */
SELECT p.projet_date_depot, p.projet_date_fin_prevue, p.projet_superficie_totale, p.projet_superficie_batie, p.projet_prix, 
			c.client_nom, 
			e.emp_nom, e.emp_prenom
FROM projets p
JOIN clients c ON p.client_ref = c.client_ref
JOIN employes e ON p.emp_matricule = e.emp_matricule;

/* 6. Sélectionner tous les projets (dates, superficies, prix) avec le nombre d'intervenants autres que le client et l'architecte */
SELECT projet_date_depot, projet_date_fin_prevue, projet_date_fin_effective, projet_superficie_totale, projet_superficie_batie, projet_prix, COUNT(participer.emp_matricule) AS "nombre de participants"
FROM projets p
JOIN participer ON participer.projet_ref = p.projet_ref
GROUP BY projet_date_depot, projet_date_fin_prevue, projet_date_fin_effective, projet_superficie_totale, projet_superficie_batie, projet_prix;

/* 7. Sélectionner les types de projets avec, pour chacun d'entre eux, le nombre de projets associés et le prix moyen pratiqué */
SELECT tp.type_projet_libelle, COUNT(p.projet_ref), AVG(p.projet_prix)
FROM type_projets tp
JOIN projets p ON tp.type_projet_id = p.type_projet_id
GROUP BY tp.type_projet_libelle;

/* 8. Sélectionner les types de travaux avec, pour chacun d'entre eux, la superficie du projet la pls grande */
SELECT tt.type_travaux_libelle, max(p.projet_superficie_totale) FROM type_travaux tt
JOIN projets p ON tt.type_travaux_id = p.type_travaux_id
GROUP BY tt.type_travaux_libelle;

/* 9. Sélectionner l'ensembles des projets (dates, prix) avec les informations du client (nom, telephone, adresse), le type de travaux et le type de projet. */
SELECT p.projet_date_depot, p.projet_date_fin_prevue, p.projet_date_fin_effective, p.projet_prix,
	c.client_nom, c.client_telephone, 
	a.adresse_code_postal, a.adresse_ville, a.adresse_num_voie, a.adresse_voie,
	tt.type_travaux_libelle, tp.type_projet_libelle
FROM projets p
JOIN clients c ON p.client_ref = c.client_ref
JOIN adresses a ON a.adresse_id = c.adresse_id
JOIN type_travaux tt ON p.type_travaux_id = tt.type_travaux_id
JOIN type_projets tp ON p.type_projet_id = tp.type_projet_id;

/* 10. Sélectionner les projets dont l'adresse est identique au client associé */
SELECT p.projet_ref FROM projets p
JOIN clients c ON p.client_ref = c.client_ref
WHERE p.adresse_id = c.adresse_id;






