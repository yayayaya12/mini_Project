<%@ page import="org.itsci.project.model.Project" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %><%--

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/advisor/listProject.css"/>
    <title>List Project</title>
</head>
<style>
    .font {
        font-size: 30px;
        margin-top: 60px;
    }

    .boxtablelist {
        border: 2px solid #eaeaea;
        height: 525px;
        width: auto;
        margin-bottom: 30px;
        background-color: #f5f3f3;
    }

    .hrlistPro {
        margin-bottom: 30px;
    }
</style>
<script>
    function myFunction() {
        alert("อนุมัติสำเร็จ!!");
    }
</script>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<center>
    <h3 class="font">รายชื่อทั้งหมด<img src="${pageContext.request.contextPath}/assets/img/account.png" class="img" height="50px"></h3>
    <hr align="center" size="6" width="500px" class="hrlistPro" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
    <div class="listProject" style="  width: 90%;
    margin-bottom: 100px;">
        <table class="table table-hover">
            <thead class="table-secondary">
            <tr>
                <th></th>
                <th>หัวข้อ</th>
                <th></th>
                <th></th>
                <th>ผู้จัดทำ</th>
                <th style="width:300px"></th>
            </tr>
            </thead>
                <%
                List<Project> pj =  (List<Project>) request.getAttribute("projects");
                int i = 0;
                %>

            <c:forEach var="project" items="${projects}">
            <tr class="boxtablelist" style="height: 50px">
                <td></td>
                <td>${project.thaiproject_name}</td>
                <td></td>
                <td></td>

                <td>${project.student.firstname} ${project.student.lastname}</td>
                <%

                    if (pj.get(i).getApprovestatus().equals("YES")) {
                %>
                <td>
                    <a href="${pageContext.request.contextPath}/advisor/${project.student.student_id}/view"
                       class="btn btn-success" style="margin-left: 70px">ดู</a>
                </td>
                <%} else {%>
                <td>
                    <a href="${pageContext.request.contextPath}/advisor/${project.student.student_id}/view"
                       class="btn btn-success" style="margin-left: 70px">ดู</a>
                    <a href="${pageContext.request.contextPath}/advisor/${project.student.student_id}/approve"
                       class="btn btn-danger" onclick="myFunction()" style="margin-left: 10px">อนุมัติ</a>
                        <%--                    <input type="submit" value="อนุมัติ" class="btn btn-danger"/>--%>
                </td>
                <%
                    }
                    i = i + 1;
                %>


            </tr>
            </c:forEach>
    </div>
    </table>
    </div>
    <jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</center>
</body>
</html>
