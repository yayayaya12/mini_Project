<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 8/1/2023
  Time: 3:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/project/viewFile.css"/>
    <title>View Project</title>
</head>
<%--<style>--%>
<%--.p1{--%>
<%--  margin-left: 30px;--%>
<%--  margin-top: 10px;--%>
<%--}--%>
<%--.box1{--%>
<%--  margin-left: 300px;--%>
<%--  border-radius: 15px;--%>
<%--  margin-top: 30px;--%>
<%--  /*border-style: 3px #b98e54 so;*/--%>
<%--  background-color: #ffffff;--%>
<%--  width: 500px;--%>
<%--  text-align: left;--%>
<%--  /*color: #3fbd2a;*/--%>
<%--  color: black;--%>
<%--  border: 3px solid #b7a276;--%>
<%--  margin-bottom: 50px;--%>
<%--}--%>
<%--p{--%>
<%--  margin-left: 30px;--%>
<%--}--%>
<%--</style>--%>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="font">รายละเอียดเอกสารรายงาน<img src="${pageContext.request.contextPath}/assets/img/verification.png"
                                               class="img"></p>
    <div class="hr">
        <hr align="center" size="6" width="800px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
    </div>
    <div class="box1">
        <p class="p1">ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
        <p>รหัสนักศึกษา : ${student.student_id}</p>
        <p>ชื่อโครงงาน : ${project.thaiproject_name}</p>
        <p>อาจารย์ที่ปรึกษา : ${project.personnel.firstname} ${project.personnel.lastname}</p>
        <%
            String fileType = request.getAttribute("fileType").toString();
            session.setAttribute("fileType", fileType);
            Project pj = (Project) request.getAttribute("project");
            if ((pj.getProject_type().equals("web")) || (pj.getProject_type().equals("app"))) {%>
        <p>ประเภท : ${project.project_type}</p>
        <%} else {%>
        <p>ประเภท : ${project.project_type}</p>
        <%}%>
        <p>ปีการศึกษา : 2566</p>
        <p>ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
        <p>ชนิดฐานข้อมูล :${project.database_type}</p>
        <p>บทที่ต้องการแก้ไข : ${fileType}</p>

    </div>
</center>
<form action="${pageContext.request.contextPath}/projectchapter/${projectChapter.file_id}/updateDocuments" method="post" enctype="multipart/form-data">
    <center>
        <div class="receiveFile">
            <span class="file">ไฟล์เอกสารรายงาน : <input type="file" name="file"></span>
            <p class="fontFile">* เฉพาะไฟล์ PDF เท่านั้น</p>
        </div>
    </center>


    <div class="submit">
        <input type="submit" value="แก้ไข" class="btn btn-warning"/>
        <a href="${pageContext.request.contextPath}/projectchapter/${projectChapter.file_id}/deleteFile"
           class="btn btn-danger">ลบ</a>
    </div>
</form>


<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
