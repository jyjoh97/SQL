<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양누리길</title>
	<style>
		* { margin: 0; padding: 0; }
        body, jsp {  width: 100%;}
        ul { list-style: none; }
        a { text-decoration: none; color: #333;}
        li { list-style: none; }
       
       
		#content { clear:both; width:1200px; height: 600px; margin: 0 auto;}
		.content_wrap { width:75%; float:right; padding-top:40px;}
		.bread { margin-top:-20px; margin-left:630px; font-size:12px;}
		#goyang { width:100%; margin-top:40px; }
		.h1 {  font-size:30px;}
		.p { height: 6px; background:url('./img/h3_bg.png') 0 bottom repeat-x; margin-top: 10px; }
		
		.left { width: 210px; float: left; }
		.left h2 { background: #00529c; color: #fff; font-size: 30px; font-weight: bold; text-align: center; 
			padding: 40px 0; min-height: 100px; line-height: 32px; word-break: keep-all; box-sizing: border-box; }
		.left > ul > li { border-bottom: #dadada solid 1px;}
		.left > ul > li.on > a, .left > ul > li > a:hover { background: url(./img/left_arr_on.png) 189px 22px no-repeat #666666; color: #fff; }
		.left > ul > li > a { display: block; color: #333; padding: 15px 25px 15px 18px; font-size: 15px; 
			background: url(./img/left_arr_on.png) 189px 22px no-repeat; } 
		.left > ul > li.on > ul { display: block; background: #fafafa; padding: 15px 0; margin: 0 1px; line-height:2.0em; padding-left:15px;}		
		
	</style>
</head>
<body>
	<div class="container">
		<header class="hd">
			<%@ include file="hd.jsp" %>
		</header>
		
		
		<div id="content">
			<div class="left">
				<h2>관광명소</h2>
				<ul>
					<li class="subMenu on">
						<a href="">고양명소</a>
						<ul>
							<li>
								<a href="">- 킨텍스</a>
							</li>
							<li>	
								<a href="">- 세계문화유산</a>
							</li>
						</ul>
					</li>
					<li class="subMenu on">
						<a href="">고양길</a>
						<ul>
							<li>
								<a href="">- 고양누리길</a>
							</li>
							<li>	
								<a href="">- 평화누리길</a>
							</li>
						</ul>
					</li>
					<li class="subMenu on">
						<a href="">산/사찰</a>
						<ul>
							<li>
								<a href="">- 산</a>
							</li>
							<li>	
								<a href="">- 사찰</a>
							</li>
						</ul>
					</li>
					<li class="subMenu on">
						<a href="">전시/박물관</a>
						<ul>
							<li>
								<a href="">- 공연/전시</a>
							</li>
							<li>	
								<a href="">- 박물관</a>
							</li>
						</ul>
					</li>
					<li class="subMenu on">
						<a href="">엔터테인먼트</a>
						<ul>
							<li>
								<a href="">- 골프</a>
							</li>
							<li>	
								<a href="">- 낚시</a>
							</li>
							<li>	
								<a href="">- 공공운동장</a>
							</li>
							<li>	
								<a href="">- 승마</a>
							</li>
							<li>	
								<a href="">- 물놀이/스노우파크</a>
							</li>
						</ul>
					</li>
					<li class="subMenu on">
						<a href="">공원/자연/기타</a>
						<ul>
							<li>
								<a href="">- 공원/테마파크</a>
							</li>
							<li>	
								<a href="">- 습지</a>
							</li>
							<li>	
								<a href="">- 하천</a>
							</li>
						</ul>
					</li>
					<li class="subMenu on">
						<a href="">문화재</a>
						<ul>
							<li>
								<a href="">- 지정문화재</a>
							</li>
							<li>	
								<a href="">- 향토문화재</a>
							</li>
						</ul>
					</li>
						
				</ul>
			</div>
		
			
		
		
			<div class="content_wrap">
				<div class="goyanggil">
					<ul>
						<li class="h1">
							<p>고양누리길</p>
						</li>
						<li  class="bread">
							<p><img src="./img/icon_home.png"> > 관광명소 > 고양길 > 고양누리길</p>
						</li>
						<li class="p">
							<p></p>
						</li>
						<li>	
							<a href="">
								<img src="./img/goyangnurigil.jpg" alt="고양누리길" id="goyang">
							</a>
						</li>
					</ul>	
				</div>
			</div>
		</div>
		
		
		


	</div>	
</body>
</html>