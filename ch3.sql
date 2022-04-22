-- 트랜잭션(Transaction) : 한 번에 같이 수행되어야할 일련의 명령수행의 집합
-- 

use academy;
show tables;
select*from money_tbl_02;
select*from sales_tbl_03;
select*from money_tbl_02, sales_tbl_03;

start transaction;
update sales_tbl_03 set price=2000, amount=4 where saleno=2016007;
select * from sales_tbl_03;
select * from money_tbl_02;
rollback;

start transaction;
update sales_tbl_03 set price=2000, amount=4 where saleno=2016007;
select * from sales_tbl_03;
select * from moneymoney_tbl_02_tbl_02;
commit;
