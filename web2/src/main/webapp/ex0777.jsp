<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/web02/Request" method="post">
		<ul>
			<li>
				이름 : 
				<input type="text" name="name">
			</li>
			<li>
				아이디 : 
				<input type="text" name="id">
			</li>
			<li>
				비밀번호 : 
				<input type="text" name="pw"> &nbsp;&nbsp;&nbsp; 
				<input type="submit" value="로그인">
			</li>
		
		</ul>
	</form>
</body>
</html>