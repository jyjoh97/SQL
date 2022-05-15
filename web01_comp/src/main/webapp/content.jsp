<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="vs">
    <ul class="img_box">
        <li>
            <a href="">
                <img src="./Img/premiere_img01.jpg" alt="메인비주얼" class="pic">
                <div class="tit_box">
                    <h2 class="vs_tit">메인비주얼1</h2>
                    <p>메인비주얼1에 대한 설명을 기입하시기 바랍니다..</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <img src="./Img/premiere_img02.jpg" alt="메인비주얼" class="pic">
                <div class="tit_box">
                    <h2 class="vs_tit">메인비주얼2</h2>
                    <p>메인비주얼2에 대한 설명을 기입하시기 바랍니다..</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <img src="./Img/premiere_img03.jpg" alt="메인비주얼" class="pic">
                <div class="tit_box">
                    <h2 class="vs_tit">메인비주얼3</h2>
                    <p>메인비주얼3에 대한 설명을 기입하시기 바랍니다..</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <img src="./Img/premiere_img04.jpg" alt="메인비주얼" class="pic">
                <div class="tit_box">
                    <h2 class="vs_tit">메인비주얼4</h2>
                    <p>메인비주얼4에 대한 설명을 기입하시기 바랍니다..</p>
                </div>
            </a>
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
                intv = setInterval(function(){ ani1(); }, 5000);
            });
            $(".btn_group .prev_btn").click(function(){
                clearInterval(intv);
                ani2();
                intv = setInterval(function(){ ani1(); }, 5000);
            });
        });    
        </script>
</div>
<div class="grid_box">
    <ul class="grid_wrap">
        <li class="col2 item1">
            <a href="">
                <h3 class="col_tit">내 차 만들기 & 견적</h3>
                <p class="col_com">내 차 만들기 & 견적에 대한 설명을 입력하시기 바랍니다.</p>
                <span class="arrow"></span>
            </a>
        </li>
        <li class="col2 item2">
            <a href="">
                <h3 class="col_tit">맞춤형 금융계산기</h3>
                <p class="col_com">맞춤형 금융계산기에 대한 설명을 입력하시기 바랍니다.</p>
                <span class="arrow"></span>
            </a>
        </li>
        <li class="col2 item3">
            <a href="">
                <h3 class="col_tit">모델비교</h3>
                <p class="col_com">모델비교에 대한 설명을 입력하시기 바랍니다.</p>
                <span class="arrow"></span>
            </a>
        </li>
        <li class="col2 item4">
            <a href="">
                <h3 class="col_tit">가격표&카탈로그</h3>
                <p class="col_com">가격표&카탈로그에 대한 설명을 입력하시기 바랍니다.</p>
                <span class="arrow"></span>                            
            </a>
        </li>
        <li class="col2 item5">
            <a href="">
                <h3 class="col_tit">자동차 모델명</h3>
                <p class="col_com"></p>
                <span class=""></span>    
            </a>
        </li>
        <li class="col2 item6">
            <a href="">
                <h3 class="col_tit">자동차 모델명</h3>
                <p class="col_com"></p>
                <span class=""></span>                              
            </a>
        </li>
    </ul>
</div>