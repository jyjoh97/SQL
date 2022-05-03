<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>


<body>
<div>
	<header>
		<%@ include file="navJJAP.jsp" %>
	</header>
	
	<h2>로그인</h2>
	<form action="loginProJJAP.jsp" method="post">
		<ul>
			<li>아이디 : <input type="text" name="id" id="uid" placeholder="아이디 입력"required autofocus></li>
			<li>비밀번호 : <input type="password" name="pw" id="upw" placeholder="비밀번호 입력" required></li>
				<input type="submit" value="로그인">
				<input type="reset" value="취소">
			</li>
		</ul>
	</form>
	
	<footer>
		<!-- <%@ include file="ftJJAP.jsp" %>-->
	</footer>
	
</div>
</body>
</html>