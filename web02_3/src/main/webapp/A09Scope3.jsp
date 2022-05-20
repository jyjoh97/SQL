<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope3</title>
</head>

<body>
	<h3>스코프 결과2</h3>
	<div>
		<!-- page scope : 현재 페이지를 벗어나면 그 값을 알 수 없음 -->
		<p>페이지의 속성 : <%=pageContext.getAttribute("name") %></p>
		<!-- request scope : 요청 페이지가 아니면 그 값을 알 수 없음 -->
		<p>요청페이지의 속성 : <%=request.getAttribute("name") %></p>
		<!-- session scope : 세션 값이 유지되는 동안만 그 값을 알 수 있음 -->
		<p>세션의 속성 : <%=session.getAttribute("name") %></p>
		<!-- application scope : 서버가 구동되는 동안 그 값을 알 수 있음 -->
		<p>애플리케이션의 속성 : <%=application.getAttribute("name") %></p>
		<!-- application scope : 서버가 구동되는 동안 그 값을 알 수 있음 -->
		<p>전역변수의 속성 : <%=application.getInitParameter("name") %></p>
		<p>전역변수의 속성2 : <%=application.getInitParameter("ojdbc") %></p>
	</div>
	
<%
	String ojdbc = application.getInitParameter("ojdbc");
	Class.forName(ojdbc);
%>
	
</body>
</html>