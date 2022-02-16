-- desc employee

-- Add Unique Constraint
alter table employee add constraint cons_name_uni unique(ename);

select * from employee;

-- To Test Unique Values
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
-- To Test Not Null Values
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

create table dept(dno number(2) primary key, dname varchar2(20));

insert into dept values(1, 'NWC');
insert into dept values(2, 'CINTEL');
insert into dept values(3, 'CSE');
insert into dept values(4, 'IT');
-- To Test Primary Key Error
insert into dept values(4, 'CTECH');

-- Table with foreign key
create table stu (sid number(2), name varchar2(20), dno number(2) references dept(dno));

insert into stu values(10, 'Nikhill', 1);
insert into stu values(12, 'Ritesh', 4);
insert into stu values(11, 'Nitish', 5);

select * from stu;

delete from dept where dno=4;

-- Check Constraint for DNAME
alter table dept add constraint dname_ck check(dname in ('NWC', 'CS', 'CSE', 'CINTEL', 'IT'));

insert into dept values(5, 'VAPT');
insert into dept values(5, 'CS');
insert into dept values(6, 'OS');

-- Disable Constraint
-- alter table dept disable constraint dname_ck;

insert into dept values(6, 'OS');

-- Enable Constraint
-- alter table dept enable constraint dname_ck;

select * from dept

-- Check Constraint for DNAME
alter table dept add constraint dname_ck1 check(dname in ('NWC', 'CS', 'CSE', 'CINTEL', 'IT', 'OS'));

insert into dept values(7, 'VAPT');

CREATE TABLE emp1( empno number(4), ename varchar2(10), job char(20), mgr number(10), hiredate date, sal number(5), comm number(5), deptno number(7,2) NOT NULL, CONSTRAINT emp1_pk PRIMARY KEY (empno));

drop table emp1;

select * from employee;

-- desc employee

-- Add Primary Key Constraint
alter table employee add constraint emp_pk primary key(empno);

select * from employee;

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

-- desc dept

-- Add Unique Constraint
alter table dept add constraint name_uni unique(dname);

insert into dept values(7, 'CSE');

select * from dept;

insert into dept values(7, 'VAPT');

-- Add Check Constraint
alter table employee add constraint emp_ck check(empno between 1 and 10);

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

-- Drop Constraint
alter table employee drop constraint emp_ck;

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

-- Drop Primary Key & Affected Actions
-- ALTER TABLE dept DROP PRIMARY KEY CASCADE;

-- desc dept

-- Disable constraints
-- alter table dept disable constraint dname_ck cascade;
-- alter table dept disable constraint dname_ck1 cascade;

select * from dept;

insert into dept values (1, 'VAPT');
insert into dept values (7, 'VAPT');

-- ALTER TABLE employee DISABLE CONSTRAINT emp_pk CASCADE;

select * from employee;

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

-- ALTER TABLE employee ENABLE CONSTRAINT emp_pk;

delete from employee where ename='Kanye';

-- ALTER TABLE employee ENABLE CONSTRAINT emp_pk;

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

