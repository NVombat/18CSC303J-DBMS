create table depositor(cus_name varchar2(25) not null, acno number(10) not null);

create table borrower(cus_name varchar2(25) not null, loanno number(10) not null);

insert into depositor values ('&cus_name', '&acno');
insert into depositor values ('&cus_name', '&acno');
insert into depositor values ('&cus_name', '&acno');
insert into depositor values ('&cus_name', '&acno');
insert into depositor values ('&cus_name', '&acno');

insert into borrower values ('&cus_name', '&loanno');
insert into borrower values ('&cus_name', '&loanno');
insert into borrower values ('&cus_name', '&loanno');
insert into borrower values ('&cus_name', '&loanno');
insert into borrower values ('&cus_name', '&loanno');
insert into borrower values ('&cus_name', '&loanno');
insert into borrower values ('&cus_name', '&loanno');

SELECT cus_name FROM depositor UNION SELECT cus_name FROM borrower;

SELECT cus_name FROM depositor UNION ALL SELECT cus_name FROM borrower;

SELECT cus_name FROM depositor INTERSECT SELECT cus_name FROM borrower;

SELECT cus_name FROM borrower MINUS SELECT cus_name FROM depositor;

create table employee(empno number(3) not null, empname varchar2(25) not null, job varchar2(15), deptno number(4), salary number(7));

create table dept(deptname varchar2(25) not null, deptno number(4));

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

insert into dept values ('&DEPTNAME', '&DEPTNO');
insert into dept values ('&DEPTNAME', '&DEPTNO');
insert into dept values ('&DEPTNAME', '&DEPTNO');
insert into dept values ('&DEPTNAME', '&DEPTNO');
insert into dept values ('&DEPTNAME', '&DEPTNO');

select employee.empno, employee.empname, employee.deptno from employee inner join dept on employee.deptno=dept.deptno;

create table salgrade(grade number(2), losal number(10), hisal number(10));

insert into salgrade values('&grade', '&losal', '&hisal');
insert into salgrade values('&grade', '&losal', '&hisal');
insert into salgrade values('&grade', '&losal', '&hisal');
insert into salgrade values('&grade', '&losal', '&hisal');

select * from employee;

update employee set salary=1600 where empname='Nikhill';

update employee set salary=2500 where empname='Annanya';

update employee set salary=8500 where empname='Karan';

select employee.empname, employee.salary, salgrade.grade from employee inner join salgrade on employee.salary between salgrade.losal and salgrade.hisal;

select employee.empname, employee.deptno, dept.deptname from employee left join dept on employee.deptno=dept.deptno;

select employee.empname, dept.deptno, dept.deptname from employee right join dept on employee.deptno=dept.deptno;

alter table employee add manager varchar2(30);

update employee set manager='Harish' where empname='Nikhill';

update employee set manager='Raja' where empname='Karan';

update employee set manager='Jindal' where empname='Annanya';

update employee set manager='Yash' where empname='Sanah';

update employee set manager='Nick' where empname='Kylian';

select * from employee;

select employee.empname, employee.manager from employee self join employee on employee.manager=employee.manager;