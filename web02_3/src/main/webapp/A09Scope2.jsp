<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope2</title>
</head>

<body>
	<h3>스코프 결과</h3>
	<div>
		<p>페이지의 속성 : <%=pageContext.getAttribute("name") %></p>
		<p>요청페이지의 속성 : <%=request.getAttribute("name") %></p>
		<p>세션의 속성 : <%=session.getAttribute("name") %></p>
		<p>애플리케이션의 속성 : <%=application.getAttribute("name") %></p>
		<p>전역변수의 속성 : <%=application.getInitParameter("name") %></p>
		<p>전역변수의 속성2 : <%=application.getInitParameter("ojdbc") %></p>
		
		<a href="A09Scope3.jsp">스코프 결과 3 보러가기</a>
	</div>
</body>
</html>