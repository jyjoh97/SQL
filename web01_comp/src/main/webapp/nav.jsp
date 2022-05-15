<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<div class="hd_wrap">
     <a href="index.jsp" class="logo">
         <img src="./Img/logo.png" alt="르노코리아자동차 로고">
     </a>
     <nav id="gnb">
         <ul>
             <li>
                 <span>MODEL</span>
                 <ul class="sub">
                     <li><a href="model.jsp">전체모델보기</a></li>
                     <li><a href="">모델비교</a></li>
                 </ul>
             </li>
             <li>
                 <span>BUY</span>
                 <ul class="sub">
                     <li><a href="">내 차 만들기 & 견적</a></li>
                     <li><a href="">구매절차 안내</a></li>
                     <li><a href="">맞춤형 금융계산기</a></li>
                     <li><a href="">이달의 구매 혜택</a></li>
                 </ul>
             </li>
             <li>
                 <span>SERVICE</span>
                 <ul class="sub">
                     <li><a href="">care service</a></li>
                     <li><a href="">온라인 정비예약</a></li>
                     <li><a href="">멤버십 서비스</a></li>
                     <li><a href="">MY 르노코리아 앱</a></li>
                 </ul>
             </li>
             <li>
                 <span>INSIDE</span>
                 <ul class="sub">
                     <li><a href="">뉴스</a></li>
                     <li><a href="">이벤트</a></li>
                 </ul>
             </li>
             <li>
                 <span>MY르노코리아</span>
                 <ul class="sub">
                     <li><a href="">회원정보 관리</a></li>
                     <li><a href="">MY 혜택</a></li>
                     <li><a href="">내 차 관리</a></li>
                     <li><a href="">정비예약 신청/조회</a></li>
                 </ul>
             </li>
         </ul>
     </nav>
<p id="tnb">
<%
	String sid = (String) session.getAttribute("uid");
	String sname = (String) session.getAttribute("name");
	if(sid == null){
%>
         <a href="">로그인</a>
         <a href="">사이트맵</a>
         <a href="">오시는길</a>

<%
	} else if(!sid.equals("admin")){
%>
	
<%
	} else {
%>

<%
	}
%>
</p>
 </div>