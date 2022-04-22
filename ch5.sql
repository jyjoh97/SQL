use academy;
-- member_tbl_02의 모든 레코드(튜플)을 검색하라
select * from member_tbl_02;
-- member_tbl_02의 이름, 전화번호, 주소를 번호별로 검색하라
select custname, phone, address from member_tbl_02 order by custno;
-- member_tbl_02의 이름에 '복'자가 포함되는 레코드(튜플)의 이름, 번호 ,전화번호 항목을 검색하라
select custname, custno, phone from member_tbl_02 where custname like '%복%';
-- member_tbl_02의 가입일 2015년 10월과 11월인 레코드(튜플)을 검색하라
select * from member_tbl_02 where joindate between '2015-10-01' and '2015-11-30';
-- Alias 기능을 활용하여 한글로 모든 레코드(튜플)의 이름, 전화번호, 주소 등이 한글컬럼으로 나오도록 검색하라
select custname as "이름", phone as "전화번호", address as '주소' from member_tbl_02;


-- money_tbl_02에서 회원번호별로 금액에 대한 합계를 계산하도록 하라
select custno as '회원번호', sum(price) as '합계금액' from money_tbl_02 group by custno;

-- money_tbl_02에서 회원번호별로 금액에 대한 합계를 계산하도록 하라
