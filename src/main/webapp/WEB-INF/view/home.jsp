<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
    <title>Home</title>
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css"
    --%>
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/https://use.fontawesome.com/releases/v5.10.2/css/all.css"/>--%>
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/search.css"/>--%>
    <%--    <link rel="stylesheet" href="js/search.js">--%>
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>--%>
</head>
<style>
    .boxInfor {
        background: #eacdcd; /* For browsers that do not support gradients */
        background: -webkit-linear-gradient(left, #ead7d7, #e7e7cd); /* For Safari 5.1 to 6.0 */
        background: -o-linear-gradient(right, #ead7d7, #e7e7cd); /* For Opera 11.1 to 12.0 */
        background: -moz-linear-gradient(right, #ead7d7, #e7e7cd); /* For Firefox 3.6 to 15 */
        background: linear-gradient(to right, #ead7d7, #e7e7cd);
        background-color: #fcfcfc;
        text-align: left;
        height: 210px;
        width: 76%;
        border-radius: 15px;
        margin-bottom: 25px;
        box-shadow: 3px 3px 3px 3px #cccaca;
    }

    .project-content {
        margin-top: -670px;
        margin-left: 320px;
        height: auto;
        width: auto;
    }

    .details {
        margin-left: 70%;
        margin-top: -25px;
    }

    p {
        margin-left: 30px;
    }

    .searchdiv {
        background-color: #ffffff;
        border: #f1efef solid 2px;
        border-radius: 10px;
        /*background: coral;*/
        height: 430px;
        width: 25%;
        margin-left: 30px;
        margin-top: 100px;
        text-align: left;
        margin-bottom: 20%;
    }

    /*.boxsearch {*/
    /*    height: 60px;*/
    /*}*/

    .textboxhome {
        margin-left: 30px;
        margin-top: 30px;
    }

    .checkbox {
        height: 18px;
        width: 18px;
    }

    .search_div{
        background-color: #ffffff;
        border: 3px solid #ac9769;
        /*background: coral;*/
        height: 300px;
        width: 30%;
        margin-left: 30px;
        margin-top: 90px;
    }

    * {
        outline: none;
    }

    body {
        height: 100%;
        min-height: 100%;
    }

    body {
        margin: 0;
        background-color: #fae5c6;
    }

    .tb {
        display: table;
        width: 100%;

    }

    .td {
        display: table-cell;
        vertical-align: middle;
    }

    input,
    button {
        color: #fff;
        font-family: Nunito;
        padding: 0;
        margin: 0;
        border: 0;
        background-color: transparent;
    }

    #cover {
        position: absolute;
        top: 50%;
        left: 0;
        right: 0;
        width: 650px;
        height: 50px;
        padding: 35px;
        margin: -83px auto 0 auto;
        background-color: #fdd0a2;
        border-radius: 20px;
        box-shadow: 0 10px 40px #f8d09a, 0 0 0 20px #e0b37b;
        transform: scale(0.6);
        margin-top: -40px;
        margin-left: 500px;
        margin-bottom: 40px;
    }

    form {
        height: 96px;
    }

    input[type="text"] {
        width: 100%;
        height: 96px;
        font-size: 40px;
        line-height: 1;
        margin-top: -80px;
        color: #2f2f2f;
    }

    input[type="text"]::placeholder {
        color: #000000;
    }

    #s-cover {
        width: 1px;
        padding-left: 35px;
    }

    button {
        position: relative;
        display: block;
        width: 84px;
        height: 96px;
        cursor: pointer;
    }

    #s-circle {
        position: relative;
        top: -8px;
        left: 0;
        width: 43px;
        height: 43px;
        margin-top: -70;
        border-width: 15px;
        border: 15px solid #fff;
        background-color: transparent;
        border-radius: 50%;
        transition: 0.5s ease all;
    }

    button span {
        position: absolute;
        top: 68px;
        left: 43px;
        display: block;
        width: 45px;
        height: 15px;
        margin-top: -50;
        background-color: transparent;
        border-radius: 10px;
        transform: rotateZ(52deg);
        transition: 0.5s ease all;
    }

    button span:before,
    button span:after {
        content: "";
        position: absolute;
        bottom: 0;
        right: 3px;
        width: 45px;
        height: 15px;
        background-color: #fff;
        border-radius: 10px;
        transform: rotateZ(0);
        transition: 0.5s ease all;
        margin-top: -50;
    }

    #s-cover:hover #s-circle {
        top: -1px;
        width: 67px;
        height: 15px;
        border-width: 0;
        background-color: #fff;
        border-radius: 20px;
        margin-top: -50px;
    }

    #s-cover:hover span {
        top: 50%;
        left: 56px;
        width: 25px;
        margin-top: -9px;
        transform: rotateZ(0);
        margin-top: -50px;
    }

    #s-cover:hover button span:before {
        bottom: 11px;
        transform: rotateZ(52deg);
        margin-top: -50px;
    }

    #s-cover:hover button span:after {
        bottom: -11px;
        transform: rotateZ(-52deg);
        margin-top: -50px;
    }
    #s-cover:hover button span:before,
    #s-cover:hover button span:after {
        right: -6px;
        width: 40px;
        background-color: #fff;
        margin-top: -50px;
    }

    .textSearchh{
        margin-top: 100px;
        margin-left: 230px;
        font-family: -apple-system;
    }

    .hrhome{
        height: 300px;
        width: 600px;
        margin-top: 50px;
        /*background-color: #565555;*/
        /*opacity: 0.3;*/
        /*margin-left: 300px;*/
    }
