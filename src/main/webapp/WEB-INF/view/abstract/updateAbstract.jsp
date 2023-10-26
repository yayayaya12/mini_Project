<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 13/6/2566
  Time: 17:29
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/student/UpdateAbstract.css"/>
    <title>Abstract</title>
</head>
<style>
    p{
        margin-left: 30px;
    }

    .textuploadab{
        margin-top: 10px;
        text-align: left;
        margin-right: 5px;
    }

    .boxuploadab {
        margin-top: 60px;
        border: 3px solid #b98e54;
        width: 500px;
        border-radius: 20px;
        margin-left: 500px;
    }

    .fontuploadab {
        font-size: 30px ;
        margin-top: 60px;
    }

    .submituploadab {
        margin-right: 50px;
        margin-top: 140px;
        margin-bottom: 75px;
    }

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
        margin-top: -540px;
        margin-left: 60px;
    }

    .fontfilee {
        color: #ff0000;
        font-size: 17px;
        margin-left: 25%;
    }

    .detailss {
        float: left;
        margin-left: 160px;
        margin-top: 35px;
        margin-bottom: 30px;
    }
</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="fontuploadab">อัปโหลดบทคัดย่อ<img src="${pageContext.request.contextPath}/assets/img/agreement.png" class="img">
    </p>
    <div class="hr">
        <hr align="center" size="6" width="800px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
    </div>
    <div class="boxuploadab">
        <p class="textuploadab">ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
        <p class="textuploadab">รหัสนักศึกษา : ${student.student_id}</p>
        <p class="textuploadab">ชื่อโครงงาน : ${project.thaiproject_name}</p>
        <p class="textuploadab">อาจารย์ที่ปรึกษา : ${project.personnel.firstname} ${project.personnel.lastname}</p>
        <%
            Project pj = (Project) request.getAttribute("project");
            if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>
        <p class="textuploadab">ประเภท : ${project.project_type}</p>
        <%} else {%>
        <p class="textuploadab">ประเภท : ${project.project_type}</p>
        <%}%>
        <p class="textuploadab">ปีการศึกษา : ${project.semester}</p>
        <p class="textuploadab">ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
        <p class="textuploadab">ชนิดฐานข้อมูล :${project.database_type}</p>
    </div>
<form action="${pageContext.request.contextPath}/project/${project.project_id}/updateAbstract" method="post" enctype="multipart/form-data">


    <div class="detailss">
        <span>รายละเอียด : <textarea placeholder="กรุณากรอกรายละเอียดของบทคัดย่อ"  name="detail" minlength="0" maxlength="1000" >${project.abstract_details}</textarea></span>
    </div>
    <br>

    <div class="submituploadab">
            <input type="submit" value="อัปโหลด" class="btn btn-success"/>
<%--        <a href="${pageContext.request.contextPath}/project/${project.project_id}/updateAbstract" class="btn btn-success" >อัปโหลด</a>--%>
    </div>
</form>
</center>

<div class="line">
    <p class="file">ไฟล์เอกสารรายงาน : <input type="file" name="file"></p>
    <p class="fontfilee">* เฉพาะไฟล์ PDF เท่านั้น</p>
</div>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
