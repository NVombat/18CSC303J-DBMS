-- CREATE TABLE

create table customer(cust_id NUMBER(4) NOT NULL, sale_date DATE, sale_amount NUMBER(10), salesperson VARCHAR2(20) NOT NULL, store_state VARCHAR2(20), order_id VARCHAR(10) NOT NULL);

-- INSERT DATA INTO TABLE

insert into customer values ('&cust_id', '&sale_date', '&sale_amount', '&salesperson', '&store_state', '&order_id');
insert into customer values ('&cust_id', '&sale_date', '&sale_amount', '&salesperson', '&store_state', '&order_id');
insert into customer values ('&cust_id', '&sale_date', '&sale_amount', '&salesperson', '&store_state', '&order_id');
insert into customer values ('&cust_id', '&sale_date', '&sale_amount', '&salesperson', '&store_state', '&order_id');
insert into customer values ('&cust_id', '&sale_date', '&sale_amount', '&salesperson', '&store_state', '&order_id');

-- Grant privelege access to user

grant select on customer to RA1911030010050;

-- Access data using access granted by RA1911030010050

select * from RA1911030010050.customer;

-- Revoke privelege access to user

revoke select on customer from RA1911030010050;

-- Try accessing data after access revoked from RA1911030010050

select * from RA1911030010050.customer;

-- Insert Value

insert into customer values ('&cust_id', '&sale_date', '&sale_amount', '&salesperson', '&store_state', '&order_id');

-- Commit data to table

commit;

-- View Table Data

select * from customer;

-- Delete row from table

delete from customer where store_state='KA' and cust_id='1001';

-- View Table Data

select * from customer;

-- Rollback - To last commit

rollback;

-- View Table Data

select * from customer;

-- Create first savepoint

savepoint sp1;

-- Delete row from table

delete from customer where store_state='KA' and cust_id='1001';

-- create second savepoint

savepoint sp2;

-- View Table Data

select * from customer;

-- Rollback to first savepoint

rollback to sp1;

-- View Table Data

select * from customer;
