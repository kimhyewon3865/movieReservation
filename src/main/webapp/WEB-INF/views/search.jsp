<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 25.
  Time: AM 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<ul>
    <li>
        <label>어른</label>
        <select id="peop01" name="txtPsgFlg_1" title="인원정보 : 어른" style="width:110px;">
            <option selected="selected" value="0">어른 0명</option>
            <option selected="selected" value="1">어른 1명</option>
            <option value="2">어른 2명</option>
            <option value="3">어른 3명</option>
            <option value="4">어른 4명</option>
            <option value="5">어른 5명</option>
            <option value="6">어른 6명</option>
            <option value="7">어른 7명</option>
            <option value="8">어른 8명</option>
            <option value="9">어른 9명</option>
        </select>
    </li>
    <li><label for="peop02">만 4세~12세 소아</label>
        <select id="peop02" name="txtPsgFlg_2" title="인원정보 : 만 4세 ~ 12세 어린이" style="width:110px;">
            <option selected="selected" value="0">만 4세~12세</option>
            <option value="1">어린이 1명</option>
            <option value="2">어린이 2명</option>
            <option value="3">어린이 3명</option>
            <option value="4">어린이 4명</option>
            <option value="5">어린이 5명</option>
            <option value="6">어린이 6명</option>
            <option value="7">어린이 7명</option>
            <option value="8">어린이 8명</option>
            <option value="9">어린이 9명</option>
        </select>
    </li>

    <li><label for="peop03">만 65세이상 경로</label>
        <select id="peop03" name="txtPsgFlg_3" title="인원정보 : 만 65세이상 경로" style="width:110px;">
            <option selected="selected" value="0">만 65세이상</option>
            <option value="1">경로 1명</option>
            <option value="2">경로 2명</option>
            <option value="3">경로 3명</option>
            <option value="4">경로 4명</option>
            <option value="5">경로 5명</option>
            <option value="6">경로 6명</option>
            <option value="7">경로 7명</option>
            <option value="8">경로 8명</option>
            <option value="9">경로 9명</option>
        </select>
    </li>
</ul>
<dl>
    <dt>좌석종류선택</dt>
    <dd><label for="seat01">창/내측/1인좌석종별</label>
        <select id="seat01" name="txtSeatAttCd_3" title="차실/좌석 : 창/내측/1인좌석종별" class="selt60" onchange="chgSeatAttCd_3()">
            <option value="000" selected="selected">기본</option>

            <option value="011">1인석</option>

            <option value="012">창측좌석</option>
            <option value="013">내측좌석</option>
        </select>
    </dd>
    <dd><label for="seat02">좌석 방향</label>
        <select id="seat02" name="txtSeatAttCd_2" title="차실/좌석 : 좌석 방향" class="selt60" onchange="chgSeatAttCd_2()">
            <option value="000" selected="selected">좌석방향</option>
            <option value="009">순방향석</option>
            <option value="010">역방향석</option>
        </select>
    </dd>
    <dd class="st03">
        <label for="seat03">할인좌석종별</label>
        <select id="seat03" name="txtSeatAttCd_4" title="차실/좌석 : 할인좌석종별" class="selt60" onchange="chgSeatAttCd_4()">
            <option value="015" id="ty08" selected="selected">기본</option>

            <option value="019">유아동반</option>
            <option value="019">편한대화</option>
            <option value="031">노트북</option>
            <option value="021">휠체어</option>
            <option value="028">전동휠체어</option>
            <!-- 2012.05.30 ljy 강영숙
            <option value=029>교통약자      </option>
            -->
            <option value="XXX">수유실 인접</option>
            <option value="018">2층석</option>
            <option value="032">자전거거치대</option>
            <!-- 삭제 14.02.03 ljy 김윤석
            <option value="030">레포츠보관함 </option>
            -->

        </select>
    </dd>
</dl>
<hr/>
<dl>
    <dt><label for="start">출발역</label></dt>
    <dd><input id="start" name="txtGoStart" type="text" class="inp250" value="서울" title="출발역" autocomplete="off" style="ime-mode:active">
        <%--<a href="javascript:btnPopWin(1,'txtGoStart')"><img src="/images/btn_tra_sch.png" alt="조회"></a>--%>
        <a href="">역 조회</a>
    </dd>
</dl>

