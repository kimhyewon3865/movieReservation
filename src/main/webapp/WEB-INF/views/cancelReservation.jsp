<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 28.
  Time: PM 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/cancelReservation.css">
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
<br/><br/>

<table style="width: 80%;" align="center">
    <tr>
        <th>영화</th>
        <th>극장</th>
        <th>날짜</th>
        <th>룸</th>
        <th>시간</th>
        <th>좌석</th>
        <th>가격</th>
        <th>대기/예약</th>
        <th>취소</th>
    </tr>

    <tr>
        <td>캐리비안해적</td>
        <td>강남</td>
        <td>5/29</td>
        <td>3관 8층</td>
        <td>8:00</td>
        <td>1A</td>
        <td>10000</td>
        <td>예약</td>
        <td><a href="#">취소</a> </td>
    </tr>
</table>
</body>
</html>
