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
SELECT ENAME, SAL
FROM EMP 
GROUP BY SAL
HAVING SAL>ROUND(AVG(SAL), 2);

SELECT ROUND(AVG(SAL), 2) AS "MOYENNE DES SALAIRES"
FROM EMP 



/*10.  DANS LA PARTIE 2 Lister les employés ayant le même manager que CLark 
SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR WHERE ENAME = 'CLARK');*/
 

 