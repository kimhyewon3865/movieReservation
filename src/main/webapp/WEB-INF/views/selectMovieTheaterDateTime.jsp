<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 25.
  Time: AM 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/selectMovieTheaterDateTime.css">
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/nicescroll/3.5.4/jquery.nicescroll.js'></script>
    <script src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
</head>
<body>
<div class="nav">
    <ul>
        <li class="homeLeftFloat">
            <a href="#">hyewon's Movie Reservation</a>
        </li>
        <li>
            <a href="#" class="dropbtn" onclick="">logout</a>
        </li>
        <li>
            <a href="#" class="dropbtn" onclick="">상영중인 영화</a>
        </li>
        <li>
            <a href="cancelReservation" class="dropbtn" onclick="">예약내역/취소</a>
        </li>
        <li>
            <a href="selectMovieTheaterDateTime" onclick="">예약</a>
        </li>
    </ul>
</div>
<div class="select-movie-theater-date-time-Section">

    <div class="section section-movie">
        <!-- col-head -->
        <div class="col-head" id="skip_movie_list">
            <h3 class="sreader">영화</h3>
            <%--<a href="#" class="skip_to_something" onclick="skipToSomething('skip_theater_list');return false;">영화선택 건너뛰기</a>--%>
        </div>
        <!-- col-body -->
        <div class="col-body">
            <!-- 영화선택 -->
            <div class="movie-select">
                <div class="tabmenu">
                    <span class="side on"></span>
                    <%--<a href="#" class="button menu1 selected">전체</a>--%>
                    <span class="side on"></span>
                    <%--<div class="movie-list nano has-scrollbar-y" id="movie_list" style="height: 300px;">--%>
                        <%--<ul class="content scroll-y" onscroll="movieSectionScrollEvent();" tabindex="-1">--%>
                            <%--<li class="rating-12" data-index="0" movie_cd_group="20012926" movie_idx="79598" onclick="setSelectedMovie(0)">--%>
                                    <%--캐리비안의해적-죽은자는말이없다--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                    <div class="movie-list nano has-scrollbar-y" id="movie_list" style="height: 300px;">
                        <ul class="content scroll-y" tabindex="-1">
                            <li>
                                <input type="radio" name="movie" id="movie1" onclick="setSelectedMovie(0)" checked>
                                <label for="movie1"> 캐리비안의해적-죽은자는말이없다 </label>
                            </li>
                            <li>
                                <input type="radio" name="movie" id="movie2" onclick="setSelectedMovie(1)">
                                <label for="movie2"> 노무현입니다 </label>
                            </li>
                            <li>
                                <input type="radio" name="movie" id="movie3" onclick="setSelectedMovie(2)">
                                <label for="movie3"> 겟아웃 </label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--극장--%>
    <div class="section section-theater">
        <div class="col-head" id="skip_theater_list">
            <h3 class="sreader">극장</h3>
        </div>
        <div class="col-body">
            <!-- 극장선택 -->
            <div class="theater-select">
                <div class="theater-list" style="height: 300px;">
                    <div class="theater-area-list" id="theater_area_list">
                        <ul>
                            <li class="selected">
                                <a href="#" onclick="return;">
                                    <span class="name">서울</span>
                                    <span class="count">(18)</span>
                                </a>

                                <div class="area_theater_list nano has-scrollbar-y" style="height: 388px;">
                                    <%--<ul class="content scroll-y" tabindex="-1">--%>
                                        <%--<li class="" data-index="1" areaindex="0" theater_cd="0060" rating_cd="undefined" style="display: list-item;">--%>
                                            <%--<a href="#" onclick="setSelectedTeahterId(0)">강동<span class="sreader"></span></a>--%>
                                        <%--</li>--%>

                                        <%--<li class="" data-index="3" areaindex="0" theater_cd="0001" rating_cd="undefined" style="display: list-item;">--%>
                                            <%--<a href="#" onclick="setSelectedTeahterId(1)" title="강변역 테크노마트">강변<span class="sreader"></span></a>--%>
                                        <%--</li>--%>

                                        <%--<li class="" data-index="14" areaindex="0" theater_cd="0010" rating_cd="undefined" style="display: list-item;">--%>
                                            <%--<a href="#" onclick="setSelectedTeahterId(2)">구로<span class="sreader"></span></a>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>


                                        <ul class="content scroll-y" tabindex="-1">
                                            <li class="" data-index="1" areaindex="0" theater_cd="0060" rating_cd="undefined" style="display: list-item;">
                                                <input type="radio" name="area_theater" id="area_theater1" onclick="setSelectedTeahterId(0)">
                                                <label for="area_theater1">강동 </label>
                                            </li>

                                            <li class="" data-index="3" areaindex="0" theater_cd="0001" rating_cd="undefined" style="display: list-item;">
                                                <input type="radio" name="area_theater" id="area_theater2" onclick="setSelectedTeahterId(1)">
                                                <label for="area_theater2">강변 </label>
                                            </li>

                                            <li class="" data-index="14" areaindex="0" theater_cd="0010" rating_cd="undefined" style="display: list-item;">
                                                <input type="radio" name="area_theater" id="area_theater3" onclick="setSelectedTeahterId(2)">
                                                <label for="area_theater3">구로</label>
                                            </li>
                                        </ul>





                                        <%--<li class="" data-index="18" areaindex="0" theater_cd="0095" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">군자<span class="sreader"></span></a></li><li class="" data-index="42" areaindex="0" theater_cd="0063" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대학로<span class="sreader"></span></a></li><li class="" data-index="49" areaindex="0" theater_cd="0009" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="눈스퀘어 8층">명동<span class="sreader"></span></a></li><li class="" data-index="51" areaindex="0" theater_cd="0011" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">목동<span class="sreader"></span></a></li><li class="" data-index="60" areaindex="0" theater_cd="0030" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">불광<span class="sreader"></span></a></li><li class="" data-index="63" areaindex="0" theater_cd="0014" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">상암<span class="sreader"></span></a></li><li class="" data-index="75" areaindex="0" theater_cd="0072" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">신도림<span class="sreader"></span></a></li><li class="" data-index="76" areaindex="0" theater_cd="0150" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">신촌아트레온<span class="sreader"></span></a></li><li class="" data-index="86" areaindex="0" theater_cd="0059" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">영등포<span class="sreader"></span></a></li><li class="" data-index="109" areaindex="0" theater_cd="0131" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="홈플러스 중계점 8층">중계<span class="sreader"></span></a></li><li class="" data-index="115" areaindex="0" theater_cd="0199" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">천호<span class="sreader"></span></a></li><li class="" data-index="130" areaindex="0" theater_cd="0223" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">피카디리1958<span class="sreader"></span></a></li><li class="" data-index="131" areaindex="0" theater_cd="0164" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="건영백화점 B1층">하계<span class="sreader"></span></a></li><li class="" data-index="134" areaindex="0" theater_cd="0191" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">홍대<span class="sreader"></span></a></li><li class="" data-index="140" areaindex="0" theater_cd="P001" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">CINE de CHEF 압구정<span class="sreader"></span></a></li><li class="dimmed" data-index="0" areaindex="0" theater_cd="0056" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">강남<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="50" areaindex="0" theater_cd="0105" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="명동역 7,8번 출구">명동역 씨네라이브러리<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="53" areaindex="0" theater_cd="0057" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">미아<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="62" areaindex="0" theater_cd="0046" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">상봉<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="67" areaindex="0" theater_cd="0083" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">성신여대입구<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="71" areaindex="0" theater_cd="0088" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">송파<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="80" areaindex="0" theater_cd="0040" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">압구정<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="84" areaindex="0" theater_cd="0112" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">여의도<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="88" areaindex="0" theater_cd="0074" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">왕십리<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="116" areaindex="0" theater_cd="0107" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청담씨네시티<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px; top: 0px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">경기</span><span class="count">(23)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="20" areaindex="1" theater_cd="0177" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="CGV김포는 경기도 사우동의 (구)프리머스 영화관입니다.">김포<span class="sreader"></span></a></li><li class="" data-index="21" areaindex="1" theater_cd="0188" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김포운양<span class="sreader"></span></a></li><li class="" data-index="45" areaindex="1" theater_cd="0124" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">동백<span class="sreader"></span></a></li><li class="" data-index="47" areaindex="1" theater_cd="0106" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="메타폴리스 A블럭">동탄<span class="sreader"></span></a></li><li class="" data-index="55" areaindex="1" theater_cd="0015" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="현대백화점 5층">부천<span class="sreader"></span></a></li><li class="" data-index="58" areaindex="1" theater_cd="0049" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">북수원<span class="sreader"></span></a></li><li class="" data-index="61" areaindex="1" theater_cd="0242" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">산본<span class="sreader"></span></a></li><li class="" data-index="70" areaindex="1" theater_cd="0143" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">소풍<span class="sreader"></span></a></li><li class="" data-index="74" areaindex="1" theater_cd="0073" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">시흥<span class="sreader"></span></a></li><li class="" data-index="79" areaindex="1" theater_cd="0211" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">안산<span class="sreader"></span></a></li><li class="" data-index="81" areaindex="1" theater_cd="0003" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">야탑<span class="sreader"></span></a></li><li class="" data-index="85" areaindex="1" theater_cd="0029" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">역곡<span class="sreader"></span></a></li><li class="" data-index="87" areaindex="1" theater_cd="0004" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">오리<span class="sreader"></span></a></li><li class="" data-index="93" areaindex="1" theater_cd="0113" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="신세계 백화점 10층">의정부<span class="sreader"></span></a></li><li class="" data-index="94" areaindex="1" theater_cd="0187" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="센트럴타워 15층">의정부태흥<span class="sreader"></span></a></li><li class="" data-index="95" areaindex="1" theater_cd="0205" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">이천<span class="sreader"></span></a></li><li class="" data-index="102" areaindex="1" theater_cd="0054" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">일산<span class="sreader"></span></a></li><li class="" data-index="108" areaindex="1" theater_cd="0055" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">죽전<span class="sreader"></span></a></li><li class="" data-index="125" areaindex="1" theater_cd="0195" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평촌<span class="sreader"></span></a></li><li class="" data-index="126" areaindex="1" theater_cd="0052" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평택<span class="sreader"></span></a></li><li class="" data-index="127" areaindex="1" theater_cd="0190" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평택비전<span class="sreader"></span></a></li><li class="" data-index="128" areaindex="1" theater_cd="0214" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">평택소사<span class="sreader"></span></a></li><li class="" data-index="137" areaindex="1" theater_cd="0145" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">화정<span class="sreader"></span></a></li><li class="dimmed" data-index="6" areaindex="1" theater_cd="0182" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="철산역 1번 출구">광명철산<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="15" areaindex="1" theater_cd="0232" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">구리<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="22" areaindex="1" theater_cd="0126" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="풍무동 홈플러스">김포풍무<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="46" areaindex="1" theater_cd="0041" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="인계동 씨네파크 7층">동수원<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="54" areaindex="1" theater_cd="0155" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="범계역 뉴코아아울렛">범계<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="56" areaindex="1" theater_cd="0194" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="부천역 3번출구에 있습니다.">부천역<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="66" areaindex="1" theater_cd="0196" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서현<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="72" areaindex="1" theater_cd="0012" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">수원<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="123" areaindex="1" theater_cd="0148" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">파주문산<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="124" areaindex="1" theater_cd="0181" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">판교<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="138" areaindex="1" theater_cd="K049" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">CINE KIDS 북수원<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">인천</span><span class="count">(6)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="5" areaindex="2" theater_cd="0043" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">계양<span class="sreader"></span></a></li><li class="" data-index="25" areaindex="2" theater_cd="0198" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="주안역 8번 출구 아이하니 9층 ">남주안<span class="sreader"></span></a></li><li class="" data-index="57" areaindex="2" theater_cd="0021" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="청천동 아이즈빌 아울렛">부평<span class="sreader"></span></a></li><li class="" data-index="97" areaindex="2" theater_cd="0002" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="구월동 홈플러스">인천<span class="sreader"></span></a></li><li class="" data-index="100" areaindex="2" theater_cd="0141" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">인천연수<span class="sreader"></span></a></li><li class="" data-index="107" areaindex="2" theater_cd="0027" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">주안역<span class="sreader"></span></a></li><li class="dimmed" data-index="98" areaindex="2" theater_cd="0118" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">인천공항<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="99" areaindex="2" theater_cd="0197" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="호구포역 2번 출구">인천논현<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="101" areaindex="2" theater_cd="0036" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="관교동 신세계백화점">인천터미널<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">강원</span><span class="count">(4)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="2" areaindex="3" theater_cd="0139" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">강릉<span class="sreader"></span></a></li><li class="" data-index="90" areaindex="3" theater_cd="0144" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">원주<span class="sreader"></span></a></li><li class="" data-index="121" areaindex="3" theater_cd="0070" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">춘천<span class="sreader"></span></a></li><li class="" data-index="122" areaindex="3" theater_cd="0189" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">춘천명동<span class="sreader"></span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">대전/충청</span><span class="count">(14)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="27" areaindex="4" theater_cd="0207" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">당진<span class="sreader"></span></a></li><li class="" data-index="38" areaindex="4" theater_cd="0007" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전<span class="sreader"></span></a></li><li class="" data-index="39" areaindex="4" theater_cd="0154" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전가오<span class="sreader"></span></a></li><li class="" data-index="40" areaindex="4" theater_cd="0202" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전탄방<span class="sreader"></span></a></li><li class="" data-index="41" areaindex="4" theater_cd="0127" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대전터미널<span class="sreader"></span></a></li><li class="" data-index="65" areaindex="4" theater_cd="0091" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서산<span class="sreader"></span></a></li><li class="" data-index="68" areaindex="4" theater_cd="0219" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">세종<span class="sreader"></span></a></li><li class="" data-index="92" areaindex="4" theater_cd="0209" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">유성온천<span class="sreader"></span></a></li><li class="" data-index="113" areaindex="4" theater_cd="0044" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="천안역 1번 출구">천안<span class="sreader"></span></a></li><li class="" data-index="114" areaindex="4" theater_cd="0110" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="불당동 펜타포트(천안아산역)">천안펜타포트<span class="sreader"></span></a></li><li class="" data-index="117" areaindex="4" theater_cd="0142" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주지웰시티<span class="sreader"></span></a></li><li class="" data-index="118" areaindex="4" theater_cd="0183" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주터미널<span class="sreader"></span></a></li><li class="" data-index="119" areaindex="4" theater_cd="0084" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주(북문)<span class="sreader"></span></a></li><li class="" data-index="120" areaindex="4" theater_cd="0228" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">청주(서문)<span class="sreader"></span></a></li><li class="dimmed" data-index="91" areaindex="4" theater_cd="0206" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">유성노은<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="135" areaindex="4" theater_cd="0217" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">홍성<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">대구</span><span class="count">(7)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="28" areaindex="5" theater_cd="0058" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="중앙로역 영플라자 5층">대구<span class="sreader"></span></a></li><li class="" data-index="29" areaindex="5" theater_cd="0157" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구수성<span class="sreader"></span></a></li><li class="" data-index="30" areaindex="5" theater_cd="0108" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구스타디움<span class="sreader"></span></a></li><li class="" data-index="32" areaindex="5" theater_cd="0216" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구월성<span class="sreader"></span></a></li><li class="" data-index="33" areaindex="5" theater_cd="0117" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구이시아<span class="sreader"></span></a></li><li class="" data-index="35" areaindex="5" theater_cd="0147" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="동성로광장 진입로">대구한일<span class="sreader"></span></a></li><li class="" data-index="36" areaindex="5" theater_cd="0109" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="현대백화점 지하 2층">대구현대<span class="sreader"></span></a></li><li class="dimmed" data-index="31" areaindex="5" theater_cd="0185" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="중앙로역 2번 출구">대구아카데미<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="34" areaindex="5" theater_cd="0071" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대구칠곡<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">부산/울산</span><span class="count">(11)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="26" areaindex="6" theater_cd="0065" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">남포<span class="sreader"></span></a></li><li class="" data-index="37" areaindex="6" theater_cd="0061" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대연<span class="sreader"></span></a></li><li class="" data-index="44" areaindex="6" theater_cd="0042" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">동래<span class="sreader"></span></a></li><li class="" data-index="64" areaindex="6" theater_cd="0005" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">서면<span class="sreader"></span></a></li><li class="" data-index="69" areaindex="6" theater_cd="0089" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">센텀시티<span class="sreader"></span></a></li><li class="" data-index="77" areaindex="6" theater_cd="0160" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">아시아드<span class="sreader"></span></a></li><li class="" data-index="89" areaindex="6" theater_cd="0128" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="삼산동">울산삼산<span class="sreader"></span></a></li><li class="" data-index="132" areaindex="6" theater_cd="0245" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">하단<span class="sreader"></span></a></li><li class="" data-index="133" areaindex="6" theater_cd="0212" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">해운대<span class="sreader"></span></a></li><li class="" data-index="136" areaindex="6" theater_cd="0159" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">화명<span class="sreader"></span></a></li><li class="" data-index="139" areaindex="6" theater_cd="P004" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">CINE de CHEF 센텀시티<span class="sreader"></span></a></li><li class="dimmed" data-index="43" areaindex="6" theater_cd="0151" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">대한<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">경상</span><span class="count">(12)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="4" areaindex="7" theater_cd="0102" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">거제<span class="sreader"></span></a></li><li class="" data-index="16" areaindex="7" theater_cd="0053" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">구미<span class="sreader"></span></a></li><li class="" data-index="19" areaindex="7" theater_cd="0240" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김천율곡<span class="sreader"></span></a></li><li class="" data-index="23" areaindex="7" theater_cd="0028" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김해<span class="sreader"></span></a></li><li class="" data-index="48" areaindex="7" theater_cd="0033" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">마산<span class="sreader"></span></a></li><li class="" data-index="59" areaindex="7" theater_cd="0097" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="포항시 북구 덕산동">북포항<span class="sreader"></span></a></li><li class="" data-index="78" areaindex="7" theater_cd="0204" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">안동<span class="sreader"></span></a></li><li class="" data-index="82" areaindex="7" theater_cd="0222" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">양산물금<span class="sreader"></span></a></li><li class="" data-index="110" areaindex="7" theater_cd="0081" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">진주<span class="sreader"></span></a></li><li class="" data-index="111" areaindex="7" theater_cd="0023" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">창원<span class="sreader"></span></a></li><li class="" data-index="112" areaindex="7" theater_cd="0079" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">창원더시티<span class="sreader"></span></a></li><li class="" data-index="129" areaindex="7" theater_cd="0045" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;" title="포항시 남구 상도동">포항<span class="sreader"></span></a></li><li class="dimmed" data-index="24" areaindex="7" theater_cd="0239" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">김해장유<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">광주/전라/제주</span><span class="count">(14)</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"><li class="" data-index="7" areaindex="8" theater_cd="0220" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광양<span class="sreader"></span></a></li><li class="" data-index="8" areaindex="8" theater_cd="0221" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광양아울렛<span class="sreader"></span></a></li><li class="" data-index="9" areaindex="8" theater_cd="0193" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주상무<span class="sreader"></span></a></li><li class="" data-index="10" areaindex="8" theater_cd="0210" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주용봉<span class="sreader"></span></a></li><li class="" data-index="11" areaindex="8" theater_cd="0218" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주첨단<span class="sreader"></span></a></li><li class="" data-index="12" areaindex="8" theater_cd="0244" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주충장로<span class="sreader"></span></a></li><li class="" data-index="13" areaindex="8" theater_cd="0090" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">광주터미널<span class="sreader"></span></a></li><li class="" data-index="17" areaindex="8" theater_cd="0087" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">군산<span class="sreader"></span></a></li><li class="" data-index="52" areaindex="8" theater_cd="0026" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">목포<span class="sreader"></span></a></li><li class="" data-index="83" areaindex="8" theater_cd="0208" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">여수웅천<span class="sreader"></span></a></li><li class="" data-index="96" areaindex="8" theater_cd="0020" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">익산<span class="sreader"></span></a></li><li class="" data-index="103" areaindex="8" theater_cd="0213" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">전주고사<span class="sreader"></span></a></li><li class="" data-index="104" areaindex="8" theater_cd="0179" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">전주효자<span class="sreader"></span></a></li><li class="" data-index="106" areaindex="8" theater_cd="0121" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">제주<span class="sreader"></span></a></li><li class="dimmed" data-index="73" areaindex="8" theater_cd="0114" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">순천<span class="sreader">선택불가</span></a></li><li class="dimmed" data-index="105" areaindex="8" theater_cd="0186" rating_cd="undefined" style="display: list-item;"><a href="#" onclick="theaterListClickListener(event);return false;">정읍<span class="sreader">선택불가</span></a></li></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li>--%>
                            <%--<li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">&nbsp;</span><span class="count">&nbsp;</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li><li><a href="#" onclick="theaterAreaClickListener(event);return false;"><span class="name">&nbsp;</span><span class="count">&nbsp;</span></a><div class="area_theater_list nano" style="height: 388px;"><ul class="content scroll-y" tabindex="-1"></ul><div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div></li></ul>--%>
                                </div>
                            </li>
                        </ul>
                    <div class="theater-cgv-list nano" id="theater_cgv_list">
                        <ul class="content scroll-y" tabindex="-1"></ul>
                        <div class="pane pane-y" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>


    <%--날짜--%>
    <div class="section section-date">
        <div class="col-head" id="skip_date_list">
            <h3 class="sreader">날짜</h3>
        </div>
        <div class="col-body">
            <!-- 날짜선택 -->
            <div class="date-list nano has-scrollbar-y" id="date_list" style="height: 522px;">
                <%--<ul class="content scroll-y" tabindex="-1">--%>
                    <ul>

                    <%--<div>--%>
                        <%--<li class="month dimmed">--%>
                            <%--<div>--%>
                                <%--<span class="year">2017</span>--%>
                                <%--<span class="month">5</span>--%>
                            <%--</div>--%>
                        <%--</li>--%>

                        <%--<li data-index="0" date="20170525" class="day">--%>
                            <%--<a href="#" onclick="setSelectedDate('20170525')">--%>
                                <%--<span class="dayweek">목</span>--%>
                                <%--<span class="day">25</span><span class="sreader"></span>--%>
                            <%--</a>--%>
                        <%--</li>--%>

                        <%--<li data-index="1" date="20170526" class="day">--%>
                            <%--<a href="#" onclick="setSelectedDate('20170526')">--%>
                                <%--<span class="dayweek">금</span>--%>
                                <%--<span class="day">26</span><span class="sreader"></span>--%>
                            <%--</a>--%>
                        <%--</li>--%>



                            <%--<li class="month dimmed">--%>
                                <%--<div>--%>
                                    <%--<span class="year">2017</span>--%>
                                    <%--<span class="month">5</span>--%>
                                <%--</div>--%>
                            <%--</li>--%>
                            <li>
                                <input type="radio" name="date" id="date1" onclick="setSelectedDate('20170525')">
                                <label for="date1">
                                    목, 25
                                </label>
                            </li>

                            <li>
                                <input type="radio" name="date" id="date2" onclick="setSelectedDate('20170526')">
                                <label for="date2">
                                    <span class="dayweek">금</span>
                                    <span class="day">26</span><span class="sreader"></span>
                                </label>
                            </li>

                    <%--</div>--%>
                </ul>

                <div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;"><div class="slider slider-y" style="height: 50px; top: 0px;"></div></div><div class="pane pane-x" style="display: none; opacity: 1; visibility: visible;"><div class="slider slider-x" style="width: 50px;"></div></div></div>
        </div>
    </div>

    <%--시간--%>

    <div class="section section-time">
        <div class="col-head" id="skip_time_list">
            <h3 class="sreader">시간</h3>
        </div>
        <div class="col-body">
            <!-- 시간선택 -->
            <div class="time-list nano has-scrollbar-y">
                <%--<div class="content scroll-y" tabindex="-1">--%>
                    <%--<div class="theater" screen_cd="001" movie_cd="20012926">--%>
                        <%--<span class="title">--%>
                            <%--<span class="name">2D</span>--%>
                            <%--<span class="floor">1관 6층</span>--%>
                            <%--<span class="seatcount">(총158석)</span>--%>
                        <%--</span>--%>
                        <%--<ul>--%>
                            <%--<li data-index="0" data-remain_seat="158" play_start_tm="2900" screen_cd="001" movie_cd="20012926" play_num="9" class="night">--%>
                                <%--<a class="button" href="#" onclick="setSelectedRoomIdTime(1,9)">--%>
                                    <%--<span class="time">--%>
                                        <%--<span>29:00</span>--%>
                                    <%--</span>--%>
                                    <%--<span class="count">145석</span>--%>
                                    <%--<div class="sreader">종료시간 31:19</div>--%>
                                    <%--<span class="sreader mod"> 심야</span>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>

                    <%--<div class="theater" screen_cd="003" movie_cd="20012926">--%>
                        <%--<span class="title">--%>
                            <%--<span class="name">2D</span>--%>
                            <%--<span class="floor">3관 8층</span>--%>
                            <%--<span class="seatcount">(총172석)</span>--%>
                        <%--</span>--%>
                        <%--<ul>--%>
                            <%--<li data-index="1" data-remain_seat="172" play_start_tm="0830" screen_cd="003" movie_cd="20012926" play_num="1" class="morning">--%>
                                <%--<a class="button" href="#" onclick="setSelectedRoomIdTime(3,8)">--%>
                                    <%--<span class="time">--%>
                                        <%--<span>08:30</span>--%>
                                    <%--</span>--%>
                                    <%--<span class="count">156석</span>--%>
                                    <%--<div class="sreader">종료시간 10:49</div>--%>
                                    <%--<span class="sreader mod"> 조조</span>--%>
                                <%--</a>--%>
                            <%--</li>--%>

                            <%--<li data-index="2" data-remain_seat="172" play_start_tm="1120" screen_cd="003" movie_cd="20012926" play_num="2" class="morning">--%>
                                <%--<a class="button" href="#" onclick="setSelectedRoomIdTime(3,11)">--%>
                                    <%--<span class="time">--%>
                                        <%--<span>11:20</span>--%>
                                    <%--</span>--%>
                                    <%--<span class="count">153석</span>--%>
                                    <%--<div class="sreader">종료시간 13:39</div>--%>
                                    <%--<span class="sreader mod"> 조조</span>--%>
                                <%--</a>--%>
                            <%--</li>--%>

                            <%--<li data-index="3" data-remain_seat="172" play_start_tm="1410" screen_cd="003" movie_cd="20012926" play_num="3">--%>
                                <%--<a class="button" href="#" onclick="screenTimeClickListener(event);return false;">--%>
                                    <%--<span class="time">--%>
                                        <%--<span>14:10</span>--%>
                                    <%--</span><span class="count">145석</span>--%>
                                    <%--<div class="sreader">종료시간 16:29</div>--%>
                                    <%--<span class="sreader mod">--%>
                                    <%--</span>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                <%--</div>--%>


                    <div class="content scroll-y" tabindex="-1">
                        <%--<div class="theater" screen_cd="001" movie_cd="20012926">--%>
                        <%--<span class="title">--%>
                            <%--<span class="name">2D</span>--%>
                            <%--<span class="floor">1관 6층</span>--%>
                            <%--<span class="seatcount">(총158석)</span>--%>
                        <%--</span>--%>
                            <%--<ul>--%>
                                <%--<li data-index="0" data-remain_seat="158" play_start_tm="2900" screen_cd="001" movie_cd="20012926" play_num="9" class="night">--%>
                                    <%--<a class="button" href="#" onclick="setSelectedRoomIdTime(1,9)">--%>
                                    <%--<span class="time">--%>
                                        <%--<span>29:00</span>--%>
                                    <%--</span>--%>
                                        <%--<span class="count">145석</span>--%>
                                        <%--<div class="sreader">종료시간 31:19</div>--%>
                                        <%--<span class="sreader mod"> 심야</span>--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                        <div class="theater" screen_cd="003" movie_cd="20012926">
                        <span class="title">
                            <span class="name">2D</span>
                            <span class="floor">3관 8층</span>
                            <span class="seatcount">(총172석)</span>
                        </span>
                            <ul>
                                <li data-index="1" data-remain_seat="172" play_start_tm="0830" screen_cd="003" movie_cd="20012926" play_num="1" class="morning">
                                    <input type="radio" name="room" id="room1" onclick="setSelectedRoomIdTime(3,8)">
                                    <label for="room1"> 08:30<br/>
                                        156석<br/>
                                        종료시간 10:49<br/>
                                        조조
                                    </label>
                                </li>
                                <hr/>
                                <li data-index="2" data-remain_seat="172" play_start_tm="1120" screen_cd="003" movie_cd="20012926" play_num="2" class="morning">
                                    <input type="radio" name="room" id="room2" onclick="setSelectedRoomIdTime(3,11)">
                                    <label for="room2"> 11:20<br/>
                                        153석<br/>
                                        종료시간 13:39<br/>
                                        조조
                                    </label>
                                </li>
                                <hr/>

                                <li data-index="3" data-remain_seat="172" play_start_tm="1410" screen_cd="003" movie_cd="20012926" play_num="3">
                                    <input type="radio" name="room" id="room3" onclick="setSelectedRoomIdTime(3,14)">
                                    <label for="room3"> 14:10<br/>
                                        145석<br/>
                                        종료시간 16:29<br/>
                                    </label>
                                </li>

                            </ul>
                        </div>

                    </div>

            </div>
        </div>
    </div>
