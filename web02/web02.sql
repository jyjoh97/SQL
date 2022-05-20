create table customer(
    u_name varchar(20) not null,
    u_id varchar(20) primary key,
    u_pw varchar(20) not null,
    tel varchar(15) not null,
    email varchar(40) not null,
    address varchar(200) not null,
    birth date);
    
insert into customer values('관리자', 'admin', '0000', '010-1111-1111', 'admin@naver.com', '동백동 1', '2000-01-01');    
insert into customer values('조재영', 'jjy', '1234', '010-2222-2222', 'jjy@naver.com', '청덕동 1', '1997-02-05');
insert into customer values('길정훈', 'gill', '4321', '010-3333-3333', 'gill@naver.com', '죽전동 1', '1996-03-03');
insert into customer values('김동협', 'dong', '1111', '010-4444-5555', 'dong@naver.com', '죽전동 2', '1997-04-04');
insert into customer values('김태균', 'tae', '2222', '010-5555-5555', 'tae@naver.com', '역북동 1', '1996-05-05');
insert into customer values('김기태', 'kkt', '3333', '010-6666-6666', 'kkt@naver.com', '초당동 1', '2021-06-06');
insert into customer values('김준호', 'jun', '4444', '010-7777-7777', 'jun@naver.com', '초당동 2', '1993-07-07');

select * from customer;


commit;

create table tourlist(
    tno number(11) not null,
    tid varchar(10) primary key,
	tname varchar(40) not null,
	ttype varchar(20) not null,
	tcontent varchar(600) not null,
	timg1 varchar(50),
	timg2 varchar(50),
	timg3 varchar(50),
	timg4 varchar(50));

