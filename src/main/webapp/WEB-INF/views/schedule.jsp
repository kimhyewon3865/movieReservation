<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 25.
  Time: AM 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
</body>
</html>
