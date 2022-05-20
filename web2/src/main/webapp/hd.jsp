<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	* { margin: 0; padding: 0; }
    body, html { font-family: 'Noto Sans KR4', sans-serif; width: 100%;}
    ul { list-style: none; }
    a { text-decoration: none; color: #333;}
    li { list-style: none; }
    
    .wrap { clear:both; width: 100% ;}
    #hd { clear:both; width: 100%; height:auto; /*position: fixed; top:0; left:0; z-index: 999;
    height:60px; background-color: rgba(255,255,255,0.8);*/}
    .hd_wrap { clear:both; width: 1200px; height:150px; margin: 0 auto; }
    .logo { display:block; width: 100px; float:left; margin-top:40px; margin-left:50px;}
    .logo img { display: block;  width:200%; }

	.hdimg2 {float: right; }
	.hdimg1 { float:left; }
	hr { clear:both; width:100%; color:#808080;}

	
    #gnb { float: left; margin-top: 40px; margin-left:200px; margin-bottom:27px; }
    #gnb > ul > li { float:left; padding-left : 50px; padding-right: 20px; position:relative; font-size: 18px;font-weight:bold;}
    #gnb > ul > li > span { display:block; line-height: 36px; cursor: pointer;}

    #gnb ul li .sub li {line-height: 38px;}
    #gnb ul li .sub {display:none; position: absolute; left: 10px; top: 36px; z-index: 999;
    padding-left: 10px; width: 160px; height: 200px; background-color: #eee;}
    #gnb ul li:hover .sub { display:block; }
    #gnb ul li:hover span { color: gold }
    #gnb ul li .sub li:hover a { color: gold}

	

</style>
    
 
<div class="wrap">
	<header id="hd">
            <div class="hd_wrap">
                
                <div class="hdhd">
                	<a href="" class="hdimg1">
                		<img src="./img/cityhall.png" alt="고양시청바로가기">
                	</a>
                	<a href="" class="hdimg2">
                		<img src="./img/sitemap.png" alt="사이트맵">
                	</a>
                	<a href="" class="hdimg2">
                		<img src="./img/home.png" alt="고양시문화관광">
                	</a>               	
                	<hr>
                </div>
                	
	                <a href="index.jsp" class="logo">
	                    <img src="./img/goyang.png" alt="고양시문화관광">
	                </a>
	            
                <nav id="gnb">
                      <ul>
                        <li>
                            <span>관광명소</span>
                            <ul class="sub">
                                <li><a href="tour.jsp#page1">고양명소</a></li>
                                <li><a href="tour.jsp#page2">고양길</a></li>
                                <li><a href="tour.jsp#page3">산/사찰</a></li>
                                <li><a href="tour.jsp#page4">전시/박물관</a></li>
                                <li><a href="tour.jsp#page5">엔터테인먼트</a></li>
                                <li><a href="tour.jsp#page6">공원/자연/기타</a></li>
                                <li><a href="tour.jsp#page7">문화재</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>축제/행사</span>
                            <ul class="sub">
                                <li><a href="festival.jsp#page1">최신소식/이벤트</a></li>
                                <li><a href="festival.jsp#page2">정기축제/행사</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>음식/숙박/쇼핑</span>
                            <ul class="sub">
                                <li><a href="rest.jsp#page1">숙박</a></li>
                                <li><a href="rest.jsp#page2">음식점</a></li>
                                <li><a href="rest.jsp#page3">쇼핑</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>여행/체험</span>
                            <ul class="sub">
                                <li><a href="travel.jsp#page1">체험관광</a></li>
                                <li><a href="travel.jsp#page2">시티투어</a></li>
                                <li><a href="travel.jsp#page3">추천코스</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>관광안내</span>
                            <ul class="sub">
                                <li><a href="guide.jsp#page1">문화관광 웹지도</a></li>
                                <li><a href="guide.jsp#page2">교통정보</a></li>
                                <li><a href="guide.jsp#page3">관광지도 다운로드</a></li>
                                <li><a href="guide.jsp#page4">관광안내홍보물 신청</a></li>
                                <li><a href="guide.jsp#page5">문화관광 해설사</a></li>
                                <li><a href="guide.jsp#page6">고양관광정보센터</a></li>
                                <li><a href="guide.jsp#page7">공지사항</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                
                <hr>
                
            </div>
        </header>
        
        
</div>