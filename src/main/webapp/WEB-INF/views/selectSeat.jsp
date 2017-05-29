<%--
  Created by IntelliJ IDEA.
  User: kimhyewon
  Date: 2017. 5. 25.
  Time: AM 1:05
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/selectSeat.css">
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
<br/>
<div class="person_screen" style="height: 20%;">
    <div class="numberofpeople-select">
        <ul>
            <li>
                <label>일반</label>
                <select id="peop01" name="txtPsgFlg_1" title="인원정보 : 일반" style="width:110px;">
                    <option selected="selected" value="0">일반 0명</option>
                    <option selected="selected" value="1">일반 1명</option>
                    <option value="2">일반 2명</option>
                    <option value="3">일반 3명</option>
                    <option value="4">일반 4명</option>
                    <option value="5">일반 5명</option>
                    <option value="6">일반 6명</option>
                    <option value="8">일반 8명</option>
                    <option value="7">일반 7명</option>
                    <option value="9">일반 9명</option>
                </select>
            </li>
            <li><label for="peop02">청소년</label>
                <select id="peop02" name="txtPsgFlg_2" title="인원정보 : 청소년" style="width:110px;">
                    <option selected="selected" value="0">청소년</option>
                    <option value="1">청소년 1명</option>
                    <option value="2">청소년 2명</option>
                    <option value="3">청소년 3명</option>
                    <option value="4">청소년 4명</option>
                    <option value="5">청소년 5명</option>
                    <option value="6">청소년 6명</option>
                    <option value="7">청소년 7명</option>
                    <option value="8">청소년 8명</option>
                    <option value="9">청소년 9명</option>
                </select>
            </li>

            <li><label for="peop03">어린이</label>
                <select id="peop03" name="txtPsgFlg_3" title="인원정보 : 어린이" style="width:110px;">
                    <option selected="selected" value="0">어린이</option>
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

            <li><label for="peop04">우대</label>
                <select id="peop04" name="txtPsgFlg_3" title="인원정보 : 우대" style="width:110px;">
                    <option selected="selected" value="0">우대</option>
                    <option value="1">우대 1명</option>
                    <option value="2">우대 2명</option>
                    <option value="3">우대 3명</option>
                    <option value="4">우대 4명</option>
                    <option value="5">우대 5명</option>
                    <option value="6">우대 6명</option>
                    <option value="7">우대 7명</option>
                    <option value="8">우대 8명</option>
                    <option value="9">우대 9명</option>
                </select>
            </li>
        </ul>
        <p>총가격 :</p>
    </div>

    <div class="section section-screen-select">
        <div id="user-select-info">
            <p class="theater-info">
                <span class="site">${movie}</span>
                <span class="screen">${room}</span>
                <span class="seatNum">남은좌석  <b class="restNum">145</b>/<b class="totalNum">158</b></span>
            </p>
            <p class="playYMD-info"><b>${date}</b><b class="exe">(금)</b><b>${time}</b></p>
        </div>
    </div>
</div>

<div class = "seatinformation" style="height: 60%;">
    <div class="theater">
        <ol class="cabin theater_room">
            <li class="row row--1">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="1A" />
                        <label for="1A">1A</label>
                    </li>
                    <li class="seat_wait seat">
                        <input type="checkbox" id="1B" />
                        <label for="1B">1B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="1C" />
                        <label for="1C">1C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" disabled id="1D" />
                        <label for="1D">Occupied</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="1E" />
                        <label for="1E">1E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="1F" />
                        <label for="1F">1F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--2">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="2A" />
                        <label for="2A">2A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="2B" />
                        <label for="2B">2B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="2C" />
                        <label for="2C">2C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="2D" />
                        <label for="2D">2D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="2E" />
                        <label for="2E">2E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="2F" />
                        <label for="2F">2F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--3">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="3A" />
                        <label for="3A">3A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="3B" />
                        <label for="3B">3B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="3C" />
                        <label for="3C">3C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="3D" />
                        <label for="3D">3D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="3E" />
                        <label for="3E">3E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="3F" />
                        <label for="3F">3F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--4">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="4A" />
                        <label for="4A">4A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="4B" />
                        <label for="4B">4B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="4C" />
                        <label for="4C">4C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="4D" />
                        <label for="4D">4D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="4E" />
                        <label for="4E">4E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="4F" />
                        <label for="4F">4F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--5">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="5A" />
                        <label for="5A">5A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="5B" />
                        <label for="5B">5B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="5C" />
                        <label for="5C">5C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="5D" />
                        <label for="5D">5D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="5E" />
                        <label for="5E">5E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="5F" />
                        <label for="5F">5F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--6">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="6A" />
                        <label for="6A">6A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="6B" />
                        <label for="6B">6B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="6C" />
                        <label for="6C">6C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="6D" />
                        <label for="6D">6D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="6E" />
                        <label for="6E">6E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="6F" />
                        <label for="6F">6F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--7">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="7A" />
                        <label for="7A">7A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="7B" />
                        <label for="7B">7B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="7C" />
                        <label for="7C">7C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="7D" />
                        <label for="7D">7D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="7E" />
                        <label for="7E">7E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="7F" />
                        <label for="7F">7F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--8">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="8A" />
                        <label for="8A">8A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="8B" />
                        <label for="8B">8B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="8C" />
                        <label for="8C">8C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="8D" />
                        <label for="8D">8D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="8E" />
                        <label for="8E">8E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="8F" />
                        <label for="8F">8F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--9">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="9A" />
                        <label for="9A">9A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="9B" />
                        <label for="9B">9B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="9C" />
                        <label for="9C">9C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="9D" />
                        <label for="9D">9D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="9E" />
                        <label for="9E">9E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="9F" />
                        <label for="9F">9F</label>
                    </li>
                </ol>
            </li>
            <li class="row row--10">
                <ol class="seats" type="A">
                    <li class="seat_able seat">
                        <input type="checkbox" id="10A" />
                        <label for="10A">10A</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="10B" />
                        <label for="10B">10B</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="10C" />
                        <label for="10C">10C</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="10D" />
                        <label for="10D">10D</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="10E" />
                        <label for="10E">10E</label>
                    </li>
                    <li class="seat_able seat">
                        <input type="checkbox" id="10F" />
                        <label for="10F">10F</label>
                    </li>
                </ol>
            </li>
        </ol>
    </div>

    <div class="seat-type">
        <p style="background: deepskyblue;">예약 가능</p>
        <p style="background: #bada55;">대기</p>
        <p style="background: indianred;">선택</p>
    </div>

</div>
<div class="btn" style="height: 10%;">
    <input type="button" value="상영시간 변경하기" class="backBtn" onclick="backBtnClick()"/>
    <input type="button" value="예약하기" class="payBtn" onclick="payBtnClick()"/>
</div>
<script>
    function backBtnClick() {
        window.location = "http://localhost:8080/selectMovieTheaterDateTime";
    }

    function payBtnClick() {
        window.location = "http://localhost:8080/successReservation";
    }
</script>
</body>
</html>