<dl class="pt02">
    <dt><label for="get">도착역</label></dt>
    <dd><input id="get" name="txtGoEnd" type="text" class="inp250" value="부산" title="도착역" autocomplete="off" style="ime-mode:active">
        <%--<a href="javascript:btnPopWin(1,'txtGoEnd')"><img src="/images/btn_tra_sch.png" alt="조회"></a>&nbsp;--%>
        <%--<a href="#" onclick="sta_chg('form1');" title="변경 버튼을 누르면 출발역과 도착역이 서로 바뀝니다"><img src="/images/btn_tra_chg.png" alt="출발/도착역 교환"></a>--%>
        <a href="">역 조회</a>
        <input type="hidden" name="txtGoStartCode" value="">
        <input type="hidden" name="txtGoEndCode" value="">
    </dd>
</dl>
<hr/>

<dl class="pt03">
    <dt>출발일</dt>
    <dd><label for="s_year" class="blind">출발년도</label>
        <select id="s_year" name="selGoYear" onchange="isValidDateSetting(form1.selGoYear,form1.selGoMonth,form1.selGoDay,form1.selGoHour);" title="출발일시 : 년도">
            <option value="2017" selected="selected">2017</option>
            <option value="2018">2018</option>
            <option value="2019">2019</option>
        </select>년

        <label for="s_month" class="blind">출발월</label>
        <select id="s_month" name="selGoMonth" onchange="isValidDateSetting(form1.selGoYear,form1.selGoMonth,form1.selGoDay,form1.selGoHour);" title="출발일시 : 월">
            <option value="01">1</option>
            <option value="02">2</option>
            <option value="03">3</option>
            <option value="04">4</option>
            <option selected="selected" value="05">5</option>
            <option value="06">6</option>
            <option value="07">7</option>
            <option value="08">8</option>
            <option value="09">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
        </select>월

        <label for="s_day" class="blind">출발일자</label>
        <select id="s_day" name="selGoDay" onchange="isValidDateSetting(form1.selGoYear,form1.selGoMonth,form1.selGoDay,form1.selGoHour);" title="출발일시 : 일">
            <option value="01">1</option>
            <option value="02">2</option>
            <option value="03">3</option>
            <option value="04">4</option>
            <option value="05">5</option>
            <option value="06">6</option>
            <option value="07">7</option>
            <option value="08">8</option>
            <option value="09">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option selected="selected" value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
        </select>일

        <label for="s_hour" class="blind">출발시</label>
        <select id="s_hour" name="selGoHour" title="출발일시 : 시">
            <option value="00">0 (오전00)</option>
            <option value="01">1 (오전01)</option>
            <option value="02">2 (오전02)</option>
            <option value="03">3 (오전03)</option>
            <option value="04">4 (오전04)</option>
            <option value="05">5 (오전05)</option>
            <option value="06">6 (오전06)</option>
            <option value="07">7 (오전07)</option>
            <option value="08">8 (오전08)</option>
            <option value="09">9 (오전09)</option>
            <option value="10">10 (오전10)</option>
            <option value="11">11 (오전11)</option>
            <option value="12">12 (오후00)</option>
            <option value="13">13 (오후01)</option>
            <option value="14">14 (오후02)</option>
            <option value="15">15 (오후03)</option>
            <option value="16">16 (오후04)</option>
            <option value="17">17 (오후05)</option>
            <option value="18">18 (오후06)</option>
            <option value="19">19 (오후07)</option>
            <option selected="selected" value="20">20 (오후08)</option>
            <option value="21">21 (오후09)</option>
            <option value="22">22 (오후10)</option>
            <option value="23">23 (오후11)</option>
        </select>시<input type="hidden" name="txtGoHour">
        <label for="s_week" class="blind">출발요일</label>
        <input id="s_week" type="text" size="2" name="txtGoYoil" value="일" readonly="readonly" title="출발일시 : 요일" class="inp20">&nbsp;
        <%--<a href="javascript:btnPopWin(2,'Go')" title="달력 새창열기"><img src="/images/btn_calen02.gif" alt="달력"></a>--%>
    </dd>
</dl>

<p class="btn_inq">
    <%--<a href="javascript:inqSchedule()"><img src="/images/btn_inq_tick.gif" alt="조회하기"></a>--%>
    <a href="schedule">조회하기</a>
</p>

</body>
</html>
