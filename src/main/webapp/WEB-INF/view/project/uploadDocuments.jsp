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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/uploadDocuments.css"/>
    <title>uploadDocuments</title>
</head>
<style>
    p{
        margin-left: 30px;
    }

    .textuploadup{
        margin-top: 10px;
        text-align: left;
        margin-right: 5px;
    }

    .boxupload {
        margin-top: 60px;
        border: 3px solid #b98e54;
        width: 500px;
        border-radius: 20px;
        margin-left: 500px;
    }

    .fontupload {
        font-size: 30px ;
        margin-top: 60px;
    }

    .hrr {
        margin-top: 5px;
    }

    .imgg {
        margin-top: -5px;
        width: 50px;
        margin-left: 5px;
    }

    .submitupload {
        margin-bottom: 10px;
        margin-left: 45%;
        margin-top: -40px;
    }

    .textup {
        margin-left: 30%;
        margin-top: 25px;
        color: #c70a0a;
        font-size: 18px;
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
        margin-top: -460px;
        margin-left: 60px;
    }

    .fontfilee {
        color: #ff0000;
        font-size: 17px;
        margin-left: 25%;
    }

</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="fontupload">อัปโหลดเอกสาร<img src="${pageContext.request.contextPath}/assets/img/folder.png" class="imgg"></p>
    <div class="hrr">
        <hr align="center" size="6" width="800px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
    </div>
    <div class="boxupload">
        <p class="textuploadup">ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
        <p class="textuploadup">รหัสนักศึกษา : ${student.student_id}</p>
        <p class="textuploadup">ชื่อโครงงาน : ${project.thaiproject_name}</p>
        <p class="textuploadup">อาจารย์ที่ปรึกษา :  ${project.personnel.firstname} ${project.personnel.lastname}</p>
        <%
            String fileType = request.getAttribute("fileType").toString();
            session.setAttribute("fileType", fileType);
            Project pj = (Project) request.getAttribute("project");
            if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>
        <p class="textuploadup">ประเภท : ${project.project_type}</p>
        <%} else {%>
        <p class="textuploadup">ประเภท : ${project.project_type}</p>
        <%}%>
        <p class="textuploadup">ปีการศึกษา : ${project.semester}</p>
        <p class="textuploadup">ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
        <p class="textuploadup">ชนิดฐานข้อมูล :${project.database_type}</p>
    </div>
    <div>

        <%
            if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>
<%--        <select name="type" id="type">--%>
<%--            <option value="บทที่1">บทที่1</option>--%>
<%--            <option value="บทที่2">บทที่2</option>--%>
<%--            <option value="บทที่3">บทที่3</option>--%>
<%--            <option value="บทที่4">บทที่4</option>--%>
<%--            <option value="บทที่5">บทที่5</option>--%>
<%--            <option value="รายงานฉบับสมบูรณ์">รายงานฉบับสมบูรณ์</option>--%>
<%--        </select>--%>
        <p class="textup">บทที่ต้องการอัพโหลด :${fileType}</p>
        <%} else {%>
<%--        <select name="type" id="type">--%>
<%--            <option value="Test Case">Test Case</option>--%>
<%--            <option value="Test Plan">Test Plan</option>--%>
<%--           g <option value="Test Design">Test Design</option>--%>
<%--            <option value="รายงานฉบับสมบูรณ์">รายงานฉบับสมบูรณ์</option>--%>
<%--        </select>--%>
        <p class="textupload">เอกสารที่ต้องการอัปโหลด : Test Case</p>
        <%}%>
        <br><br>
    </div>

</center>


<form action="${pageContext.request.contextPath}/projectchapter/${project.project_id}/uploadDocuments" enctype="multipart/form-data" method="post">
    <div class="line">
        <p class="file">ไฟล์เอกสารรายงาน : <input type="file" name="file"></p>
        <p class="fontfilee">* เฉพาะไฟล์ PDF เท่านั้น</p>
    </div>

    <div class="submitupload">
        <input type="submit" value="อัปโหลด" class="btn btn-success"/>
    </div>
    <%--        <a href="" class="btn btn-success">อัปโหลด</a>--%>
</form>

<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
