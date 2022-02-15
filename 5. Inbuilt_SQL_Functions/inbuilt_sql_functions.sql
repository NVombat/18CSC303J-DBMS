-- View Tables & Content of Tables

select * from tab;

select * from employee;

select * from customer;

-- CHARACTER FUNCTIONS

select chr(65), chr(97) from dual;

select concat ('ename', 'job') user_id from employee;

select concat ('&ename', '&job') user_id from employee;

select concat (ename, job) user_id from employee;

select initcap('hi my name is nikhill') from dual;

select instr('Character', 'r', 1, 1) POS1, instr('Character', 'r', 1, 2) POS2, instr('Character', 'a', -1, 2) POS3 from Dual;

select instr(salesperson, 'n', 1, 1) POS1, instr(salesperson, 'n', 1, 2) POS2, instr(salesperson, 'a', -1, 2) POS3, instr(salesperson, 'y') from customer;

select replace(store_state, 'KA', 'KA/TN') Replaced_States from customer;

select length(ename) from employee;

select lower(ename) from employee;

select upper(ename) from employee;

select lower(job) from employee;

select lpad(ename, 10, '-') from employee;

select lpad(ename, 10, '-'), rpad(ename, 10, '-') from employee;

select ltrim(job, 'A') from employee;

select rtrim(job, 'P') from employee;

-- NUMERIC FUNCTIONS

select abs(-102) from dual;

select acos(.28) from dual;

select asin(.65) from dual;

select atan(.65) from dual;

select ceil(209.5) from dual;

select floor(209.5) from dual;

select mod(11,3) from dual;

select power(4,3) from dual;

select round(15.1945612, 3) from dual;

select trunc(12.75, 1) from dual;

select trunc(12.75, -1) from dual;

-- DATE TIME FUNCTIONS

select sysdate from dual;

select sale_date from customer;

select sale_date, add_months(sale_date, 2) from customer;

select sale_date, add_months(sale_date, 2), add_months(sale_date, -4) from customer;

select sale_date, extract(year from sale_date)YEAR, extract(day from sale_date)DAY from customer;

select next_day(sale_date,'mon') from customer;

select sale_date, round(sale_date, 'MM'), round(sale_date, 'YYYY') from customer;

select sale_date, trunc(sale_date, 'MM'), trunc(sale_date, 'YYYY') from customer;

select months_between(sysdate, '15-Oct-22') from dual;

select months_between('15-Oct-25', sysdate) from dual;

select months_between('1-Jan-21', sysdate) from dual;
