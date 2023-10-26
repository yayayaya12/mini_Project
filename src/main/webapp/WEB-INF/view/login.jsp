<%--
  Created by IntelliJ IDEA.
  User: Juthamas
  Date: 9/7/2023
  Time: 10:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.rtl.min.css"
          integrity="sha384-gXt9imSW0VcJVHezoNQsP+TNrjYXoGcrqBZJpry9zJt8PCQjobwmhMGaDHTASo9N" crossorigin="anonymous">
<%--    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">--%>
    <link href="${pageContext.request.contextPath}/assets/css/Login.css " rel="stylesheet"/>
    <title>Login</title>
</head>
<style>
    .login button,
    .signup button{
        background-color: #35B729;
        border: none;
        color:white;
        font-size: 12px;
        font-weight: 300;
        box-sizing: content-box;
        padding:10px;
        border-radius: 10px;
        width: 60px;
        position: absolute;
        right:30px;
        bottom: 10px;
        cursor: pointer;
        margin-top: 140px;
        margin-right: 460px;
    }

    .signup button:hover {
        background-color: #15620e;
        color:white;
    }
</style>
<script>
    function onLoginClick(login){
        var username = /^[A-Za-z0-9(@.)]{4,20}$/;
        if (login.username.value == "") {
            alert("กรุณากรอก username");
            return false;
        }else if (!login.username.value.match(username)) {
            alert("กรุณากรอก username เป็นภาษาอังกฤษและตัวเลขเท่านั้น โดยมีความยาวไม่เกิน 20 ตัวอักษร");
            login.username.value = "";
            return false;
        }
        var password = /^[A-Za-z0-9(@)]{5,10}$/;
        if (login.password.value == "") {
            alert("กรุณากรอก password");
            return false;
        }else if (!login.password.value.match(password)) {
            alert("กรุณากรอก password เป็นภาษาอังกฤษ ตัวเลขและอักขระพิเศษ[@]ได้เท่านั้น โดยมีความยาวไม่เกิน 12 ตัวอักษร");
            login.password.value = "";
            return false;
        }
        return true;
    }


    // Show/hide password onClick of button using Javascript only

    // https://stackoverflow.com/questions/31224651/show-hide-password-onclick-of-button-using-javascript-only

    // function show() {
    //     var p = document.getElementById('pwd');
    //     p.setAttribute('type', 'text');
    // }
    //
    // function hide() {
    //     var p = document.getElementById('pwd');
    //     p.setAttribute('type', 'password');
    // }
    //
    // var pwShown = 0;
    //
    // document.getElementById("eye").addEventListener("click", function () {
    //     if (pwShown == 0) {
    //         pwShown = 1;
    //         show();
    //     } else {
    //         pwShown = 0;
    //         hide();
    //     }
    // }, false);


