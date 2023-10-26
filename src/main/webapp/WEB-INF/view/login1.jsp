<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/css/Login.css " rel="stylesheet"/>
</head>
<%--    <link href="css/Login.css" rel="stylesheet">--%>
<%--    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">--%>
<%--    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet"/>--%>




<body class="background" style="margin: 0px">
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <div class="container">
        <div class="backbox">
            <div class="loginMsg">
                <div class="textcontent">
                </div>
            </div>
            <div class="signupMsg visibility">
                <div class="textcontent">
                    <button id="switch2">LOG IN</button>
                </div>
            </div>
        </div>
        <!-- backbox -->

        <div class="frontbox">
            <div class="login">
                <form action="${pageContext.request.contextPath}/home">
                <h2>LOG IN</h2>
                <div class="inputbox">
                    <input type="text" name="username" placeholder="username"/>
                    <input type="password" name="password" placeholder="password"/>
                </div>
                <p>ลืมรหัสผ่าน?</p>
                <button type="submit">LOG IN</button>
                </form>
<%--                <a href="${pageContext.request.contextPath}/project/${}/upload" class="btn btn-success">อัปโหลด</a>--%>
            </div>

        </div>
        <!-- frontbox -->
    </div>


    <!--
        <div class="div">
            <h1>Login เพื่อเข้าสู่ระบบ</h1>
            <div class="left">
                <p></p>
            </div>
            <div class="name">
            <label for="fname">Username:</label>
            <input type="text" id="fname" name="fname"><br><br>
            <label  for="pass">Password:</label>
            <input type="password" id="pass" name="pass"><br><br>
            <button type="button" class="button">Login</button><br><br>
            <button type="button" class="buttonpass">ลืมรหัสผ่าน</button>
            </div>
        </div>
    -->

</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>