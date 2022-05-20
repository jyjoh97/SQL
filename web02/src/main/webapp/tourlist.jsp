<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.goyang.model.*" %>

<%
	List<TourlistVO> tlv = (List<TourlistVO>) request.getAttribute("tlv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광지 소개</title>
	<style>
		.tb1 { display:table; width:1400px; margin:20px auto; border-collapse: collapse; }
		.tb1 tr { display:table-row; }
		.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
		font-size:14px; }
		.tb1 th { border-top:1px solid #333; background-color:#ccc; }
		.tb1 td.img_data { max-width:170px; }
		.tb1 td.img_data img { max-width:170px; height:auto; }
		.tb1 td p.coment { max-width:170px; line-height:24px;}
		
		.th5 { width : 500px;}
		
		td img { display:block; width:200px; height:200px; margin: auto auto; }
	</style>
</head>

<body>
<div class="container">
	<header id="hd">
		<%@ include file="hd.jsp" %>
	</header>
	<div id="content">
		<table class="tb1">
			<thead>
				<tr>
					<th class="th1">글 번호</th>
					<th class="th2">대분류</th>
					<th class="th3">글 제목</th>
					<th class="th4">장소 분류</th>
					<th class="th5">내용</th>
					<th class="th6">이미지1</th>
					<th class="th7">이미지2</th>
					<th class="th8">이미지3</th>
					<th class="th9">이미지4</th>
				</tr>
			</thead>
			<tbody>
<%
	for(int i=0;i<tlv.size();i++){
		TourlistVO vo = tlv.get(i);
%>
	
				<tr>
					<td><%=vo.getTno() %></td>
					<td><%=vo.getTid() %></td>
					<td><a href="/web02/GetTourListCtrl?tno=<%=vo.getTid() %>"><%=vo.getTname() %></a></td>
					<td><%=vo.getTtype() %></td>
					<td><%=vo.getTcontent() %></td>
					<td><img src="<%=vo.getTimg1() %>" alt="" ></td>
					<td><%=vo.getTimg2() %></td>
					<td><%=vo.getTimg3() %></td>
					<td><%=vo.getTimg4() %></td>
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