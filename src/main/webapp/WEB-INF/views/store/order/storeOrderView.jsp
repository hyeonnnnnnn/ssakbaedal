<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>                
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: 'Nanum Gothic', sans-serif;
        }

        header,
        section,
        aside,
        footer {
            box-sizing: border-box;
            display: block;
        }

        body {
            width: 1200px;
            height: 800px;
            margin: auto;
        }

        header {
            width: 100%;
            height: 20%;
        }

        section {
            width: 85%;
            height: 60%;
            float: left;
        }

        aside {
            width: 15%;
            height: 60%;
            float: left;
        }

        footer {
            width: 100%;
            height: 20%;
            border-top: 3px solid rgb(192, 211, 192);
            margin: auto;
            margin-top: 1%;
            margin-bottom: 1%;
            padding-top: 2%;
            padding-bottom: 1%;
            text-align: center;
            font-size: 12px;
            float: left;
        }

        nav {
            padding: 24px;
            text-align: center;
            background: rgb(64, 64, 64);
        }

        table {
            border-collapse: collapse;
            background-color: white;
            width: 80%;
            overflow: hidden;
            border-radius: 5px;
        }

        th,
        td {
            font-family: 'Motnserrat', sans-serif;
            text-align: center;
            font-size: 12px;
            padding: 10px;
        }

        th {
            background-color: rgb(192, 211, 192);
            color: white;
        }

        button {
            cursor: pointer;
            margin: 3px;
            padding: 10px 20px;
        }

        .btn-ghost.gray {
            background: transparent;
            border: 2px solid rgb(64, 64, 64);
            border-radius: 8px;
            color: rgb(64, 64, 64);
            text-decoration: none;
            -webkit-transition-duration: 0.4s;
            /* Safari */
            transition-duration: 0.4s;
        }

        .btn-ghost.gray:hover {
            background-color: rgb(64, 64, 64);
            color: white;
        }

        .btn-ghost.green {
            background: transparent;
            border: 2px solid rgb(130, 180, 127);
            border-radius: 8px;
            color: rgb(130, 180, 127);
            text-decoration: none;
            -webkit-transition-duration: 0.4s;
            /* Safari */
            transition-duration: 0.4s;
        }

        .btn-ghost.green:hover {
            background-color: rgb(130, 180, 127);
            color: white;
        }

        .link {
            transition: 0.3s ease;
            background: rgb(64, 64, 64);
            color: #ffffff;
            font-size: 15px;
            text-decoration: none;
            border-top: 4px solid rgb(64, 64, 64);
            border-bottom: 4px solid rgb(64, 64, 64);
            padding: 20px 0;
            margin: 0 20px;
        }

        .link:hover {
            border-top: 4px solid #ffffff;
            border-bottom: 4px solid #ffffff;
            padding: 6px 0;
        }

        .logoArea {
            margin-top: 1%;
        }

        .sidemenu {
            width: 150px;
            position: fixed;
            top: 200px;
            left: 1150px;
            margin-top: 50px;
        }

        .contents {
            margin-top: 1%;
            padding: 3%;
            border: 1px solid rgb(130, 180, 127);
            height: 100%;
        }

        .btnGroup {
            margin-top: 1%;
        }

        #logo {
            width: 100%;
            height: 200px;
        }

        #addtxt {
            height: 25px;
            background-color: white;
            font-size: 15px;
            text-align: center;
        }

        #mypageBtn,
        #logoutBtn {
            margin-top: 0;
            margin-bottom: 0;
        }

        #address {
            float: left;
        }

        #goEvent,
        #goRank {
            width: 100%;
        }



        .groupBtn {
            margin-top: 100px;
        }





        #noticeTable {
            margin-top: 60px;
            width: 60%;
            border-spacing: 0;
            text-align: center;
            font-size: 20px;
            margin: 50px auto;
        }

        #noticeTable td,
        #noticeTable th {
            border: 1px solid black;
        }

        .payText {
            width: 60%;
            height: 30px;
        }

        #tel {
            text-align: left;
        }

        #address {
            float: left;
            margin-bottom: 7px;
        }

        .btnGroup {
            margin-left: 840px;
        }

        #addtxt {
            height: 25px;
            background-color: white;
            font-size: 15px;
            text-align: center;
        }


        nav a:hover {
            text-decoration: none;
            color: rgb(130, 180, 127);

        }

        #menubar {
            text-decoration: none;
            list-style: none;
            font-size: 20px;
            font-weight: bold;
            padding: 0;
        }

        #menubar li {
            background-color: rgb(64, 64, 64);
            width: 150px;
            height: 40px;
            text-align: center;
            padding-top: 15px;
            color: white;
        }

        #menubar li:hover {
            background-color: rgb(130, 180, 127);
            width: 150px;
            height: 40px;
            text-align: center;
            padding-top: 15px;
            color: white;
        }

        #orderTitle {
            font-size: 25px;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <div class="wrapper">
                 	<c:import url="../common/headerbar.jsp"/>

        <section>
            <nav id="nav">
                <a class="link" href="#">주문관리</a>
                <a class="link" href="#">매장관리</a>
                <a class="link" href="#">매출현황</a>
            </nav>


            <div class="contents" align="center">
                <p id="orderTitle">주문관리</p>
                <div class="tableWrapper" align="center">
                    <table id="noticeTable">
                        <tr>
                            <th>주문시간</th>
                            <th>주소</th>
                            <th>주문 메뉴</th>
                            <th>메뉴 상태</th>
                        </tr>
                        <tr>
                            <td>10월15일 15:30</td>
                            <td>서울시 강남구</td>
                            <td>메뉴1, 메뉴2...</td>
                            <td>주문접수</td>
                        </tr>
                        <tr>
                                <td>10월15일 15:20</td>
                                <td>서울시 강남구</td>
                                <td>메뉴1, 메뉴2...</td>
                                <td>주문접수</td>
                        </tr>
                        <tr>
                                <td>10월15일 15:10</td>
                                <td>서울시 강남구</td>
                                <td>메뉴1, 메뉴2...</td>
                                <td>매장픽업</td>
                        </tr>
                        <tr>
                                <td>10월15일 14:30</td>
                                <td>서울시 강남구</td>
                                <td>메뉴1, 메뉴2...</td>
                                <td>배달완료</td>
                        </tr>
                        <tr>
                                <td>10월15일 14:20</td>
                                <td>서울시 강남구</td>
                                <td>메뉴1, 메뉴2...</td>
                                <td>배달완료</td>
                        </tr>
                    </table>

                    <div class="pagingArea" align="center" style="font-size:14px;">
                            [이전] [1][2][3][4][5] [다음]
                    </div>
                </div>
            </div>

    </div>
    </section>
    
    <div class="sidemenu">
        <ul id="menubar">
            <li>메뉴관리</li>
            <li>영업관리</li>
            <li>매장관리</li>
            <li>리뷰관리</li>
            <li>알림</li>
        </ul>
    </div>
    </section>

    </div>
    <br><br><br><br><br><br>

  	<c:import url="../common/footer.jsp"/>


    </div>
</body>

</html>