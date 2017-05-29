<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 21.
  Time: PM 11:41
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
<hr/>
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
    <a href="">조회하기</a>
</p>
<hr/>

<table id="tableResult" class="tbl_h" style="margin-top:0px;" text-align="center" border="1" summary="1열 구분, 2열 열차번호, 3열 출발, 4열 도착, 5열 특실, 6열 일반실, 7열 유아, 8열 자유석/입석, 9열 예약대기, 10열 파격가할인, 11열 정차, 12열 편성정보, 13열 운임요금, 14열 소요시간">
    <caption>열차별 예약현황</caption>
    <colgroup>
        <col width="5%">
        <col width="7%">
        <col width="7%">
        <col width="7%">
        <col width="7%">
        <col width="7%">
        <col width="7%">
        <col width="7%">
        <col width="10%">
        <col width="7%">
        <col width="5%">
        <col width="*">
        <col width="5%">
        <col width="5%">
    </colgroup>
    <thead>
    <tr>
        <th scope="col">열차<br>번호</th>
        <th scope="col">출발<br>
            <%--<a href="javascript:DownSort('1');" title="출발시각 정렬"><img src="/docs/2007/img/common/down_arow.gif" alt="출발시각 정렬"></a>--%>
        </th>
        <th scope="col">도착<br>
            <%--<a href="javascript:DownSort('2');" title="도착시각 정렬"><img src="/docs/2007/img/common/down_arow.gif" alt="도착시각 정렬"></a>--%>
        </th>
        <th scope="col">특실</th>
        <th scope="col">일반실</th>
        <th scope="col">유아</th>
        <th scope="col">자유석<br>/입석</th>

        <th scope="col">예약<br>대기</th>
        <th scope="col">정차역<br>(경유)</th>
        <th scope="col"><a href="javascript:popup('/docs/2007/adv/adv01000/02.jsp','pop','600','450','no');" title="편성정보 새창열기">차량유형<br>/편성정보</a></th>
        <th scope="col">운임<br>요금</th>
        <th scope="col">소요<br>시간</th>
    </tr>
    </thead>

    <script type="text/javascript" language="javascripts">
        train[0] = new train_info(
                "20170521"
                , "0001"
                , "0020"
                , "05"
                , ""
                , "203700"
                , ""
                , ""
                , ""
                , ""
                , "015"
                , ""
                , "1"
                , "0"
                , ""
                , "000"
                , "1"
                , "1"
                , "0001"
                , "서울"
                , "0020"
                , "부산"
                , "00167"
                , "Y"
                , "00"
                , "100"
                , "015"
                , "20170521"
                , "20170521"
                , "210000"
                , "20170521"
                , "233700"
                , "000000"
                , "0272"
                , ""
                , ""
                , "X"
                , ""
                , ""
                , ""
                , ""
                , "N"
                , "N"
                , ""
                , "000007"
                , "000030"
                , "000001"
                , "000007"
                , "000092"
                , "-00001"
        );

        maxtrain++;
    </script>

    <tbody>
    <tr class="">
        <td class="bdl_on bg-00" title="KTX">
			<span class="point-00" style="text-decoration:none; letter-spacing:-1px;">KTX</span><br>
            <%--<a href="javascript:btnTimeInfo('/ebizprd/EbizPrdTicketPr11131_i1.do?txtRunDt=20170521&amp;txtDptDt=20170521&amp;txtTrnNo=00167&amp;txtTrnGpCd=100');" title="열차운행 시각조회 새창 열기"><span class="point-00">167</span></a>--%>
        </td>
        <td>서울<br>21:00</td>
        <td>부산<br>23:37</td>
        <td>
            <%--<a href="javascript:infochk(2,0);"><img name="btnRsv2_0" src="/docs/2007/img/common/icon_apm_rd.gif" alt="예약하기"></a>--%>
            <a href="">예약하기</a>
        </td>
        <td>
            <%--<a href="javascript:infochk(1,0);"><img name="btnRsv1_0" src="/docs/2007/img/common/icon_apm_rd.gif" alt="예약하기"></a>--%>
            <a href="">예약하기</a>
        </td>
        <td>
            -
        </td>

        <td>
            역발매중<%--<im src="/docs/2007/img/common/btn_seet_rsv2.gif" alt="역발매중">--%>
        </td>

        <!--/////////////////////////////////////////////////////////////////////// -->
        <!-- 예약대기 예약가능 여부  표시                                           -->
        <!-- 직통이면서 단일속성(일반) 요구시에만 표시                              -->
        <!--/////////////////////////////////////////////////////////////////////// -->

        <td>
            -
        </td>
        <td>
            -
        </td>
        <td width="17%">
            <%--<img src="/img/pr/etc/icon_X.gif" alt="전동휠체어">--%>전동휠체어
        </td>
        <td>
            <%--<a href="javascript:view_fare(0);" title="운임요금 새창열기"><img src="/docs/2007/img/common/btn_s_inquiry.gif" alt="조회"></a>--%>
            <a href="">조회</a>
        </td>
        <td>
            02:37
        </td>
    </tr>

    <script type="text/javascript" language="javascripts">
        train[1] = new train_info(
                "20170521"
                , "0001"
                , "0020"
                , "05"
                , ""
                , "203700"
                , ""
                , ""
                , ""
                , ""
                , "015"
                , ""
                , "1"
                , "0"
                , ""
                , "001"
                , "1"
                , "1"
                , "0104"
                , "용산"
                , "0020"
                , "부산"
                , "00259"
                , "Y"
                , "00"
                , "100"
                , "015"
                , "20170521"
                , "20170521"
                , "211500"
                , "20170522"
                , "001500"
                , "000000"
                , "0272"
                , "2"
                , ""
                , "X"
                , ""
                , ""
                , ""
                , ""
                , "N"
                , "N"
                , ""
                , "000008"
                , "000042"
                , "000001"
                , "000008"
                , "000112"
                , "-00001"
        );

        maxtrain++;
    </script>

    </tbody>
