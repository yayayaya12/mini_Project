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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/project/editUploadFile.css"/>
  <html>
<head>
    <title>Edit Upload File</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center class="">
  <p class="font">แก้ไขเอกสารรายงาน<img src="${pageContext.request.contextPath}/assets/img/folder.png" class="img"></p>
  <div class="hr">
    <hr align="center" size="4" width="300px" color="#F6B47CFF">
  </div>
  <div class="div">
    <p>ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
    <p>รหัสนักศึกษา : ${student.student_id}</p>
    <p>ชื่อโครงงาน : ${project.thaiproject_name}</p>
    <p>อาจารย์ที่ปรึกษา :  ${project.personnel.firstname} ${project.personnel.lastname}</p>
<%--    <%--%>
<%--      Project pj = (Project) request.getAttribute("project");--%>
<%--      if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>--%>
<%--    <p>ประเภท : ${project.project_type}</p>--%>
<%--    <%} else {%>--%>
<%--    <p>ประเภท : ${project.project_type}</p>--%>
<%--    <%}%>--%>
    <p>ปีการศึกษา : 2566</p>
    <p>ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
    <p>ชนิดฐานข้อมูล :${project.database_type}</p>
  </div>

    <a href="" class="btn btn-success">แก้ไข</a>

  </div>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</center>
</body>
</html>
