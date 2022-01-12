-- Create a table called EMP with the following structure.
-- Name Type
-- ---------- ----------------------
-- EMPNO NUMBER(6)
-- ENAME VARCHAR2(20)
-- JOB VARCHAR2(10)
-- DEPTNO NUMBER(3)
-- SAL NUMBER(7,2)
-- Allow NULL for all columns except ename and job.

create table emp(empno number(6), ename varchar2(20) not null, job varchar2(10) not null, deptno number(3), sal number(7,2))

-- Insert values into table

insert into emp values (000001, "Nikhill", "Director", 001, 45000.00)
insert into emp values (000002, "Karan", "Assistant", 002, 50000.00)
insert into emp values (000003, "Radha", "Leader", 001, 90000.00)

-- Add a column experience to the emp table.

alter table emp add experience number(2)

insert into emp values (000004, "Shiv", "Head", 003, 150000.00)
update emp set experience = 17 WHERE empno = 00001

-- Modify the column width of the job field of emp table.

alter table emp alter column job varchar2(20) not null;

insert into emp values (000005, "Ravi", "Executive Director", 005, 250000.00)

-- Create dept table with the following structure.
-- Name Type
-- ------------ ---------------------
-- DEPTNO NUMBER(2)
-- DNAME VARCHAR2(10)
-- LOC VARCHAR2(10)

create table dept(deptno number(2), dname varchar2(10), loc varchar2(10))

insert into dept values (01, "Sales", "Mumbai")
insert into dept values (02, "Tax", "Delhi")

-- Drop a column experience to the emp table.

alter table emp drop column experience

-- Truncate the emp table and drop the dept table

-- truncate table emp

-- drop table dept

select * from emp
select * from dept