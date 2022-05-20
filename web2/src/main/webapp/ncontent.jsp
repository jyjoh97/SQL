<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.goyang.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<NoticeVO> ntv = (List<NoticeVO>) request.getAttribute("ntv");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div class="content">
            <div id="content_wrap">
                <section class="page" id="page1">
                    <figure class="sub_ban">
                        <img src="./image/lineage.png" alt="리니지">
                        <div class="tit_box">
                            <h2 class="sub_tit">리니지</h2>
                            <p class="sub_com">1998년 출시한 중세 판타지 시대 배경의 MMORPG이자
                                국내 최초의 인테넛 기반 온라인 게임인 리니지.<br>2008년 단일 게임 최초로 누적 매출
                                1조원을 달성하고 혈맹 시스템과 공성전 등 MMORPG의 기틀을 마련하며<br> 20년이 지난
                                지금까지 대한민국을 대표하는 온라인 문화 콘텐츠로 막강한 영향력을 발휘하고 있다.
                            </p>
                        </div>
                    </figure>
                    </div>
                    <div class="page_con">
                        <div class="page_wrap">
                            <h2 class="sec_tit">대한민국 온라인 게임의 역사를 연<br>MMORPG의 표준</h2>
                            <ul class="pro_lst">
                                <li>
                                    <img src="./image/lng1.png" alt="리니지-1" class="lng">
                                </li>
                                <li>
                                    <p class="pro_para">대한민국 온라인 게임의 성장과 발전을 이끈 대표 게임으로</p>
                                    <p class="pro_para">군주 중심의 혈맹과 대규모 전투인 공성전, 무기 강화 시스템 등</p>
                                    <p class="pro_para">리니지가 새롭게 창조한 특유의 시스템과 콘텐츠는</p>
                                    <p class="pro_para">이후 탄생한 수많은 MMORPG의 표준이 됐다.</p>
                                </li>
                            </ul>
                        </div>
                        <div class="page_wrap">
                            <div class="page_wrap">
                                <h2 class="sec_tit">세계 최초의 대규모 RvR<br>공성전</h2>
                                <ul class="pro_lst">
                                    <li>
                                        <img src="./image/lng2.jpg" alt="리니지-2" class="lng1">
                                    </li>
                                    <li>
                                        <p class="pro_para">리니지가 세계 최초로 도입한 RvR 콘텐츠인 공성전은</p>
                                        <p class="pro_para">성을 쟁탈하기 위한 혈맹 간의 대규모 전투 시스템이다.</p>
                                        <p class="pro_para">협동과 대립을 통해 동일한 목표를 달성하는 과정에서</p>
                                        <p class="pro_para">MMORPG의 핵심 재미를 구현해낸 공성전은</p>
                                        <p class="pro_para">한국 온라인 게임의 특화된 전투 방식으로 확립됐다.</p>
                                    </li>
                                </ul>
                            </div>
                        <div class="page_wrap">
                            <div class="page_wrap">
                                <h2 class="sec_tit">온·오프라인을 휩쓴<br>리니지 신드롬</h2>
                                <ul class="pro_lst">
                                    <li>
                                        <img src="./image/lng3.png" alt="리니지-3" class="lng">
                                    </li>
                                    <li>
                                        <p class="pro_para">1998년 출시 직후부터 사회적 열풍을 일으킨 리니지는</p>
                                        <p class="pro_para">서비스 개시 후 15개월 만에 100만 명의 회원을 달성하고</p>
                                        <p class="pro_para">2016년에는 누적 매출 3조 원을 돌파하는 등 기록을 갱신해왔다.</p>
                                        <p class="pro_para">아덴 왕국이라는 가상 세계에서 새로운 자아를 찾고</p>
                                        <p class="pro_para">플레이어들의 자발적인 힘으로 연대의 스토리를 만들어 나가는</p>
                                        <p class="pro_para">새롭고도 충격적인 문화적 경험은 온·오프라인의 경계를 넘어</p>
                                        <p class="pro_para">리니지만의 고유한 사회화 현상으로 이어져오고 있다.</p>
                                    </li>
                                </ul>
                            </div>
                    </div>
                </section>
</body>
</html>