<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.goyang.model.*" %>

<%
	List<CustomerVO> ctv = (List<CustomerVO>) request.getAttribute("ctv");
	System.out.println("1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보</title>
<style>
.tb1 { display:table; width:1200px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
.tb1 td.img_data { max-width:170px; }
.tb1 td.img_data img { max-width:170px; height:auto; }
.tb1 td p.coment { max-width:170px; line-height:24px;}
</style>
</head>

<body>
<div class="container">
	<header class="hd">
		<%@ include file="hd.jsp" %>
	</header>
	<div id="content">
		<table class="tb1">
			<thead>
				<tr>
					<th>이름</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>주소</th>
					<th>생년월일</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
<%
	for(int i=0;i<ctv.size();i++){
		CustomerVO vo = ctv.get(i);
	
%>
	
				<tr>
					<td><%=vo.getU_name() %></td>
					<td><%=vo.getU_id() %></td>
					<td><%=vo.getU_pw() %></td>
					<td><%=vo.getTel() %></td>
					<td><%=vo.getEmail() %></td>
					<td><%=vo.getAddress() %></td>
					<td><%=vo.getBirth() %></td>
					<td>
						<a href="editCustomer"><button>수정</button></a>
					</td>
				</tr>
<%
	}
%>
			
			</tbody>
		</table>
		</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>