</div>

<input type="button" value="조회하기" class="searchSeatBtn" onclick="selectSeatClick()"/>
<script>
    var selectedMovieId = 0;
    var selectedTheaterId = 0;
    var selectedDate = "";
    var selectedRoomId = 0;
    var selectedTime = 0;

    function setSelectedMovie(movieId) {
        selectedMovieId = movieId;
//        window.open("08_2_popup.html", "a", "width=400, height=300, left=100, top=50");
//        $("li").click(function () {
//            $("li").removeAttr("style");
//            $(this).css('background-color', "lightblue");
//        });
    }

    function setSelectedTeahterId(theaterId) {
        selectedTheaterId = theaterId;


    }

    function setSelectedDate(date) {
        selectedDate = date;

    }

    function setSelectedRoomIdTime(roomId, time) {
        selectedRoomId = roomId;
        selectedTime = time;

    }

    function selectSeatClick() {
        window.location = "http://localhost:8080/selectSeat?movie=" + selectedMovieId + "&theater=" + selectedTheaterId + "&date=" + selectedDate
        + "&room=" + selectedRoomId + "&time=" + selectedTime ;
    }


    function loadMovies() {
        
    }
    
    function loadTheaters() {
        
    }
    
    function loadDate() {
        
    }
    
    function loadRoomTime() {
        
    }
</script>
</body>
</html>