</script>
<style>
    .frontbox{
        margin-top: 100px;
        /*position: absolute;*/
        background-color: #dcdbdb;
        width: 30%;
        height: 60%;
        margin-bottom: 30px;
        border-radius: 20px;
    }

    .inputbox {
        margin-top: 10px;
        width: 360px;
    }

    .login input,
    .signup input {
        display: block;
        width: 100%;
        height: 40px;
        background-color: #f2f2f2;
        border: none;
        margin-bottom:20px;
        font-size: 14px;
    }

    .loginMsg .title,
    .signupMsg .title{
        font-weight: 300;
        font-size: 23px;
    }

    .loginMsg p,
    .signupMsg p {
        font-weight: 100;
    }

    .loginMsg button,
    .signupMsg button {
        background-color: #404040;
        border: 2px solid white;
        border-radius: 10px;
        color:white;
        font-size: 12px;
        box-sizing: content-box;
        font-weight: 300;
        padding:10px;
        margin-top: -270px;
    }

    .login h2,
    .signup h2 {
        color: #35B729;
        font-size:22px;
    }

    /*/* front box content*/*/
    .login, .signup{
        padding: 10px;
        text-align: center;
    }


    /* Fade In & Out*/
    .login p {
        cursor: pointer;
        color:#404040;
        font-size:15px;
        font-family: MI COCOA THIN;
    }

    .loginMsg, .signupMsg{
        /*opacity: 1;*/
        transition: opacity .8s ease-in-out;
    }

    .visibility{
        opacity: 0;
    }

    .hide{
        display: none;
    }

    .backgroundlog {
    }

    .img {
        margin-left: 200px;
        height: 140px;
        margin-top: 200px;
    }




    /* Fonts Form Google Font ::- https://fonts.google.com/  -:: */
    /*@import url('https://fonts.googleapis.com/css?family=Abel|Abril+Fatface|Alegreya|Arima+Madurai|Dancing+Script|Dosis|Merriweather|Oleo+Script|Overlock|PT+Serif|Pacifico|Playball|Playfair+Display|Share|Unica+One|Vibur');*/
    /*!* End Fonts *!*/
    /*!* Start Global rules *!*/
    /** {*/
    /*    padding: 0;*/
    /*    margin: 0;*/
    /*    box-sizing: border-box;*/
    /*}*/
    /*!* End Global rules *!*/

    /*!* Start body rules *!*/
    /*body {*/
    /*    background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);*/
    /*    background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%);*/
    /*    background-attachment: fixed;*/
    /*    background-repeat: no-repeat;*/

    /*    font-family: 'Vibur', cursive;*/
    /*    !*   the main font *!*/
    /*    font-family: 'Abel', sans-serif;*/
    /*    opacity: .95;*/
    /*    !* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); *!*/
    /*}*/



    /*!* |||||||||||||||||||||||||||||||||||||||||||||*!*/
    /*!* //////////////////////////////////////////// *!*/




    /*!* End body rules *!*/

    /*!* Start form  attributes *!*/
    /*form {*/
    /*    width: 450px;*/
    /*    min-height: 500px;*/
    /*    height: auto;*/
    /*    border-radius: 5px;*/
    /*    margin: 2% auto;*/
    /*    box-shadow: 0 9px 50px hsla(20, 67%, 75%, 0.31);*/
    /*    padding: 2%;*/
    /*    background-image: linear-gradient(-225deg, #E3FDF5 50%, #FFE6FA 50%);*/
    /*}*/
    /*!* form Container *!*/
    /*form .con {*/
    /*    display: -webkit-flex;*/
    /*    display: flex;*/

    /*    -webkit-justify-content: space-around;*/
    /*    justify-content: space-around;*/

    /*    -webkit-flex-wrap: wrap;*/
    /*    flex-wrap: wrap;*/

    /*    margin: 0 auto;*/
    /*}*/

    /*!* the header form form *!*/
    /*header {*/
    /*    margin: 2% auto 10% auto;*/
    /*    text-align: center;*/
    /*}*/
    /*!* Login title form form *!*/
    /*header h2 {*/
    /*    font-size: 250%;*/
    /*    font-family: 'Playfair Display', serif;*/
    /*    color: #3e403f;*/
    /*}*/
    /*!*  A welcome message or an explanation of the login form *!*/
    /*header p {letter-spacing: 0.05em;}*/



    /*!* //////////////////////////////////////////// *!*/
    /*!* //////////////////////////////////////////// *!*/


    /*.input-item {*/
    /*    background: #fff;*/
    /*    color: #333;*/
    /*    padding: 14.5px 0px 15px 9px;*/
    /*    border-radius: 5px 0px 0px 5px;*/
    /*}*/



    /*!* Show/hide password Font Icon *!*/
    /*#eye {*/
    /*    background: #fff;*/
    /*    color: #333;*/

    /*    margin: 5.9px 0 0 0;*/
    /*    margin-left: -20px;*/
    /*    padding: 15px 9px 19px 0px;*/
    /*    border-radius: 0px 5px 5px 0px;*/

    /*    float: right;*/
    /*    position: relative;*/
    /*    right: 1%;*/
    /*    top: -.2%;*/
    /*    z-index: 5;*/

    /*    cursor: pointer;*/
    /*}*/
    /*!* inputs form  *!*/
    /*input[class="form-input"]{*/
    /*    width: 240px;*/
    /*    height: 50px;*/

    /*    margin-top: 2%;*/
    /*    padding: 15px;*/

    /*    font-size: 16px;*/
    /*    font-family: 'Abel', sans-serif;*/
    /*    color: #5E6472;*/

    /*    outline: none;*/
    /*    border: none;*/

    /*    border-radius: 0px 5px 5px 0px;*/
    /*    transition: 0.2s linear;*/

    /*}*/
    /*input[id="txt-input"] {width: 250px;}*/
    /*!* focus  *!*/
    /*input:focus {*/
    /*    transform: translateX(-2px);*/
    /*    border-radius: 5px;*/
    /*}*/

    /*!* //////////////////////////////////////////// *!*/
    /*!* //////////////////////////////////////////// *!*/

    /*!* input[type="text"] {min-width: 250px;} *!*/
    /*!* buttons  *!*/
    /*button {*/
    /*    display: inline-block;*/
    /*    color: #252537;*/

    /*    width: 280px;*/
    /*    height: 50px;*/

    /*    padding: 0 20px;*/
    /*    background: #fff;*/
    /*    border-radius: 5px;*/

    /*    outline: none;*/
    /*    border: none;*/

    /*    cursor: pointer;*/
    /*    text-align: center;*/
    /*    transition: all 0.2s linear;*/

    /*    margin: 7% auto;*/
    /*    letter-spacing: 0.05em;*/
    /*}*/
    /*!* Submits *!*/
    /*.submits {*/
    /*    width: 48%;*/
    /*    display: inline-block;*/
    /*    float: left;*/
    /*    margin-left: 2%;*/
    /*}*/

    /*!*       Forgot Password button FAF3DD  *!*/
    /*.frgt-pass {background: transparent;}*/

    /*!*     Sign Up button  *!*/
    /*.sign-up {background: #B8F2E6;}*/


    /*!* buttons hover *!*/
    /*button:hover {*/
    /*    transform: translatey(3px);*/
    /*    box-shadow: none;*/
    /*}*/

    /*!* buttons hover Animation *!*/
    /*button:hover {*/
    /*    animation: ani9 0.4s ease-in-out infinite alternate;*/
    /*}*/
    /*@keyframes ani9 {*/
    /*    0% {*/
    /*        transform: translateY(3px);*/
    /*    }*/
    /*    100% {*/
    /*        transform: translateY(5px);*/
    /*    }*/
    /*}*/

