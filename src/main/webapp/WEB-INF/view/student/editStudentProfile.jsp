<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 19/6/2566
  Time: 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/edit.css" rel="stylesheet"/>
    <title>EditStudent</title>
</head>
<style>
    .boxedit {
        background-color: #dabb96;
        border-radius: 8px;
        width: 40%;
        height: 400px;
        /*float: right;*/
        /*margin-right: 5%;*/
        margin-top: 20px;
    }
</style>
<script>
    function onEditClick(edit) {

        //----------ชื่อ---------------//
        var name = /^[ก-์\s]{2,50}$/;//ใช้ตรวจสอบทั้งชื่อและนามสกุล

        if (edit.firstname.value == "") {
            edit.firstname.focus();
            alert("กรุณากรอกชื่อ");
            return false;
        } else if (!edit.firstname.value.match(name)) {
            alert("กรุณากรอกชื่อให้ถูกต้อง");
            edit.firstname.value = "";
            edit.firstname.focus();
            return false;
        }
        //-------------นามสกุล---------------------//
        if (edit.lastname.value == "") {
            alert("กรุณากรอกนามสกุล");
            edit.lastname.focus();
            return false;
        } else if (!edit.lastname.value.match(name)) {
            alert("กรุณากรอกนามสกุลให้ถูกต้อง");
            edit.lastname.value = "";
            edit.lastname.focus();
            return false
        }
        var job = /^[A-Za-zก-์(.,#@)-]{1,100}$/;//ใช้ตรวจสอบทั้งชื่อและนามสกุล

        if (edit.job_description.value == "") {
            alert("กรุณากรอกหน้าที่รับผิดชอบ");
            edit.job_description.focus();
            return false;
        } else if (!edit.job_description.value.match(job)) {
            alert("กรุณากรอกหน้าที่รับผิดชอบให้ถูกต้อง");
            edit.job_description.value = "";
            edit.job_description.focus();
            return false
        }

        var phone = /^[0]{1}[1-9]{1}[0-9]{8,8}$/;
        if (edit.phone.value == "") {
            alert("กรุณากรอกเบอร์โทร");
            edit.phone.focus();
            return false;
        } else if (!edit.phone.value.match(phone)) {
            alert("กรุณากรอกเบอร์โทรให้ถูกต้อง");
            edit.phone.value = "";
            edit.phone.focus();
            return false;
        }


        var password = /^[A-Za-z0-9(@)]{5,10}$/;
        if (edit.password.value == "") {
            alert("กรุณากรอก password");
            edit.password.focus();
            return false;
        } else if (!edit.password.value.match(password)) {
            alert("กรุณากรอกรหัสผ่านเป็นภาษาอังกฤษ ตัวเลขและอักขระพิเศษ[ @_-. ]เท่านั้น จำนวน 5-10 ตัวอักษร");
            edit.password.value = "";
            edit.password.focus();
            return false;
        }
        return true;
    }
</script>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>

<center>
    <div class="boxedit">
        <p class="personal">ข้อมูลส่วนตัว<img src="${pageContext.request.contextPath}/assets/img/people.png" class="img">
        </p>
        <hr align="center" size="6" width="100px" style="background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(left, red , yellow); /* For Safari 5.1 to 6.0 */
  background: -o-linear-gradient(right, red, yellow); /* For Opera 11.1 to 12.0 */
  background: -moz-linear-gradient(right, red, yellow); /* For Firefox 3.6 to 15 */
  background: linear-gradient(to right, red , yellow); /* Standard syntax */">
        <div class="text">
            <form name="edit" action="${pageContext.request.contextPath}/student/${student.student_id}/save">

                <table class="table table-striped">
                    <tr>
                        <td><label>รหัสนักศึกษา : </label></td>
                        <td><input type="text" name="" value="${student.student_id}" disabled="true"/></td>
                    </tr>
                    <tr>
                        <td><label>อีเมล : </label></td>
                        <td><input type="text" name="email" value="${student.email}" disabled="true"/></td>
                    </tr>
                    <tr>
                        <td><label>คำนำหน้า : </label></td>
                        <td><input type="text" name="prefix" value="${student.prefix}" disabled="true"/></td>
                    </tr>
                    <tr>
                        <td><label>ชื่อ : </label></td>
                        <td><input type="text" name="firstname" value="${student.firstname}"/></td>
                    </tr>
                    <tr>
                        <td><label>นามสกุล : </label></td>
                        <td><input type="text" name="lastname" value="${student.lastname}"/></td>
                    </tr>
                    <tr>
                        <td><label>หน้าที่ : </label></td>
                        <td><input type="text" name="job_description" value="${student.job_description}"/></td>
                    </tr>
                    <tr>
                        <td><label>โทรศัพท์ : </label></td>
                        <td><input type="tel" name="phone" value="${student.phone}"/></td>
                    </tr>
                    <tr>
                        <td><label>รหัสผ่าน : </label></td>
                        <td><input type="password" name="password" value="${student.password}"/></td>
                    </tr>
                    <tr>
                        <td><label></label></td>
                        <td>
                            <input type="submit" onclick="return onEditClick(edit)" value="บันทึก"
                                   class="btn btn-success"/>
                        </td>
                    </tr>
                </table>

            </form>
        </div>

    </div>
</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
