-- 1. Donner nom, job, numéro et salaire de tous les employés,

SELECT ENAME, JOB, EMPNO, SAL
FROM EMP;
-- puis seulement des employés du département 10
SELECT ENAME, JOB, EMPNO, SAL
FROM EMP
WHERE DEPTNO = 10;
 