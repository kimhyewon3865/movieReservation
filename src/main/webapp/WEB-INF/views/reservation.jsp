<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 25.
  Time: AM 1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="pnrInfo" name="pnrInfo" action="/ebizprd/EbizPrdTicketPrPayStep3_1.do" method="post">
    <input type="hidden" name="emplyYn" id="emplyYn" value="N">
    <input type="hidden" name="hDgGubun" id="hDgGubun" value="N">
    <input type="hidden" name="hidProyStlFlg" value="Y">
    <input type="hidden" name="txtGdNo" value="">
    <input type="hidden" name="hidCoupnCd" vlaue="hidCoupnCd">
    <!-- 상호판매(사업자간환승) 시작 - 2016.10. -->
    <input type="hidden" id="bizTransferYn" name="bizTransferYn" value="">
    <!-- 상호판매(사업자간환승) 종료 - 2016.10. -->




    <input type="hidden" name="hidGdNmGb">



    <input type="hidden" value="" name="hidLumpStlTgtNo">
    <input type="hidden" name="hidBigSale" value="">
    <input type="hidden" value="1103" name="strJobId">

    <div class="mt40">
        <table class="tbl_h" summary="여정정보 1열 승차일자,2열 열차번호,3열 열차종별,4열 출발역,5열 출발시각,6열 도착역,7열 도착시각,8열 예약매수,9열 총결제금액">
            <caption>여정정보</caption>
            <colgroup><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="*"></colgroup>
            <thead>
            <tr>
                <th scope="col">승차일자</th>
                <th scope="col">열차번호</th>
                <th scope="col">열차종별</th>
                <th scope="col">출발역</th>
                <th scope="col">출발시각</th>
                <th scope="col">도착역</th>
                <th scope="col">도착시각</th>
                <th scope="col">예약매수</th>
                <th class="txt_red" scope="col">총결제금액</th>
            </tr>
            </thead>
            <!-- 환승인지 확인이 필요 환승일때는 2개 나옴 -->
            <tbody>




            <input type="hidden" id="chkDptDt1" value="20170525">
            <input type="hidden" value="0104" name="h_dpt_rs_stn_cd">
            <input type="hidden" value="용산" name="h_dpt_rs_stn_nm">
            <input type="hidden" value="0020" name="h_arv_rs_stn_cd">
            <input type="hidden" value="부산" name="h_arv_rs_stn_nm">

            <tr>



                <td>

                    05월25일
                </td>
                <td class="bg-00">
                    <span class="point-00">103</span>
                </td>
                <td>
                    KTX
                </td>



                <td class="bdl_on">
                    용산
                </td>
                <td>


                    05:30

                </td>
                <td>
                    부산
                </td><td>


                08:17

            </td>



                <td rowspan="2">
                    1
                    <input type="hidden" name="txtPsgGridcnt" value="1">
                </td>







                <td class="txt_red" rowspan="1">
                    59,500원
                    <input type="hidden" name="txtPnrNo" value="320170593761406">
                    <input type="hidden" name="hidPnrNo" value="320170593761406">
                    <input type="hidden" name="hidTotStlAmt" value="0000000000059500">
                </td>


            </tr>



            </tbody>
        </table>




        <input type="hidden" name="hidJrnyCnt" value="1">
        <input type="hidden" name="txtJrnyCnt" value="1">



        <table id="tblSeatInfo" class="tbl_h tbl_lin01" summary="좌석정보 1열 객실등급,2열 좌석정보,3열 승객유형,4열 운임요금,5열 할인금액,6열 영수금액,7열 승차자명">
            <caption>좌석정보 : 대신받는분 승차권인 경우 승차자명에 대신받는분 성명이 반드시 포함되어야 합니다.</caption>
            <colgroup><col width="10%"><col width="20%"><col width="10%"><col width="10%"><col width="10%"><col width="10%"><col width="*"></colgroup>
            <thead>
            <tr>
                <th scope="col">객실등급</th>
                <th scope="col">좌석정보</th>
                <th scope="col">승객유형</th>
                <th scope="col">운임요금</th>
                <th scope="col">할인금액</th>
                <th scope="col">영수금액</th>
                <th scope="col">



                    운임추가할인선택


                </th>
            </tr>
            </thead>
            <tbody id="infos">








            <tr>
                <td>
                    <input type="hidden" name="psrm_cl_cd" value="1">

                    일반실



                </td>
                <td>
                    1호차





                    12D


                </td>
                <td>
                    <input type="hidden" name="psg_tp_dv_cd" value="1"><!-- 승객유형 -->
                    <input type="hidden" name="dcnt_knd_cd1" value=""><!-- 할인코드-->

                    어른










                </td>
                <td>59,500</td>
                <td>0</td>
                <td>59,500</td>
                <td>
                    <select name="hidCardCode" title="운임추가할인선택" style="width:200px"><option value="">선택안함</option><option value="C01">할인쿠폰</option><option value="C04">회원쿠폰</option><option value="C02">국가유공자 본인 무임</option><option value="C01">국가유공자 본인 할인</option><option value="">국가유공자 보호자</option><option value="C01">지연할인</option></select>






                    <input type="hidden" name="chkDiscNm" value="">
                    <input type="hidden" name="hidDscpNo" value=""> <!-- 할인증번호 -->
                    <!-- 할인종류코드 -->









                    <input type="hidden" name="hidDcntKndCd" value="">


                    <!-- 할인종류코드 -->
                    <input type="hidden" name="hidFmlyNo"> <!-- 군번/가족일련번호 -->
                </td>
            </tr>






            </tbody>
        </table>

        <!-- 직원 일때 출력 -->

        <!-- 직원 일때 출력 -->






        <div class="type_box_lin" style="width:53%; margin-left:343px; float:clear">
            <p><em class="txt_blu"><strong>[할인증 적용 방법 변경]</strong> 각종 할인증을 적용하는 방식이 변경되었습니다.</em></p>
            <ul>
                <li>&nbsp; * 운임추가 할인 선택==&gt; <span class="txt_pink">할인적용</span> ==&gt; 결제하기 </li>
                <li>&nbsp; * 특실요금은 할인대상에서 제외됩니다. </li>
            </ul>
        </div>




        <p class="btn_r">



            <a id="btn_recalc" class="btn_pink_ang" href="javascript:void(0)" onclick="fn_repayment();" title="할인증 적용 후 반드시 [할인적용] 버튼을 눌러주시기 바랍니다."><span>할인적용</span></a>
            <a id="btn_next" class="btn_blue_ang" href="javascript:void(0)" onclick="fn_chkPayMent();" title="결제하기"><span>결제하기</span></a>



        </p>
        <p class="btn_r">
            <a id="btn_next" class="btn_gray_ang" style="" href="#" onclick="btnCancel();"><span>예약취소</span></a>
        </p>
    </div>
</form>
</body>
</html>
