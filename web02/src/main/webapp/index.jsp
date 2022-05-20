<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
	<style>
		* { margin: 0; padding: 0; }
        body, jsp {  width: 100%;}
        ul { list-style: none; }
        a { text-decoration: none; color: #333;}
        li { list-style: none; }
		
		#content { clear:both; width: 100%; margin: 0 auto;}
        #vs { width:100%; overflow:hidden;  } 
        .img_box { width: 400%; }
        .img_box li { float:left; width: 25%; position:relative; }
        .img_box li a { display:block; }
        .img_box li a img { display:block; width: 100%; height:auto; }
        .img_box .tit_box { position:absolute; top:50px; left:50px; color:#fff; 
        text-shadow:1px 1px 1px #333; padding-left: 40px; z-index:30; }
       </style>
</head>

<body>
<div class="container">
	<header class="hd">
		<%@ include file="hd.jsp" %>
	</header>

	<div id="content">
		<div id="vs">
			<ul class="img_box">
				<li>
					<img src="./img/index1.png"></img>
				</li>
				<li>
					<img src="./img/index2.png"></img>
				</li>
				<li>
					<img src="./img/index3.png"></img>
				</li>        
			</ul>
                
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></button>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div>
                    <script>
                    $(document).ready(function(){
                        wd = $(window).width();
                        var intv = setInterval(function(){
                            ani1();
                        }, 3000);
                        function ani1(){
                            $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 600, function(){
                            $(".img_box li").eq(0).appendTo($(".img_box"));
                            $(".img_box").css("margin-left","0px");
                            });
                        }
                        function ani2(){
                            $(".img_box").css("margin-left",-wd+"px");
                            $(".img_box li:last-child").prependTo($(".img_box"));
                            $(".img_box").not(":animated").animate({"margin-left":"0px"}, 600);
                        }
                        $(".btn_group .next_btn").click(function(){
                            clearInterval(intv);
                            ani1();
                            intv = setInterval(function(){ ani1(); }, 3000);
                        });
                        $(".btn_group .prev_btn").click(function(){
                            clearInterval(intv);
                            ani2();
                            intv = setInterval(function(){ ani1(); }, 3000);
                        });
                    });    
                </script>
                
           	</div>
       	</div>
	
		<p id="tnb">
<%
	String u_id = (String) session.getAttribute("u_id");
	String u_name = (String) session.getAttribute("u_name");
	if(u_id == null){
%>
	<a href="login.jsp">로그인</a>
	<a href="addCustomer.jsp">회원가입</a>
<%
	} else if(!u_id.equals("admin")){
%>
	<a href="logOut.jsp">로그아웃</a>
	<a href="mypage.jsp"><%=u_name %></a>
	<a href="GetNoticeListCtrl">공지 사항</a>
	<a href="GetReviewBoardListCtrl">후기 게시판</a>
	<a href="">회원탈퇴</a>
	
<%
	} else {
%>
	<a href=""></a>
	<a href="GetCustomerListCtrl">회원목록</a>
	<a href="GetNoticeListCtrl">공지 사항</a>
	<a href="GetReviewBoardListCtrl">후기 게시판</a>
	<a href="logOut.jsp">로그아웃</a>
	<a href="GetTourListCtrl">tourlist</a>
<%
	}
%>

	<footer class="ft">
		<%@ include file="ft.jsp" %>
	</footer>

</div>	
</body>
</html>