</table>

<hr/>
<table class="tbl_h jsClickLayer" border="1" summary="승차권 예약현황에 대한 선택, 여정,승차일, 열차종별 도착, 출발역과 출발시간, 도착역과 도착시간, 승차원 금액, 예약매수, 승차권 구매현황에 대한 승차권 결제, 승차권 발권, 취소/반환 에 대한 조회내용입니다."><!-- jsClickLayer : 발권하기 클릭시 레이어view 되는 jQuery입니다. 따로 사용하실경우 본 class만 삭제하시면 기능해제 됩니다. -->
    <caption>예약정보</caption>
    <colgroup>
        <col width="35px">
        <col width="44px">
        <col width="64px">
        <col width="70px">
        <col width="70px">
        <col width="70px">
        <col width="70px">
        <col width="46px">
        <col width="66px">
        <col width="90px">
        <col width="">
        <col width="60px">
    </colgroup>
    <thead>
    <tr>
        <th scope="col" colspan="9">승차권 예약현황</th>
        <th scope="col" colspan="3" class="left_black">승차권 구매현황</th>
    </tr>
    <tr>
        <th scope="col" rowspan="2">선택</th>
        <th scope="col" rowspan="2">여정</th>
        <th scope="col" rowspan="2">승차일</th>
        <th scope="col" class="divide_row">열차종별</th>
        <th scope="col" class="divide_row">출발역</th>
        <th scope="col" class="divide_row">도착역</th>
        <th scope="col" rowspan="2">승차권<br>금액</th>
        <th scope="col" rowspan="2">예약<br>매수</th>
        <th scope="col" rowspan="2">예약<br>유형</th>
        <th scope="col" rowspan="2" class="left_black">승차권 결제</th>
        <th scope="col" rowspan="2">승차권 발권</th>
        <th scope="col" rowspan="2">취소 /<br>반환</th>
    </tr>
    <tr class="col_bdr">
        <th scope="col" class="divide_row">열차번호</th>
        <th scope="col" class="divide_row">출발시간</th>
        <th scope="col" class="divide_row">도착시간</th>
    </tr>
    </thead>
    <tbody>

    <script type="text/javascript" language="javascript">
        pnr[0] = new pnr_info( '320170592431375'
            , ''
            , 'N'
            , 'N'
            , '20170522161500'
            , '00000000001'
            , '000001'
            , '00000048800'
            , 'N'
            , ''
            , '000'
            , 'N'
            , ''
            , ''
            , null
            , ''
        );
        jrny = new Array(00000000001);
        pnr[0].jrny = jrny;
    </script>




    <script type="text/javascript" language="javascript">
        jrny[0] = new jrny_info('0001'
            , '11'
            , '03'
            , '12'
            , '20170522'
            , '20170522'
            , '00235'
            , '00'
            , '100'
            , '0001'
            , '161500'
            , '0020'
            , '192400'
            , '000001'
            , '00000'
            , 'Y'
            , '20170522'
            , '20170522'
            , '154733'
            , 'N'
            , '0000'
        );
    </script>


    <!-- row -->
    <tr>
        <td rowspan="1">
            <input type="radio" name="radPnr" id="radio0" value="0" title="선택">
        </td>
        <td class="bdl_on">
            <font color="red">
                <label for="radio0">편도</label>
            </font>
        </td>
        <td><label for="radio0">5월22일<br>(월) </label></td>
        <td class="divide_row_con bg-00">
            <div>
				<span class="point-00">KTX</span>
                <span class="point-00">
					<a href="javascript:btnAddInfo(0,0);" class="point-00">235</a>
                </span>
            </div>
        </td>

        <td class="divide_row_con">
            <div>
				<span><label for="radio0">서울</label></span>
                <span><label for="radio0">16:15</label></span>
            </div>
        </td>

        <td class="divide_row_con">
            <div>
				<span><label for="radio0">부산</label></span>
                <span><label for="radio0">19:24</label></span>
            </div>
        </td>

        <td rowspan="1">
            <strong>
                <font color="red">
                    48,800
                </font>
            </strong>
        </td>

        <td>1</td>

        <td rowspan="1"><!-- 예약유형 -->
            일반예약
        </td>

        <td class="txt_red left_black" rowspan="1"><!-- 결제 -->
            <span class="point-pink-n">
                15시47분까지<br>
                <a href="">결제하기</a>
            <%--<a href="javascript:fn_pay1(0);" class=""><img src="/images/btn_tic03.png" alt="결제하기"></a>--%>
            </span>
        </td>

        <td rowspan="1">
            <!-- 보낸선물이 아닐경우 :받은선물(F)이거나 선물이 아닐경우(N)-->
            -
        </td>

        <td rowspan="1">
            <!-- 보낸선물이 아닐경우 :받은선물(F)이거나 선물이 아닐경우(N)-->
            <%--<a href="javascript:fn_cnc('0');"><img src="/images/btn_tik_cnl.gif" alt="예약취소"></a>--%>
            <a href="">취소하기</a>
        </td>
    </tr>

    </tbody>
</table>
<hr/>
</body>
</html>
