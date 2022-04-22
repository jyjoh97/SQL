<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
	String[] ft1 = { "고객센터", "클린신고센터", "견학신청", "사이트맵", "개인정보처리방침", "정보보호현황", "오시는길"};
	String[] ft2 = { "cust.jps", "clean.jps", "visit.jps", "sitemap.jsp", "privacy.jsp", "infor.jsp", "road.jsp"};
%>
	<ul>
<%
	for(int i=0; i<ft1.length; i++) {
%>
			<li>
				<a class="ft2" href="<%=ft2[i] %>"><%=ft1[i] %></a>
			</li>
			
<%
		}
%>
	</ul>
</body>

</html>