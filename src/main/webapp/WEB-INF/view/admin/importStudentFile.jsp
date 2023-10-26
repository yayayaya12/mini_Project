<%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 7/31/2023
  Time: 1:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 20/6/2566
  Time: 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/importStudent.css"/>
<html>
<head>
    <title>importStudent</title>
</head>
<style>
    .file {
        margin-left: 14%;
        margin-top: 70px;
    }

    .line {
        border-style: dotted;
        border-color: #000000;
        width: 40%;
        height: 40%;
        margin-bottom: 20%;
        margin-top: 50px;
        margin-left: 40px;
    }

    .fontfilee {
        color: #ff0000;
        font-size: 17px;
    }

    .textuploadimport{
        margin-top: 30px;
        text-align: center;
        font-size: 30px;

    }

    .submituploadimport {
        margin-bottom: 10px;
        margin-top: -230px;
    }
</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="textuploadimport">เพิ่มนักศึกษา<img src="${pageContext.request.contextPath}/assets/img/students.png" class="imgimport"></p>
    <div class="hr">
        <hr align="center" size="6" width="600px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
    </div>

    <div class="line">
        <p class="file">ไฟล์เอกสารรายงาน : <input type="file" name="file"></p>
        <p class="fontfilee">* เฉพาะไฟล์ PDF เท่านั้น</p>
    </div>
    <div class="submituploadimport">
        <input type="submit" value="เพิ่ม" class="btn btn-success"/>
    </div>

    </div>
</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>

</body>
</html>
