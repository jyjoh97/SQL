<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.goyang.model.CustomerVO" %>
<%
	//보내진 customList 객체를 받아 customer로 분리하여 출력
	CustomerVO cto = (CustomerVO) request.getAttribute("cto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보</title>
<style>
.tb1 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
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
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<form action="/web02/GetCustomerCtrl" method="post">
	<table class="tb2">
		<tbody>
	<%
		if(cto!=null){
	%>
			<tr>
				<th>이름</th>
				<td><input type="text" name="u_name" value="<%=cto.getU_name() %>"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="u_id" value="<%=cto.getU_id() %>" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="u_pw" value="<%=cto.getU_pw() %>"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="tel" name="tel" value="<%=cto.getTel() %>"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="email" value="<%=cto.getEmail() %>"></td>
			</tr>
			<tr>
				<th>생년월일</th>	
				<td><input type="date" name="birth" value="<%=cto.getBirth() %>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetCustomerCtrl">목록</a>
				</td>
			</tr>
	<%
		}
	%>
		</tbody>
	</table>
</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>