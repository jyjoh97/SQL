<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		* { margin: 0; padding: 0; }
        body, jsp {  width: 100%;}
        ul { list-style: none; }
        a { text-decoration: none; color: #333;}
        li { list-style: none; }
       
		#content { clear:both; width: 1200px; height: auto; margin: 0 auto; }
		hr { margin-bottom:50px; }
		h1 { margin-bottom:10px; }
		
		#goyang { width:80%;}
		
	</style>
</head>
<body>
	<div class="container">
		<header class="hd">
			<%@ include file="hd.jsp" %>
		</header>
		
		
		
		<div id="content">
		
			<div class="goyanggil">
				<ul>
					<li>
						<h1>고양누리길</h1>
						<hr>
						<a href="">
							<img src="./img/goyangnurigil.jpg" alt="고양누리길" id="goyang">
						</a>
					</li>
				</ul>	
			</div>
			
		</div>
		
		
		
		<footer class="ft">
			<%@ include file="ft.jsp" %>
		</footer>

	</div>	
</body>
</html>