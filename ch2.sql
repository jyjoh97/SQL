use mysql;
create user test3;		-- 사용자 추가
select host, user from user; 	-- 사용자 목록 보기
create user test3@localhost identified by'1234';	-- localhost에 대한 암호 설정
create user test3@'%' identified by '1234';		-- 외부 접근시 암호 설정
-- drop user 사용자 아이디;  : 	사용자제거
-- 권한 수행(권한 부여 - grant, 권한 회수 -revoke)

-- 1) 권한 부여
-- grant sql명령 on 데이터베이스.테이블명 to 계정아이디@localhost identified by '비밀번호';

-- 2) 모든 데이터베이스와 테이블의 모든 권한 부여
-- grant all privileges on *.* to 계정@localhost [identified by '비밀번호' with grant option];

-- 3) 권한에 대한 변경사항 적용
-- flush privileges;

-- 4) 사용자 권한 보기
-- show grants for 계정@localhost;

-- 5) 권한 회수
-- revoke sql명령 on 데이터베이스.테이블명 from 계정@localhost [identified by '비밀번호'];

-- 6) 모든 권한 회수
-- revoke all privileges on *.* from 계정@localhost [identified by '비밀번호' with grant option];


create user test4;															-- 1) 계정 추가
create user test4@localhost identified by 'a1234';							-- 1) 비밀번호 추가
create user test4@'%' identified by 'a1234';								-- 1) cmd 접속시 비밀번호 추가
grant all privileges on *.* to test4@localhost;								-- 2) 모든 권한 부여
flush privileges;															-- 3) 권한 내용 갱신(저장)
revoke all privileges on *.* from test4@localhost;							-- 5) 모든 권한 회수
drop user test4@localhost;													-- 6) 계정 삭제
