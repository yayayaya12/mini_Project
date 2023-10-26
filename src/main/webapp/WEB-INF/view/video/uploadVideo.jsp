<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 20/6/2566
  Time: 17:09
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/video/uploadVideo.css"/>
    <title>uploadVideo</title>
</head>
<style>
    .fontvideo {
        font-size: 30px ;
        margin-top: 60px;
    }

    p{
        margin-left: 30px;
    }

    .textvideo{
        margin-top: 10px;
        text-align: left;
        margin-right: 5px;
    }

    .imgvideo {
        margin-left: 10px;
        width: 40px;
        height: 40px;
    }

    .hr1 {
        margin-top: -11px;
    }

    .submitvideo {
        margin-right: 30px;
        margin-top: 30px;
        margin-bottom: 30px;
    }
</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="fontvideo">อัปโหลดวิดีโอ<img src="${pageContext.request.contextPath}/assets/img/video.png" class="imgvideo"></p>
    <div class="hr1">
        <hr align="center" size="4" width="350px" color="B98E54FF">
    </div>
<div class="boxvideo">
        <p class="textvideo">ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
        <p class="textvideo">รหัสนักศึกษา : ${student.student_id}</p>
        <p class="textvideo">ชื่อโครงงาน : ${project.thaiproject_name}</p>
        <p class="textvideo">อาจารย์ที่ปรึกษา :  ${project.personnel.firstname} ${project.personnel.lastname}</p>
        <%
            Project pj = (Project) request.getAttribute("project");
            if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>
        <p class="textvideo">ประเภท : ${project.project_type}</p>
        <%} else {%>
        <p class="textvideo">ประเภท : ${project.project_type}</p>
        <%}%>
        <p class="textvideo">ปีการศึกษา : 2566</p>
        <p class="textvideo">ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
        <p class="textvideo">ชนิดฐานข้อมูล :${project.database_type}</p>
</div>
    <form action="${pageContext.request.contextPath}/video/${project.project_id}/uploadVideo">
        <span class="fillevideo">ไฟล์วิดีโอ : <input type="file" name="file"><br><br><p class="fontfile">*เฉพาะไฟล์ MP4 เท่านั้น</p></span>
        <div class="submitvideo">
            <input type="submit" value="อัปโหลด" class="btn btn-success"/>
        </div>
    </form>

</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
