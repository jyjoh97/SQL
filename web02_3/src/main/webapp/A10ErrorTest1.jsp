<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ErrorPage.jsp"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 테스트 페이지</title>
</head>


<body>
	<div>
		받을 수 없는 파라미터 num의 값을 받습니다.
	</div>	
</body>
</html>