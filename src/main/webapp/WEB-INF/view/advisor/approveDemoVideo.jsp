<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 9/7/2023
  Time: 8:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/css/advisor/approveDemoVideo.css" rel="stylesheet"/>
    <title>Approve Demo Video</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="fontvideo">อนุมัติวิดีโอ<img src="${pageContext.request.contextPath}/assets/img/video.png" class="imgvideo"></p>
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
        <p class="textvideo">ปีการศึกษา : ${project.semester}</p>
        <p class="textvideo">ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
        <p class="textvideo">ชนิดฐานข้อมูล :${project.database_type}</p>
    </div>

<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
