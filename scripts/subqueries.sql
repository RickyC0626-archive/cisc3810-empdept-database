------------------
-- Subqueries
------------------

SELECT ename, sal
FROM emp
WHERE sal > (
            SELECT avg(sal)
            FROM emp);


FROM emp
SELECT ename, sal
WHERE mgr = (
            FROM emp
            SELECT empno
            WHERE ename LIKE 'KING');

-------------------
-- Joined Tables
-------------------

SELECT ename, dname
FROM emp, dept
where emp.deptno = dept.deptno;

SELECT ename, empno, job, dname, loc
FROM emp, dept
WHERE emp.deptno = dept.deptno;