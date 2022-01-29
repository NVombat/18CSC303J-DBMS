-- Create a table with the following structure:
-- EMPNO ENAME JOB DEPTNO SAL
-- ---------- -------------------- ------------- ---------- ----------
-- 1 Mathi AP 1 10000
-- 2 Arjun ASP 2 15000
-- 3 Gugan ASP 1 15000
-- 4 Karthik Prof 2 30000
-- 5 Akalya AP 1 10000
-- 6 suresh lect 1 8000

create table employee(EMPNO NUMBER(3), ENAME VARCHAR2(20) NOT NULL, JOB VARCHAR2(20) NOT NULL, DEPTNO NUMBER(3), SALARY NUMBER(8,2));

-- Insert values

insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');
insert into employee values ('&EMPNO', '&ENAME', '&JOB', '&DEPTNO', '&SALARY');

-- Add Details for each entry

-- Q1: Delete only those who are working as lecturer

delete from employee where JOB='Lect';

-- Q2:List the records in the emp table orderby salary in ascending order.

select * from employee order by SALARY;

-- Q3: List the records in the emp table orderby salary in descending order

select * from employee order by SALARY desc;

-- Q4: Display only those employees whose deptno is 2.

select * from employee where DEPTNO='2';

-- Q5: Display deptno from the table employee avoiding the duplicated values.

select distinct DEPTNO from employee;


-- Create a table with the following structure: (insert appropriate 10 rows)
-- Store_Name Sales Txn_Date
-- ------------------------------------------------
-- Los Angeles 1500 Jan-05-1999
-- San Diego 250 Jan-07-1999

create table salesdata(STORE_NAME VARCHAR2(30), SALES NUMBER(6), TXN_DATE DATE);

insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')
insert into salesdata values('&STORE_NAME', '&SALES', '&TXN_DATE')

-- Insert appropriate values

-- Q1: Select all stores with sales above $1,000 in Table.

select * from salesdata where SALES>1000;

-- Q2: Select all distinct stores in Table.

select distinct STORE_NAME from salesdata;

-- Q3: Select all stores with sales greater than $1,000 or all stores with sales less than $500 but greater than $275

select * from salesdata where SALES>1000 OR SALES<500 AND SALES>275;

-- Q4: Select all records for the Los Angeles and the San Diego stores in Table

select * from salesdata where STORE_NAME='Los Angeles' OR STORE_NAME='San Diego';

-- Q5: Select all sales information between January 6, 1999, and January 10, 1999

select SALES from salesdata where TXN_DATE BETWEEN '06-JAN-99' AND '10-JAN-99';

-- Q6: Find all stores whose name contains "AN" & "OS"

select STORE_NAME from salesdata where STORE_NAME LIKE '%an%';
select STORE_NAME from salesdata where STORE_NAME LIKE '%os%';

-- Q7: List the contents of Table by Sales in descending order

select * from salesdata order by SALES desc;
