<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 18/6/2566
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/assets/css/student/view.css" rel="stylesheet"/>
    <title>ViewProfile</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <div class="picture"></div>
    <div class="box1">
        <p class="boxtabel">ข้อมูลส่วนตัว
            <img src="${pageContext.request.contextPath}/assets/img/people.png" class="img">
        </p>
        <hr align="center" size="6" width="800px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
        <table class="table table-striped">
            <tr>
                <td><label>ชื่อ-นามสกุล : </label></td>
                <td>${student.firstname} ${student.lastname}</td>
            </tr>
            <tr>
                <td><label>รหัสประจำตัว : </label></td>
                <td>${student.student_id}</td>
            </tr>
            <tr>
                <td><label>อีเมล : </label></td>
                <td>${student.email}</td>
            </tr>
            <tr>
                <td><label>เบอร์โทรศัพท์ : </label></td>
                <td>${student.phone}</td>
            </tr>
            <tr>
                <td><label>ประเภทของโครงงาน : </label></td>
                <td>${project.project_type}</td>
            </tr>
            <tr>
                <td><label>ชื่อโครงงานเทคโนโลยีสารสนเทศ : </label></td>
                <td>${project.thaiproject_name}</td>
            </tr>
            <tr>
                <td><label>หน้าที่ : </label></td>
                <td>${student.job_description}</td>
            </tr>
            <tr>
                <td><label>อาจารย์ที่ปรึกษา : </label></td>
                <td>${project.personnel.firstname} ${project.personnel.lastname}</td>
            </tr>
        </table>


        <p class="boxtabel">ข้อมูลโครงงานเทคโนโลยีสารสนเทศ</p>
        <hr align="center" size="4" width="300px" color="#5e3b20">

        <table class="table table-striped">
            <tr>
                <td><label>ชื่อโครงงานเทคโนโลยีสารสนเทศ : </label></td>
                <td>${project.thaiproject_name}</td>
            </tr>

            <tr>
                <td><label>สมาชิกผู้จัดทำคนที่ 1 : </label></td>
                <td>${student.firstname} ${student.lastname}</td>
            </tr>
            <tr>
                <td><label>หน้าที่สมาชิกผู้จัดทำคนที่ 1 : </label></td>
                <td>${student.job_description}</td>
            </tr>
        </table>
        <button class="btn btn-warning"
                onclick=window.location.href='${pageContext.request.contextPath}/student/${student.student_id}/update'>
            แก้ไข
        </button>
    </div>
</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