</style>
<body>
<jsp:include page="/WEB-INF/view/layouts/navbar.jsp"/>
<%--<img src="${pageContext.request.contextPath}/assets/img/ITsci.png" class="img">--%>
<center>
<%--    <div class="container">--%>
<%--        <div class="backbox">--%>
<%--            <div class="loginMsg">--%>
<%--                <div class="textcontent">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="signupMsg visibility">--%>
<%--                <div class="textcontent">--%>
<%--                    <button id="switch2">LOG IN</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- backbox -->

        <div class="frontbox">
            <img src="${pageContext.request.contextPath}/assets/img/private.png" width="100px">
            <div class="login">
                <form action="${pageContext.request.contextPath}/home" name="login">
<%--                    <h2>LOG IN</h2>--%>
                    <div class="inputbox">
                        <input type="text" name="username" placeholder="username"/>
                        <input type="password" name="password" placeholder="password" maxlength="12"/>
                    </div>
        <button type="submit" onclick="return onLoginClick(login)" class="login">LOG IN</button>
                </form>
                <%--                <a href="${pageContext.request.contextPath}/project/${}/upload" class="btn btn-success">อัปโหลด</a>--%>
            </div>

        </div>
        <!-- frontbox -->
    </div>



<%--    <div class="overlay">--%>
<%--        <!-- LOGN IN FORM by Omar Dsoky -->--%>
<%--        <form>--%>
<%--            <!--   con = Container  for items in the form-->--%>
<%--            <div class="con">--%>
<%--                <!--     Start  header Content  -->--%>
<%--                <header class="head-form">--%>
<%--                    <form action="${pageContext.request.contextPath}/home" name="login">--%>
<%--                                            <h2>LOG IN</h2>--%>
<%--                    <!--     A welcome message or an explanation of the login form -->--%>
<%--                </header>--%>
<%--                <!--     End  header Content  -->--%>
<%--                <br>--%>
<%--                <div class="field-set">--%>

<%--                    <!--   user name -->--%>
<%--                    <span class="input-item">--%>
<%--           <i class="fa fa-user-circle"></i>--%>
<%--         </span>--%>
<%--                    <!--   user name Input-->--%>
<%--                    <input class="form-input" id="txt-input" type="text" placeholder="@UserName" required>--%>

<%--                    <br>--%>

<%--                    <!--   Password -->--%>

<%--                    <span class="input-item">--%>
<%--        <i class="fa fa-key"></i>--%>
<%--       </span>--%>
<%--                    <!--   Password Input-->--%>
<%--                    <input class="form-input" type="password" placeholder="Password" id="pwd"  name="password" required>--%>

<%--                    <!--      Show/hide password  -->--%>
<%--                    <span>--%>
<%--        <i class="fa fa-eye" aria-hidden="true"  type="button" id="eye"></i>--%>
<%--     </span>--%>


<%--                    <br>--%>
<%--                    <!--        buttons -->--%>
<%--                    <!--      button LogIn -->--%>
<%--                    <button class="log-in"> Log In </button>--%>
<%--                </div>--%>

<%--                <!--   other buttons -->--%>
<%--                <div class="other">--%>
<%--                    <!--      Forgot Password button-->--%>
<%--                    <button class="btn submits frgt-pass">Forgot Password</button>--%>
<%--                    <!--     Sign Up button -->--%>
<%--                    <button class="btn submits sign-up">Sign Up--%>
<%--                        <!--         Sign Up font icon -->--%>
<%--                        <i class="fa fa-user-plus" aria-hidden="true"></i>--%>
<%--                    </button>--%>
<%--                    <!--      End Other the Division -->--%>
<%--                </div>--%>

<%--                <!--   End Conrainer  -->--%>
<%--            </div>--%>

<%--            <!-- End Form -->--%>
<%--        </form>--%>
<%--    </div>--%>
</center>
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>
