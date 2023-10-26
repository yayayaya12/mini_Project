<%@ page import="org.itsci.project.model.Project" %><%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 8/18/2023
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/project/viewFile.css"/>
    <title>ApprovedPerson</title>
</head>
<style>
    .boxtableapproved {
        border: 2px solid #d2d2d2;
        height: 525px;
        width: auto;
        margin-bottom: 30px;
    }

    .textapproved {
        color: #35B729;
    }
</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <p class="font">รายชื่อนักศึกษาที่ผ่านการอนุมัติ<img src="${pageContext.request.contextPath}/assets/img/verified.png" class="img"></p>
    <div class="hr">
        <hr align="center" size="4" width="500px" color="#a4743b">
    </div>

    <table class="table table-striped" style="width: 810px">
        <thead class="table-secondary">
        <tr>
            <tr>
                <th></th>
                <th>หัวข้อ</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th>วันที่อนุมัติ</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th>ผู้จัดทำ</th>
                <th style="width:200px"></th>
            </tr>
        </tr>
        </thead>


        <c:forEach var="project" items="${projects}">
                <tr  class="boxtableapproved" style="height: 50px">
                    <td></td>
                    <td>${project.thaiproject_name}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>${project.approve_date}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>${project.student.firstname} ${project.student.lastname}</td>
                    <td>
                        <p class="textapproved">ผ่านการอนุมัติสำเร็จ</p>
                    </td>
                </tr>
        </c:forEach>
        </div>
    </table>
    </div>
    <jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</center>
</body>
</html>
