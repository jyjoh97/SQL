<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	* { margin: 0; padding: 0; }
    body, html { font-family: 'Noto Sans KR4', sans-serif; width: 100%;}
    ul { list-style: none; }
    a { text-decoration: none; color: #333;}
    li { list-style: none; }
    
    .wrap { clear:both; width: 100% ;}
    #hd { clear:both; width: 100%; height:100px; /*position: fixed; top:0; left:0; z-index: 999;
    height:60px; background-color: rgba(255,255,255,0.8);*/}
    .hd_wrap { clear:both; width: 1280px; height:200px; margin: 0 auto; }
    .logo { display:block; width: 100px; float:left; margin-top:40px; margin-left:50px;}
    .logo img { display: block;  width:200%; }
	
	hdhd a img { width:100%; }
	hr { clear:both; width:1980;}
	
    #gnb { float: left; margin-top: 40px; margin-left:300px; padding-bottom:40px;}
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
                	<a href="">
                		<img src="./img/cityhall.png" alt="고양시청바로가기">
                	</a>
                	<a href="">
                		<img src="./img/home.png" alt="고양시문화관광">
                	</a>
                	<a href="">
                		<img src="./img/sitemap.png" alt="사이트맵">
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
                                <li><a href="tour.jsp#page1">고양길</a></li>
                                <li><a href="tour.jsp#page2">행주산성</a></li>
                                <li><a href="tour.jsp#page3">산</a></li>
                                <li><a href="tour.jsp#page4">사찰</a></li>
                                <li><a href="tour.jsp#page5">전시/박물관</a></li>
                                <li><a href="tour.jsp#page6">엔터테인먼트</a></li>
                                <li><a href="tour.jsp#page7">공원/자연</a></li>
                                <li><a href="tour.jsp#page8">문화재</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>축제/행사</span>
                            <ul class="sub">
                                <li><a href="fetival.jsp#page1">해맞이</a></li>
                                <li><a href="fetival.jsp#page2">박람회</a></li>
                                <li><a href="fetival.jsp#page3">문화제</a></li>
                                <li><a href="fetival.jsp#page4">예술축제</a></li>
                                <li><a href="fetival.jsp#page5">야외축제</a></li>
                                <li><a href="fetival.jsp#page6">기타축제</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>음식</span>
                            <ul class="sub">
                                <li><a href="food.jsp#page1">먹거리</a></li>
                                <li><a href="food.jsp#page2">추천식당</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>숙박</span>
                            <ul class="sub">
                                <li><a href="rest.jsp#page1">특급호텔</a></li>
                                <li><a href="rest.jsp#page2">호텔</a></li>
                                <li><a href="rest.jsp#page3">템플스테이</a></li>
                                <li><a href="rest.jsp#page4">기타업소</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>쇼핑</span>
                            <ul class="sub">
                                <li><a href="shopping.jsp#page1">쇼핑거리</a></li>
                                <li><a href="shopping.jsp#page2">백화점/쇼핑몰</a></li>
                                <li><a href="shopping.jsp#page3">전통시장</a></li>
                                <li><a href="shopping.jsp#page4">가구단지</a></li>
                                <li><a href="shopping.jsp#page5">브랜드상품</a></li>
                                <li><a href="shopping.jsp#page6">특산물</a></li>
                                <li><a href="shopping.jsp#page7">공예</a></li>
                                <li><a href="shopping.jsp#page8">작품</a></li>
                                <li><a href="shopping.jsp#page9">기타</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>여행/체험</span>
                            <ul class="sub">
                                <li><a href="travel.jsp#page1">농촌체험험</a></li>
                                <li><a href="travel.jsp#page2">생태체험</a></li>
                                <li><a href="travel.jsp#page3">환경학습</a></li>
                                <li><a href="travel.jsp#page4">시티투어</a></li>
                                <li><a href="travel.jsp#page5">추천코스</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                
                
                
            </div>
        </header>
        
        
</div>