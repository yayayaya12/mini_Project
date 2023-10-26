<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    Object check = session.getAttribute("login");
    if (check == null){
        session.setAttribute("login", "user");
    }
    String login = session.getAttribute("login").toString();

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>เข้าสู่ระบบ Information Technology</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style/nav.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        nav {
            width: 100%;
            background: #aa1818;
            height: 60px;
        }

        .top-nav li {
            background: #aa1818;
            /*border-bottom: 4px solid #aa1919;*/
            float: left;
            font-size: 10px;
            height: 50px;
            padding-top: 10px;
            position: relative;
            text-align: center;
            width: 200px;
        }

        .top-nav {
            height: 30px;
            list-style: none;
            margin: 0;
            width: 100%;
            padding: 5px;
        }

        .top-nav li a {
            color: #fff;
            padding-top: 7px;
            position: absolute;
            top: 0;
            left: 0;
            width: 150px;
            height: 25px;
            font-size: 13px;
            text-decoration: none;
        }

        .p{
            font-family: "Kanit";
            font-size: 16px;
            color: black;
            /*margin-right: 35px;*/
            margin-top: -20px;
            margin-left: 1000px;
        }

        * {box-sizing: border-box;}

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /*.topnav {*/
        /*    overflow: hidden;*/
        /*    background-color: #e9e9e9;*/
        /*}*/

        /*.topnav a {*/
        /*    float: left;*/
        /*    display: block;*/
        /*    color: black;*/
        /*    text-align: center;*/
        /*    padding: 14px 16px;*/
        /*    text-decoration: none;*/
        /*    font-size: 17px;*/
        /*}*/

        /*.topnav a:hover {*/
        /*    background-color: #ddd;*/
        /*    color: black;*/
        /*}*/

        .topnav a.active {
            background-color: #2196F3;
            color: white;
        }

        .topnav .search-container {
            float: right;
        }

        .topnav input[type=text] {
            padding: 6px;
            margin-top: -50px;
            font-size: 17px;
            border: none;
        }

        .topnav .search-container button {
            float: right;
            padding: 6px 10px;
            margin-top: -50px;
            margin-right: 16px;
            background: #ddd;
            font-size: 17px;
            border: none;
            cursor: pointer;
            height: 37px;
        }

        .topnav .search-container button:hover {
            background: #ccc;
        }

        @media screen and (max-width: 600px) {
            .topnav .search-container {
                float: none;
            }
            .topnav a, .topnav input[type=text], .topnav .search-container button {
                float: none;
                display: block;
                text-align: left;
                width: 100%;
                margin: 0;
                padding: 14px;
            }
            .topnav input[type=text] {
                border: 1px solid #ccc;
            }
        }

    </style>
</head>
<body style="background-color: rgba(255,255,255,0.98)">
<header>
    <div class="navbar navbar-default navbar-static-top">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}"> <img
                    src="${pageContext.request.contextPath}/assets/img/logo2.png" class="hidden-xs" alt="" width="320px"
                    style="margin-left: 5px;"></a>
<% if (!login.equals("user")){%>
            <ul class="p">
                <li><a href="${pageContext.request.contextPath}/logout" style="text-decoration: none;">
                    <img src="${pageContext.request.contextPath}/assets/img/logout.png" width="20px"> ออกจากระบบ</a>
                </li>
            </ul>
<%}%>
        </div>
    </div>
</header>
<nav>
    <ul class="top-nav">
        <li><a href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/assets/img/home.png" width="30px"> หน้าหลัก</a></li>
<%--        <li>--%>
<%--            <a href="${pageContext.request.contextPath}">--%>
<%--                <img src="${pageContext.request.contextPath}/assets/img/magnifying-glass.png" width="30px"> ค้นหา</a>--%>
<%--        </li>--%>
        <!-- Advisor -->
        <%
            if (login.equals("personnel")) {
        %>

        <li><a href="${pageContext.request.contextPath}/advisor/P001/list">
            <img src="${pageContext.request.contextPath}/assets/img/file.png" width="30px">โครงงาน</a></li>

        <li><a href="${pageContext.request.contextPath}/advisor/P001/listapprove">
            <img src="${pageContext.request.contextPath}/assets/img/id-card.png" width="30px">ผู้ที่ผ่านการอนุมัติ</a>
        </li>
        <%} else if (login.equals("student")) {%>
        <!-- Student -->

        <li><a href="${pageContext.request.contextPath}/project/6304106307/list">
            <img src="${pageContext.request.contextPath}/assets/img/file.png" width="30px">โครงงาน</a></li>
        <li><a href="${pageContext.request.contextPath}/student/6304106307/view">
            <img src="${pageContext.request.contextPath}/assets/img/password.png" width="30px"> ผู้ใช้</a></li>

        <%
        } else {
        %>
        <li><a href="${pageContext.request.contextPath}/login">
            <img src="${pageContext.request.contextPath}/assets/img/password.png" width="30px">เข้าสู่ระบบ</a></li>
        <%}%></ul>
</nav>

</body>
</html>
