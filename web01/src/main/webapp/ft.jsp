<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
    String[] dp3 = {"고객센터","클린신고센터","견학신청","사이트맵","개인정보처리방침","정보보호현황", "오시는길" };
%>
<div class="ft_wrap">
<%
	for(int i=0;i<dp3.length;i++){
%>
	<nav class="fnb">
	<a href=""><%=dp3[i] %></a>	
	</nav>
<%
	}
%>
	<nav class="snb">
		<ul>
			<li class="sns1">
				<a href="" title="페이스북"><i class="xi-facebook"></i></a>
			</li>
			<li class="sns2">
                <a href="" title="유튜브"><i class="xi-youtube-play"></i></a>
            </li>
            <li class="sns3">
                <a href="" title="네이버 포스트"><i class="xi-naver"></i></a>
            </li>
		</ul>
	</nav>
	<p class="copyright">Copyright © 2022 NCSOFT. All Rights Reserved. 대표번호 : 02-3777-1114</p>
</div>