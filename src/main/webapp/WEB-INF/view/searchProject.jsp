<%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 10/2/2023
  Time: 3:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Search</title>
</head>
<style>
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
        margin-top: -45px;
        font-size: 17px;
        border: none;
    }

    .topnav .search-container button {
        float: right;
        padding: 6px 10px;
        margin-top: -45px;
        margin-right: 16px;
        background: #ddd;
        font-size: 17px;
        border: none;
        cursor: pointer;
        height: 31.5px;
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
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<div class="topnav">
    <div class="search-container">
        <form action="/action_page.php">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
</div>
</body>
</html>
