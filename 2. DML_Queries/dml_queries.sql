-- Create the following table employee
-- Name Type
--  -------- ----------------------------
-- EMPNO NUMBER(6)
-- ENAME NOT NULL VARCHAR2(20)
-- JOB NOT NULL VARCHAR2(13)
-- DEPTNO NUMBER(3)
-- SAL NUMBER(7,2)

create table employee(EMPNO NUMBER(6), ENAME VARCHAR2(20) NOT NULL, JOB VARCHAR2(13) NOT NULL, DEPTNO NUMBER(3),SAL NUMBER(7,2));

-- Insert appropriate values

insert into employee values('&EMPNO','&ENAME','&JOB','&DEPTNO','&SAL');
insert into employee values('&EMPNO','&ENAME','&JOB','&DEPTNO','&SAL');
insert into employee values('&EMPNO','&ENAME','&JOB','&DEPTNO','&SAL');
insert into employee values('&EMPNO','&ENAME','&JOB','&DEPTNO','&SAL');
insert into employee values('&EMPNO','&ENAME','&JOB','&DEPTNO','&SAL');

-- Add Details for each entry

select * from employee;

-- Select employee name, job from the employee table

select ENAME,JOB from employee;

-- Delete only those who are working as lecturer

delete from employee where job='Lecturer';

-- List the records in the employee table orderby salary in ascending order

select * from employee order by SAL;

-- List the records in the employee table orderby salary in descending order

select * from employee order by SAL desc;

-- Display only those employees whose deptno is 4

select * from employee where DEPTNO='4';

-- Display deptno from the table employee avoiding the duplicated values

select distinct DEPTNO from employee;

-- update dept number as character datatape. And update the corresponding values
-- Eg dno=1 means then it should be changed as dno='d1'

alter table employee alter column DEPTNO CHAR(3);
-- alter table employee modify(DEPTNO CHAR(3));