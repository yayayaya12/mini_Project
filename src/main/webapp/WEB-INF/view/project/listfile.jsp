<%@ page import="org.itsci.project.model.Project" %>
<%@ page import="org.itsci.project.service.ProjectService" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 23/6/2566
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ListProject</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/css/project/listfile.css" rel="stylesheet"/>

</head>
<style>
    .boxtablelf {
        /*border: 2px solid #dac8b5;*/
        margin-bottom: 40px;
        background-color: #e5e5da;
        border: #6b6b6b;
    }

    .buttonlistf {
        background-color: #83714a;
        color: white;
        border: none;
        border-radius: 5px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        height: 36px;
        width: 35px;
        font-size: 16px;
        transition-duration: 0.4s;
    }

    .buttonlistf:hover {
        background-color: #c0a878;
    }

    .hrlist {
        margin-bottom: 30px;
    }
</style>

<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <div class="container">
        <h3 class="fontlist">เอกสารที่ต้องอัปโหลดทั้งหมด<img
                src="${pageContext.request.contextPath}/assets/img/archive.png" class="img"></h3>
        <hr align="center" size="6" width="500px" class="hrlist" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
        <div>
            <table class="table table-hover" style="width: 80%";>
                <thead class="table-secondary">
                <tr>
                    <th>หัวข้อ</th>
                    <th>วันที่ส่ง</th>
                    <th style="width:200px"></th>
                </tr>
                </thead>
                <%
                    Project pj = (Project) request.getAttribute("project");
                    if ((pj.getProject_type().equals("web")) || (pj.getProject_type().equals("app"))) {%>
                <tr class="boxtablelf">
                    <td>บทคัดย่อ</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/uploadAbstract"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewAbstract"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>บทที่ 1 บทนำ</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <%--                    <input type="button" value="อัปโหลด" class="btn btn-success" />--%>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/uploadFileType1"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFile1"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>บทที่ 2 รายละเอียดทั่วไปของระบบ</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileType2"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFile2"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>บทที่ 3 รายละเอียดความต้องการของระบบ (Specific Requirement)</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileType3"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFile3"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>บทที่ 4 อีอาร์ไดอาแกรม (ER Diagram)</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileType4"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFile4"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <%} else {%>
                <tr class="boxtablelf">
                    <td>Test Case</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileTypeTestCase"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFileTestCase"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>Test Plan</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileTypeTestPlan"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFileTestPlan"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>Test Design</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileTypeTestDesign"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFileTestDesign"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <%}%>
                <tr class="boxtablelf">
                    <td>เอกสารรายงานฉบับสมบูรณ์</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileTypeFull"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFileFull"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
                <tr class="boxtablelf">
                    <td>วิดีโอ</td>
                    <td></td>
                    <%if(pj.getApprovestatus().equals("YES")){
                    %>
                    <td>
                        <a href="${pageContext.request.contextPath}/project/${student.student_id}/uploadFileTypeVideo"
                           class="btn btn-success">อัปโหลด</a>
                        <a href="${pageContext.request.contextPath}/project/${project.project_id}/viewFileVideo"
                           class="btn btn-primary">ดู</a>
                    </td>
                    <%}else {%>
                    <td></td>
                    <%}%>
                </tr>
            </table>
        </div>
    </div>
</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
