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
    <title>ViewProject</title>
</head>
<style>
    .boxtableviewpro {
        border: none;
        /*height: 400px;*/
        width: auto;
        margin-bottom: 30px;
    }
    .boxData{
        border-radius: 15px;
        margin-top: 30px;
        width: 500px;
        text-align: left;
        color: black;
        border: 3px solid #b7a276;
        margin-bottom: 25px;
        float: left;
        margin-left: 60px;
    }
    p{
        margin-left: 30px;
    }

    .boxjob {
        border-radius: 15px;
        margin-top: 50px;
        width: 500px;
        text-align: left;
        color: black;
        border: 3px solid #83714d;
        margin-bottom: 25px;
        height: 130px;
        margin-left: 450px;
    }

    .textjob {
        margin-top: 13px;
    }

    .boxble {
        border: 2px solid #f1d7bb;
        margin-bottom: 30px;
        background-color: #fde7c3;
    }
</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="font">รายละเอียดเอกสารรายงาน<img src="${pageContext.request.contextPath}/assets/img/verification.png" class="img"></p>
    <hr align="center" size="6" width="800px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
    <div class="boxData">
        <p class="p1">ชื่อผู้จัดทำ : ${student.firstname} ${student.lastname}</p>
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
        <p>ปีการศึกษา : ${project.semester}</p>
        <p>ภาษาที่ใช้พัฒนา :${project.computer_lang}</p>
        <p>ชนิดฐานข้อมูล :${project.database_type}</p>
    </div>

    <div class="boxjob">
        <p class="textjob">ชื่อสมาชิก : ศศินา เฮงสิน</p>
        <p class="textjob">รหัสนักศึกษา : 6304106335</p>
        <p class="textjob">หน้าที่รับผิดชอบ : Test </p>
    </div>

    <div style="width:750px" class="boxtableviewpro">
    <table class="table table-hover">
        <thead class="table-warning">
        <tr>
            <th>หัวข้อ</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th style="width:500px"></th>
        </tr>
        </thead>
        <%
            if((pj.getProject_type().equals("web"))||(pj.getProject_type().equals("app"))) {%>
        <tr class="boxble">
            <td>บทคัดย่อ</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadAbstract"></a>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="button" style="margin-left: 100px"></a>
            </td>
        </tr>
        <tr class="boxble">
            <td>บทที่ 1 บทนำ</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <%--                    <input type="button" value="อัปโหลด" class="btn btn-success" />--%>
                <a href="${pageContext.request.contextPath}/project/${student.student_id}/upload"></a>
                    <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <tr class="boxble">
            <td>บทที่ 2 รายละเอียดทั่วไปของระบบ </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <tr class="boxble">
            <td>บทที่ 3 รายละเอียดความต้องการของระบบ (Specific Requirement) </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <tr class="boxble">
            <td>บทที่ 4 อีอาร์ไดอาแกรม (ER Diagram)</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <%} else {%>
        <tr class="boxble">
            <td>Test Case</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <a href="${pageContext.request.contextPath}/project/${student.student_id}/upload"></a>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <tr class="boxble">
            <td>Test Plan</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <tr class="boxble">
            <td>Test Design</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
        <%}%>
        <tr class="boxble">
            <td>เอกสารรายงานฉบับสมบูรณ์</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <img src="${pageContext.request.contextPath}/assets/img/printing.png" width="30px" type="submit" style="margin-left: 100px"></a>
            </td>
        </tr>
    </table>
</div>



</center>



<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
