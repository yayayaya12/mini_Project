<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 8/16/2023
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/student/viewAbstract.css"/>
    <title>View Abstract</title>
</head>
<%--<style>--%>
<%--    . divabstract {--%>
<%--        margin-left: 340px;--%>
<%--        border-radius: 15px;--%>
<%--        margin-top: 30px;--%>
<%--        background-color: #ffffff;--%>
<%--        width: 500px;--%>
<%--        text-align: left;--%>
<%--        color: black;--%>
<%--        border: 3px solid #b7a276;--%>
<%--        margin-bottom: 50px;--%>
<%--    }--%>
<%--</style>--%>
<body>
<center>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<div class="boxabstract">
    <p class="textabstract">รายละเอียด</p>
</div>
<div class="divabstract">
    <p>ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
    <p>รหัสนักศึกษา : ${student.student_id}</p>
    <p>ชื่อโครงงาน : ${project.thaiproject_name}</p>
    <p>อาจารย์ที่ปรึกษา :  ${project.personnel.firstname} ${project.personnel.lastname}</p>
    <%
        Project pj = (Project) request.getAttribute("project");
        if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>
    <p>ประเภท : ${project.project_type}</p>
    <%} else {%>
    <p>ประเภท : ${project.project_type}</p>
    <%}%>
    <p>ปีการศึกษา : 2566</p>
    <p>ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
    <p>ชนิดฐานข้อมูล :${project.database_type}</p>
</div>
</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