-- rid 첫 문자 설명 = A:관광명소, B:축제/행사, C:음식, D:숙박, E:쇼핑, F:여행/체험, G:교통
-- rid 두 번쨰 구분코드 설명 A = 11:고양길, 12:행주산성, 13:산, 14:사찰, 15:전시/박물관 16:엔터테인먼트, 17:공원/자연, 18:문화재
-- rid 두 번쨰 구분코드 설명 B = 11:해맞이, 12:박람회, 13:문화제, 14:예술축제, 15:야외축제, 16:기타축제
-- rid 두 번쨰 구분코드 설명 C = 11:먹거리, 12:추천식당
-- rid 두 번쨰 구분코드 설명 D = 11:특급호텔, 12:호텔, 13:템플스테이, 14:기타업소
-- rid 두 번쨰 구분코드 설명 E = 11:쇼핑거리, 12:백화점/쇼핑몰, 13:전통시장, 14:가구단지, 15:브랜드상품, 16:특산물, 17:공예, 18:작품, 19:기타
-- rid 두 번쨰 구분코드 설명 F = 11:농촌체험, 12:생태체험, 13:환경학습, 14:시티투어, 15:추천코스
-- rid 두 번쨰 구분코드 설명 G = 11:교통버스, 12:지하철역


	
create table tourlist2(

drop table tourlist;
drop sequence tlst_seq;

create sequence system.tlst_seq increment by 1 start with 1 minvalue 1 maxvalue 10000 nocycle nocache; 
    
select * from tourlist;    
    
insert into tourlist(tno, tid, tname, ttype, tcontent, timg1) values(tlst_seq.nextval, 'A110001', '고양누리길', 'place',
    '자연과 인간이 함께 숨 쉬는 전원의 도시 고양 문화와 예술의 향기가 가득한 낭만의 도시 고양에서 좋은 사람들과 함께 소중한 추억을 만들 수 있는 모두의 길입니다.', './img/goyangnurigil.jpg');



-- insert into tourlist(tno, tid, tname, ttype, tcontent, timg1) values(tlst_seq.nextval, 'A11000', '', 'place', '

insert into tourlist(tno, tid, tname, ttype, tcontent, timg1) values(tlst_seq.nextval, 'A110002', '평화누리길', 'place', '남북을 가로막은 분단의 장벽을 따라가는 평화누리길', './img/hangjunarugil.jpg');
insert into tourlist(tno, tid, tname, ttype, tcontent, timg1) values(tlst_seq.nextval, 'A110003', '평화누리길 5코스(킨텍스길)', 'place', '호수공원 선인장전시관에서 노래하는 분수대와 킨텍스, 가좌근린공원, 동패지하차도로 이어져 있는 킨텍스길은 고양시를 대표하는 마이스 산업과 신한류관광의 중심지인 킨텍스가 농촌마을과 함께 공존하는 길로 고양시 발전과 시간의 흐름을 느끼게 해준다.', './img/kintexgil.jpg');
insert into tourlist(tno, tid, tname, ttype, tcontent, timg1) values(tlst_seq.nextval, 'B110001', '행주산성해맞이축제', 'festival', '희망찬 새해를 기원하는 해맞이 축제가 매년 행주산성에서 화려하게 펼쳐진다. 행주산성 정상은 조망이 뛰어나 새해 첫해를 감상하기에 최적의 장소로 손꼽히는데
    각종 공연과 새해소망 풍선 날리기, 불꽃놀이 등 새해 일출을 감상하며 소망을 다짐할 수 있는 다채로운 프로그램이 마련되어 축제의 흥을 더한다.', './img/welcomsun.jpg');
insert into tourlist(tno, tid, tname, ttype, tcontent) values(tlst_seq.nextval, 'C110001', '먹거리', 'food', '미꾸라지 털레기');
insert into tourlist(tno, tid, tname, ttype, tcontent) values(tlst_seq.nextval, 'D110001', '소노캄고양', 'deluxe hotel', '경기 북부 유일의 특급호텔. 국내 최대 규모의 Convention Venue인 KINTEX와 인접');
insert into tourlist(tno, tid, tname, ttype, tcontent, timg1) values(tlst_seq.nextval, 'E110001', '라페스타', 'shopping', '쇼핑과 문화의 복합 공간으로 쇼핑센터, 멀티플렉스 영화관, 음식점 등 먹을거리, 볼거리, 놀거리가 가득한 국내 최대 스트리트형 쇼핑몰이다. 널찍한 보행자 전용거리, 테마별로 구성된 쇼핑몰, 동과 동을 이어주는 원형 브릿지로 쾌적하고 편리한 쇼핑을 즐길 수 있고 주말이면 라이브 콘서트, 야외 공개방송, 패션쇼 등 다양한 이벤트가 함께 열려 색다른 쇼핑의 재미를 선사한다.', './img/lafesta.jpg');
insert into tourlist(tno, tid, tname, ttype, tcontent) values(tlst_seq.nextval, 'F110001', '고양 낙농치즈 테마체험장', 'experience', '고양 낙농치즈 테마체험장은 지난 10년 동안 공예체험프로그램을 활동했던 경험과 치즈와 피자 프로그램을 연계해 2010년에 체험장을 오픈하였습니다. 2012년 고양시에서 더 큰 발전을 기대하며 상호명을 고양낙농치즈테마체험장으로 변경하였습니다. 만들기+배우기+즐기는 체험 학습 프로그램을 진행하며 내일의 일꾼이 되는 아이들에게 꿈과 창의적인 활동 및 인성교육에 도움이 되도록 노력하고 있습니다');
-- insert into tourlist(tno, tid, tname, ttype, tcontent) values(tlst_seq.nextval, 'G110001', '버스'

update tourlist set tcontent='행주산성에서 시작되는 길은 옛 나루터가 위치했던 행주대교 아래를 지나며 도심 속 전원 풍경이 하눈에 들어오는 농로로 이어지며 많은 볼거리와 휴식처가 있는 호수공원에 다다른다.' where tid='A110002';

create table reviewboard(
    rno number(11) primary key,
    rtitle varchar(50) not null,
    rplace varchar(50) not null,
    rtodate date not null,
    rfromdate date not null,
    rcontent varchar(500) not null,
    rimg1 varchar(50),
    rimg2 varchar(50),
    rid varchar(12),
    rpw varchar(40),
    rdate date default sysdate,
    rcnt number(11));
    
select * from reviewboard;


create table notice(
    nno number(11) primary key,
    ntitle varchar(50) not null,
    ncontent varchar(500) not null,
    nimg varchar(50),
    ndata varchar(50),
    resdate date default sysdate,
    nname varchar(20),
    ncnt number(11));
    

    desc notice;
    
select * from notice;
    commit;


