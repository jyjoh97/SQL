<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <link rel="apple-touch-icon" href="./img/favicon.ico">
    <!--검색(메타) 정보-->
    <meta name="url" content="https://www.samsungdisplay.co.kr">
    <meta name="title" content="르노코리아자동차">
    <meta name="description" content="르노코리아자동차 기업정보,제품정보,미디어,커뮤니티">
    <meta name="keywords" content="르노코리아자동차,자동차">
    <!--오픈 그래프-->
    <meta property="og:url" content="https://www.samsungdisplay.co.kr">
    <meta property="og:title" content="르노코리아자동차">
    <meta property="og:description" content="르노코리아자동차 기업정보,제품정보,미디어,커뮤니티">
    <meta property="og:image" content="./img/logo-square-letter.png">
    <title>르노코리아자동차</title>
    <!--기본 플로그인 연결-->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!--웹 폰트/폰트 연결-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
        @font-face {
            font-family: 'scB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        } 
        @font-face {
            font-family: 'ROKAF';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts2201-3@1.0/ROKAFSlabSerifBold.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }   
    </style>
  
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <!-- <link rel="stylesheet" href="./css/reset.css"> -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="common.css">
    <style>
         /* 메인 비주얼 */   
        #vs { width: 100%; overflow-x: hidden; position: relative;}
        .img_box { width: 400%; }
        .img_box li { float: left; width: 25%; position: relative;}
        .img_box li a { display: block; }
        .img_box li a img { display: block; width: 100%; height: auto;}
        .img_box .tit_box {position: absolute; top: 50px; left: 50px; color: #fff;
        text-shadow: 1px 1px 1px #333; padding-left: 40px; z-index: 30;}

        .btn_group { position:absolute; bottom:0px; left:90px; z-index:40; }
        .btn_group button { display:block; width: 80px; height: 80px; float:left; background-color:rgba(0,0,0,0.6); border:none; outline: none; color:#fff; }
        .btn_group button i[class*='xi'] { color: #fff; }
        .btn_group button:hover i[class*='xi'] { cursor:pointer; color:gold; }
        
        /* 그리드 박스 */
        .grid_box { clear: both; width: 100%;}
        .grid_wrap { clear: both; widows: 100%; }   
        .grid_wrap li { float: left; height: 16.66667vw; background-position: center center; }
        .grid_wrap li.item1 { background-color: #d0dee8; }    
        .grid_wrap li.item2 { background-color: #e5edf3; }
        .grid_wrap li.item3 { background-color: #d0dee8; }
        .grid_wrap li.item4 { background-color: #e5edf3; }
        .grid_wrap li.item5 { background-image: url("./Img/grid1.png"); background-repeat: no-repeat;  background-color: #d0dee8; }
        .grid_wrap li.item6 { background-image: url("./Img/grid2.png"); background-repeat: no-repeat; background-color: #e5edf3; }

        /* 그리드 */               
        .col1 { width: 8.33333%; }
        .col2 { width: 16.66667%; }
        .col3 { width: 25%; }
        .col4 { width: 33.33333%; }
        .col5 { width: 41.66667%; }
        .col6 { width: 50%; }
        .grid_wrap li a { display:block; padding: 28px; }
        .col_tit, .col_com { color:#000; }
        .col_tit { padding-top: 5px; }
        .col_tit.w , .col_com.w { color:#fff; text-shadow:1px 1px 1px #333; }
        .col_tit.w { padding-top: 0; }
        .arrow { display:block; margin-top: 50px; }
        .arrow:before { content:""; display:block; width:2px; height: 3px; border-bottom: 1px solid #555; float:left; transition:0.4s; }
        .arrow:after { content:""; display:block; width:50px; height: 8px; background-image: url("./Img/arrow_black.png"); float:left; background-repeat: no-repeat; }
        .col_com { font-size:12px; padding-top: 20px; font-weight: 200;  }
        .grid_wrap li:hover a .arrow:before { width: 18px;  }

        /* 콘텐츠 영역 */   
        #content { clear:both; width: 100%; }

        
        </style>
</head>
<body>
	<div class="wrap">
		<header id="hd">
				<%@ include file="nav.jsp" %>
		</header>
		
		<div id="content">
			<%@ include file="content.jsp" %>
		</div>
		
		<footer id="ft">
			<%@ include file="ft.jsp" %>
		</footer>
	</div>
</body>
</html>