</style>
<body style="background-color: #fff4e8">
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>

    <h4 class="textSearchh">ค้นหาโครงงานเทคโนโลยีสารสนเทศ</h4>
    <div id="cover">
        <form method="get" action="">
            <div class="tb">
                <div class="td"><input type="text" placeholder="Search" required></div>
            <div class="td" id="s-cover">
                <button type="submit">
                    <div id="s-circle"></div>
                    <span></span>
                </button>
            </div>
            </div>
        </form>
    </div>

<div class="searchdiv">
    <div class="text">
        <label><b>ภาษาที่ใช้ในการพัฒนา</b></label><br>
        <input type="checkbox" name="language" value="html" class="checkbox">
        <label>Html</label><br>
        <input type="checkbox" name="language" value="JAVA" class="checkbox">
        <label>JAVA</label><br>
        <input type="checkbox" name="language" value="Javascript" class="checkbox">
        <label>Javascript</label><br>
        <input type="checkbox" name="language" value="Python" class="checkbox">
        <label>Python</label>
    </div>
    <hr align="center" size="4" width="314px" class="hrlist" style="background: #cbc3c3">
    <div class="text">
        <label><b>ชนิดฐานข้อมูล</b></label><br>
        <input type="checkbox" class="checkbox">
        <label>MySQL</label><br>
        <input type="checkbox" class="checkbox">
        <label>firebase</label><br>
        <br>
    </div>
    <hr align="center" size="4" width="314px" class="hrlist" style="background: #cbc3c3">
    <div class="text">
        <label for="type"><b>ประเภทโครงงาน</b></label>
        <select name="type" id="type">
            <option value="Web">Web</option>
            <option value="Applications">Applications</option>
            <option value="Tester">Tester</option>
        </select><br><br>
    </div>
    <hr align="center" size="4" width="314px" class="hrlist" style="background: #cbc3c3">
    <div class="text">
        <label for="year"><b>ปีการศึกษา</b></label>
        <select name="year" id="year">
            <option value="2564">2564</option>
            <option value="2565">2565</option>
            <option value="2566">2566</option>
        </select>
    </div>
</div>

<%--<center>--%>
<%--    <div class="project-content">--%>
<%--        <c:forEach var="project" items="${projects}">--%>
<%--            <div class="boxInfor">--%>
<%--                <h5 class="textboxhome">ชื่อโครงงาน : ${project.thaiproject_name}</h5>--%>
<%--                <p style="margin-top: 20px">ชื่อผู้จัดทำ : ${project.student.firstname} ${project.student.lastname}</p>--%>
<%--                <p>รหัสนักศึกษา : ${project.student.student_id}</p>--%>
<%--                <p>ปีการศึกษา : ${project.semester}</p>--%>
<%--                <div class="details">--%>
<%--                    <input type="submit" value="ดูรายละเอียด" class="btn btn-outline-danger"/>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--    </div>--%>
<%--</center>--%>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>

