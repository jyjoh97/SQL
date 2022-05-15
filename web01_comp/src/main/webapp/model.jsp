<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        .img_box li a img { display: block; width: 100%; height: auto; }
        .img_box .tit_box {position: absolute; top: 50px; left: 50px; color: #fff; text-shadow: 1px 1px 1px #333; padding-left: 40px; z-index: 30;}

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
        .grid_wrap li.item5 { background-image: url("/chung/project/Img/grid1.png"); background-repeat: no-repeat;  background-color: #d0dee8; }
        .grid_wrap li.item6 { background-image: url("/chung/project/Img/grid2.png"); background-repeat: no-repeat; background-color: #e5edf3; }

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
        .page { clear: both; width: 100%; }
        .sub_ban { clear: both; width: 100%; }
        .sub_ban img { display: block; width: 100%; }
        .bread_box { clear: both; width: 100%; border-top: 2px solid #eee; border-bottom: 2px solid #eee; }
        .bread_wrap { clear: both; width: 1200px; margin: auto; height: 40px; padding-top: 1em; padding-bottom: 1em; line-height: 40p; font-size: 18px;}    
        .bread_wrap a { padding-right: 10px;}
        .bread_wrap a:after { content: ">"; padding-left: 10px; }
        .sel option { font-size: 18px; }
        .con_wrap { clear: both; width: 100%; }
        .page_wrap { clear: both; width: 1200px; margin: 0 auto; }
        .page_tit { font-size: 40px; line-height: 2.4; padding-top: 1em; padding-bottom: 0.5em; }
        .page:target { display: block; }

        /* 테이블 게시판 영역 */
        .tb2 { display:table; width: 100%; border-collapse: collapse; margin-bottom: 28px; margin: 0 auto; margin-bottom: 50px;}
        .tb2 tr { display:table-row; }
        .tb2 th, .tb2 td { display: table-cell; border-bottom: 1px solid #333; line-height: 40px;} 
        .tb2 .d1, .tb2 .d3 { background-color: #eee }
        .tb2 td { padding-left: 1em; }
        .tb2 tr:first-child th, .tb2 tr td:first-child td { border-top: 2px solid #333; }
        
        /* ul>li 게시판 영역 */
        .tb3 { display: table; width: 700px; margin: 0 auto; margin-bottom: 80px; }
        .tb3 .tr { display: table-row; }
        .tb3 .th, .tb3 .td { display: table-cell; border-bottom: 2px solid darkorchid; line-height: 70px;}
        .tb3 .tr:first-child .th, .tb3 .tr:first-child .td { border-top: 3px solid deepskyblue; }
        .tb3 .th { text-align: center; font-weight: bold; }
        .tb3 .td { padding-left: 20px; }
        .tb3 .tr:last-child .th, .tb3 .tr:last-child .td { border-bottom:  3px solid deeppink;}
        .tb3 .th.e1, .tb3 .td.e2, .tb3 .th.e3 { border-right: 1px solid #333;  }
        
        /* 썸네일 목록1 */
        .lst1 { clear: both; width: 1200px; margin: 0 auto;}
        .lst1:after { content: ""; display: block; width: 100%; clear: both;}
        .lst1 li { float: left; width: 300px; height: 300px; overflow: hidden; box-sizing: border-box; }
        .lst1 li.tit { background-color: antiquewhite; color: #333; font-size: 80px; text-align: center; line-height: 300px; font-weight: bold; } 

        /* 썸네일 목록2 */
        .lst2 { clear: both; width: 1260px; margin: 0 auto; margin-bottom: 100px; }
        .lst2:after { content: ""; display: block; width: 100%; clear: both; }
        .lst2 li { width: 400px; height: 400px; float: left; margin-right: 30px; overflow: hidden; box-sizing: border-box; background-repeat: no-repeat; 
        background-position: center center; background-size: 100% 100%; }

        .lst2 li:nth-child(3n){ margin-right: 0; }   /* 리스트 아이템1~9 주고 마지막에 */

        .lst2 ls.item1 { background-image: url();}
        .lst2 ls.item2 { background-image: url();}
        .lst2 ls.item3 { background-image: url();}
        .lst2 ls.item4 { background-image: url();}
        .lst2 ls.item5 { background-image: url();}
        .lst2 ls.item6 { background-image: url();}
        .lst2 ls.item7 { background-image: url();}
        .lst2 ls.item8 { background-image: url();}
        .lst2 ls.item9 { background-image: url();}

        /* 아이콘 리스트1 이미지*/
        .lst3 { clear: both; width: 360px; margin: 0 auto; margin-bottom: 100px; }
        .lst3:after { content: ""; display: block; width: 100%; clear: both; }
        .lst3 li { float: left; width: 60px; height: 60px; line-height: 60px; text-align: center;}

        /* 아이콘 리스트2 백그라운드이미지*/
        .lst4 { clear: both; width: 360px; margin: 0 auto; margin-bottom: 100px; }
        .lst4:after { content: ""; display: block; width: 100%; clear: both; }
        .lst4 li { float: left; width: 60px; height: 60px; line-height: 60px; text-align: center; background-position: center center; background-repeat: no-repeat;}
        .lst4 li.item1 { background-image: url(); } 
        .lst4 li.item2 { background-image: url(); } 
        .lst4 li.item3 { background-image: url(); } 
        .lst4 li.item4 { background-image: url(); } 
        .lst4 li.item5 { background-image: url(); } 
        .lst4 li.item6 { background-image: url(); } 

        /* 아이콘(셋) 리스트3 --- 대세야~~~!!! */
        .lst5 { clear: both; width: 240px; margin: 0 auto; margin-bottom: 100px; }
        .lst5:after { content: ""; display: block; width: 100%; clear: both; }
        .lst5 li { float: left; width: 40px; height: 40px; line-height: 40px; text-align: center; background-repeat: no-repeat; background-image: url();}
        .lst5 li.item1 { background-position: 0 0; }
        .lst5 li.item2 { background-position: -40px -40px; }
        .lst5 li.item3 { background-position:  }
        .lst5 li.item4 { background-position:  }
        .lst5 li.item5 { background-position:  }
        .lst5 li.item6 { background-position:  }
        </style>
</head>

<body>
	<div class="wrap">
		<header id="hd">
			<%@ include file="nav.jsp" %>
		</header>
		
		 <div id="content">
	            <div class="content_wrap">
	            <section id="page1" class="page">
	                <figure class="sub_ban">
	                    <img src="./Img/model_sub.jpg" alt="서브배너">
	                    <div class="tit_box">
	                        <h2 class="sub_tit">서브타이틀1</h2>
	                        <p class="sub_com">서브타이틀1의 설명을 기입하시기 바랍니다.</p>
	                    </div>
	                </figure>
	                <div class="bread_box">
	                    <div class="bread_wrap">
	                     <a href="">Home</a><a href="">메인메뉴</a>
	                     <select name="sel" id="sel">
	                         <option value="model.html#page1" selected>전체모델보기</option>
	                         <option value="model.html#page2">모델비교</option>
	                     </select>
	                    </div>
	                </div>
	                <div class="con_wrap">
	                    <div class="page_wrap">
	                        <h2 class="page_tit">전체모델보기</h2>
	                    </div>
	                </div>
	            </section>
	            <section id="page2" class="page">
	                <figure class="sub_ban"><img src="./Img/model_sub02.jpg" alt="서브배너"></figure>
	                <div class="bread_box">
	                    <div class="bread_wrap">
	                     <a href="">Home</a><a href="">메인메뉴</a>
	                     <select name="sel" id="sel">
	                         <option value="model.html#page1">전체모델보기</option>
	                         <option value="model.html#page2" selected>모델비교</option>
	                     </select>
	                    </div>
	                </div>
	                <div class="con_wrap">
	                    <div class="page_wrap">
	                        <h2 class="page_tit">모델비교</h2>
	                    </div>
	                </div>
	            </section>
	        </div>
	        <div class="page_wrap">
	            <h3 class="sec_tit">테이블 게시판 생성</h3>
	            <table class="tb2">
	                <tbody>
	                    <tr>
	                        <th class="d1">항목명</th>
	                        <th class="d2">항목데이터</th>
	                        <th class="d3">항목명</th>
	                        <th class="d4">항목데이터</th>
	                    </tr>
	                    <tr>
	                        <th class="d1">항목명</th>
	                        <th class="d2">항목데이터</th>
	                        <th class="d3">항목명</th>
	                        <th class="d4">항목데이터</th>
	                    </tr>
	                    <tr>
	                        <th class="d1">항목명</th>
	                        <th class="d2">항목데이터</th>
	                        <th class="d3">항목명</th>
	                        <th class="d4">항목데이터</th>
	                    </tr>
	                    <tr>
	                        <th class="d1">항목명</th>
	                        <th class="d2">항목데이터</th>
	                        <th class="d3">항목명</th>
	                        <th class="d4">항목데이터</th>
	                    </tr>
	                </tbody>
	            </table>
	        </div>
	        <div class="page_wrap">
	            <h3>게시판 생성</h3>
	            <div class="tb3">
	                <ul class="tr">
	                    <li class="th e1">항목명</li>
	                    <li class="td e2">항목 내용</li>
	                    <li class="th e3">항목명</li>
	                    <li class="td e4">항목 내용</li>
	                </ul>
	                <ul class="tr">
	                    <li class="th e1">항목명</li>
	                    <li class="td e2">항목 내용</li>
	                    <li class="th e3">항목명</li>
	                    <li class="td e4">항목 내용</li>
	                </ul>
	                <ul class="tr">
	                    <li class="th e1">항목명</li>
	                    <li class="td e2">항목 내용</li>
	                    <li class="th e3">항목명</li>
	                    <li class="td e4">항목 내용</li>
	                </ul>
	                <ul class="tr">
	                    <li class="th e1">항목명</li>
	                    <li class="td e2">항목 내용</li>
	                    <li class="th e3">항목명</li>
	                    <li class="td e4">항목 내용</li>
	                </ul>
	                <ul class="tr">
	                    <li class="th e1">항목명</li>
	                    <li class="td e2">항목 내용</li>
	                    <li class="th e3">항목명</li>
	                    <li class="td e4">항목 내용</li>
	                </ul>
	            </div>
	        </div>
	        <div class="page_wrap">
	            <h2 class="page_tit">페이지 제목</h2>
	            <h3 class="sec_tit">썸네일 제목</h3>
	            <ul class="lst1">
	                <li class="tit"></li>
	                <li class="item2"></li>
	                <li class="item3"></li>
	                <li class="item4"></li>
	                <li class="blank_box">썸1</li>
	                <li class="item6"></li>
	                <li class="item7"></li>
	                <li class="item8"></li>
	                <li class="item9"></li>
	                <li class="blank_box">썸2</li>
	                <li class="item11"></li>
	                <li class="item12"></li>
	                <li class="item13"></li>
	                <li class="item14"></li>
	            </ul>
	        </div>
	        <div class="page_wrap">
	            <h2 class="page_tit">페이지 제목</h2>
	            <h3 class="sec_tit">썸네일 제목</h3>
	            <ul class="lst2">
	                <li class="item1"></li>
	                <li class="item2"></li>
	                <li class="item3"></li>
	                <li class="item4"></li>
	                <li class="item5"></li>
	                <li class="item6"></li>
	                <li class="item7"></li>
	                <li class="item8"></li>
	                <li class="item9"></li>
	            </ul>
	        </div>
	        <div class="page_wrap">
	            <h2 class="page_tit">페이지 제목</h2>
	            <h3 class="sec_tit">썸네일 제목</h3>
	            <ul class="lst3">
	                <li class="item1"><a href=""></a></li>
	                <li class="item2"><a href=""></a></li>
	                <li class="item3"><a href=""></a></li>
	                <li class="item4"><a href=""></a></li>
	                <li class="item5"><a href=""></a></li>
	                <li class="item6"><a href=""></a></li>
	                <li class="item7"><a href=""></a></li>
	                <li class="item8"><a href=""></a></li>
	                <li class="item9"><a href=""></a></li>
	            </ul>
	        </div>
	        <div class="page_wrap">
	            <h2 class="page_tit">페이지 제목</h2>
	            <h3 class="sec_tit">썸네일 제목</h3>
	            <ul class="lst4">
	                <li class="item1"></li>
	                <li class="item2"></li>
	                <li class="item3"></li>
	                <li class="item4"></li>
	                <li class="item5"></li>
	                <li class="item6"></li>
	                <li class="item7"></li>
	                <li class="item8"></li>
	                <li class="item9"></li>
	            </ul>
	        </div>
	    </div>
	</div>
	
    <footer id="ft">
    	<%@ include file="ft.jsp" %>
    </footer>
	
</body>