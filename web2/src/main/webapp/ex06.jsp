<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Student" %>    
<% 
	Student st1 = (Student) request.getAttribute("st1");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	<ul>
		<li>번호 : <%=st1.getNo() %></li>
	</ul>
</body>
</html>