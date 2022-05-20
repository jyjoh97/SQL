<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");	
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int tot;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>



<body>
	<h2>점수 결과</h2>
	<div>
		<p><%= name %>님</p>
		<p>국어 : <%=kor %>점</p>
		<p>영어 : <%=eng %>점</p>
		<% tot=kor+eng; %>
		<p>총점 : <%=tot %>점</p>
		<p><a href="A06Average.jsp?tot=<%=tot %>">평균 구하기</a>
		<p><a href="A06Hakjum.jsp">학점 구하기</a>
		<p><a href="A06Pass.jsp">합격 여부</a>
	</div>
</body>
</html>