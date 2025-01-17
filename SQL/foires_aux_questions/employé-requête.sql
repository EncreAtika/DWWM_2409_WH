
-- SQL langage de manipulation de Données
-- PARTIE 1 :
-- 1. Donner nom, job, numéro et salaire de tous les employés,
SELECT ENAME, JOB, EMPNO, SAL
FROM EMP;

-- 1.bis : puis seulement des employés du département 10
SELECT ENAME, JOB, EMPNO, SAL
FROM EMP
WHERE DEPTNO = 10;

-- 2. Donner nom, job et salaire des employés de type MANAGER dont le salaire est supérieur à 2800 :
SELECT ENAME, JOB, SAL
FROM EMP
WHERE JOB = "MANAGER" AND SAL > 2800;

-- 3. Donner la liste des MANAGER n'appartenant pas au département 30
SELECT ENAME, JOB, DEPTNO
FROM EMP 
WHERE DEPTNO != 30 AND JOB = "MANAGER"; 

-- 4. Liste des employés de salaire entre 1200 et 1400 
SELECT *
FROM EMP 
-- WHERE SAL >= 1200 AND SAL <= 1400;
WHERE SAL BETWEEN 1200 AND 1400;

-- 5. Liste des employés des départements compris entre 10 et 30 classés dans l'ordre alphabétique :
SELECT ENAME
FROM EMP 
WHERE DEPTNO BETWEEN 10 AND 30
ORDER BY ENAME ASC;

-- 6. Liste des employés du département 30 classés dans l'ordre des salaires croissants :
SELECT ENAME
FROM EMP 
WHERE DEPTNO = 30 
ORDER BY SAL ASC;

-- 7. Liste de tous les employés classés par emploi et salaires décroissants
SELECT ENAME, JOB, SAL
FROM EMP
ORDER BY SAL DESC;

-- 8. Donner la liste des différents emplois :
SELECT JOB
FROM EMP
GROUP BY JOB;

-- 9. Donner le nom du département où travaille ALLEN
SELECT DEPT.DNAME 
FROM DEPT
INNER JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
WHERE EMP.ENAME = "ALLEN";

-- 10. Liste des employés avec nom du département, nom, job, salaire classés par noms de départements et
-- par salaires décroissants.
SELECT E.ENAME, E.DEPTNO, E.JOB, E.SAL, D.LOC
FROM EMP AS E 
JOIN DEPT AS D ON E.DEPTNO = D.DEPTNO 
ORDER BY D.LOC,
E.SAL DESC ;

-- 11. Liste des employés vendeurs (SALESMAN) avec affichage de nom, salaire, commissions, salaire +
-- commissions
SELECT ENAME, SAL, COMM, SAL+COMM
FROM EMP
WHERE JOB = "SALESMAN";

-- 12. Liste des employés du département 20: nom, job, date d'embauche sous forme VEN 28 FEV 1997
SET lc_time_names = "fr_FR";
SELECT ENAME, JOB,UPPER(DATE_FORMAT(HIREDATE, "%a %e %b %Y")) AS "DATE"
FROM EMP 
WHERE DEPTNO = 20;

-- 13 Donner le salaire le plus élevé par département
SELECT MAX(SAL) AS "SALAIRE LE PLUS ELEVES", D.LOC AS "VILLE"
FROM EMP AS E
JOIN DEPT AS D ON E.DEPTNO = D.DEPTNO 
GROUP BY D.LOC;

-- 14 Donner département par département masse salariale, nombre d'employés, salaire moyen par type
-- d'emploi
SELECT  SUM(SAL+ IFNULL(COMM,0)) AS "MASSE SALARIALE", COUNT(ENAME) AS "NOMBRE D'EMPLOYES", ROUND(AVG(SAL), 2) AS "MOYENNE DES SALAIRES", D.LOC AS "LOCALISATION"
FROM EMP AS E
JOIN DEPT AS D ON E.DEPTNO = D.DEPTNO 
GROUP BY D.LOC,job;

-- 15 Même question mais on se limite aux sous-ensembles d'au moins 2 employés 
SELECT SUM(SAL+ IFNULL(COMM,0)) AS "Masse salariale", COUNT(E.ENAME) AS "Nombre d'employés", ROUND(AVG(SAL), 2) AS "Moyenne des salaires", D.LOC AS "Localisation", E.JOB AS "Type d'emploi"
FROM EMP AS E
JOIN DEPT AS D ON E.DEPTNO = D.DEPTNO 
GROUP BY D.DEPTNO,JOB
HAVING COUNT(E.ENAME) >= 2;

-- 16  Liste des employés (Nom, département, salaire) de même emploi que JONES
SELECT E.ENAME AS "Employés", D.LOC as "Département", E.SAL as "salaire"
FROM EMP AS E
JOIN DEPT AS D ON E.DEPTNO = D.DEPTNO 
WHERE  E.JOB = (SELECT JOB FROM EMP WHERE ENAME = "JONES") AND ENAME <>"JONES";



-- 17 Liste des employés (nom, salaire) dont le salaire est supérieur à la moyenne globale des salaires
SELECT ENAME AS "NOM" , SAL AS "SALAIRE"
FROM EMP 
WHERE SAL > (SELECT AVG(SAL) FROM EMP);

-- Une autre méthode pour calculer une moyenne :
SELECT ROUND(AVG(SAL), 2) AS "MOYENNE DES SALAIRES"
FROM EMP;

/* 18 Création d'une table PROJET (DANS employé_bdd et employe_table) avec comme colonnes numéro de projet (3 chiffres), nom de projet(5
caractères), budget. Entrez les valeurs suivantes:
101, ALPHA, 96000
102, BETA, 82000
103, GAMMA, 15000*/

-- 19 Ajouter l'attribut numéro de projet à la table EMP et affecter tous les vendeurs du département 30
-- au projet 101, et les autres au projet 102
ALTER TABLE EMP ADD NUMERO_DE_PROJET INT;
-- ALTER TABLE EMP: Cette partie modifie la structure de la table nommée "EMP".
-- ADD NUMERO_DE_PROJET: Une nouvelle colonne est ajoutée à la table EMP. Cette nouvelle colonne s'appelle "NUMERO_DE_PROJET".

UPDATE EMP -- Modifie les données de la table EMP
SET NUMERO_DE_PROJET = 101 -- Attribution de la valeur 101 à la Colonne NUMERO_DE_PROJET
WHERE DEPTNO = 30 -- La valeur 101 est ajoutée dans la colonne "NUMERO_DE_PROJET" pour tous les employés qui sont dans le département 30
;

UPDATE EMP
SET NUMERO_DE_PROJET = 102
WHERE DEPTNO != 30;

-- 20 Créer une vue comportant tous les employés avec nom, job, nom de département et nom de projet
/*CREATE VIEW FICHE_EMPLOYE AS SELECT * FROM EMP;
SELECT *
FROM EMP 
INNER JOIN EMP on E.DEPTNO = DE.DEPTNO;*/

 

/*SELECT E.ENAME AS "NOMS", E.JOB AS emploi, D.LOC AS "DEPARTEMENT", NOM_DE_PROJET
FROM EMP AS E
JOIN DEPT AS D ON E.DEPTNO = D.DEPTNO ;
*/


/*10.  DANS LA PARTIE 2 Lister les employés ayant le même manager que CLark 
SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR WHERE ENAME = 'CLARK');*/


-- Création d'une procédure avec Franck.
/*DELIMITER 
CREATE PROCEDURE SALARIE_SUP ( IN NIV_SALAIRE DECIMAL (8,2))
BEGIN
SELECT ENAME, JOB FROM EMP WHERE SAL>=NIV_SALAIRE;
END
DELIMITER ;

SET @NIV_SALAIRE := 3000.50;
CALL SALARIE_SUP (@NIV_SALAIRE);

DELIMITER CREATE PROCEDURE EFFECTIF_JOB(IN JOB_SOUHAITE VARCHAR (50))
BEGIN 
SELECT COUNT(EMPNO), JOB, AVG(SAL)
FROM EMP
WHERE JOB = JOB_SOUHAITE
GROUP BY JOB;
END
DELIMITER ;

SET @JOB_SOUHAITE:= "SAESMAN";
CALL EFFECTIF_JOB(@JOB_SOUHAITE);*/
 

 