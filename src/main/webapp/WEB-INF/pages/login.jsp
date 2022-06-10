<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/15
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ebcLogin</title>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/jquery.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css"
          crossorigin="anonymous">
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"
            crossorigin="anonymous"></script>
    <style type="text/css">
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            min-height: 100vh;
            background-image: url("${pageContext.request.contextPath}/img/login/MountEverest.jpg");
            background-position: center;
            background-size: cover;
            overflow: hidden;
        }
        .loginBox{
            display: flex;
            justify-content: center;
            align-content: space-around;
            flex-wrap: wrap;
            width: 600px;
            height: 400px;
            background-color: rgba(0,0,0,.5);
            border: 10px;
            padding: 20px 50px;
            border-radius: 20px;
        }
        .loginBox h1{
            width: 100%;
            display: flex;
            justify-content: center;
            color: #fff;
            font-size: 30px;
        }
        .loginBox .inputBox{
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            transform: translateY(-35px);
        }
        .loginBox .inputBox .inputText{
            width: 100%;
            display: flex;
            justify-content: center;
        }
        .loginBox .inputBox .inputText span{
            color: white;
            font-size: 15px;
            margin-top: 30px;
        }
        .loginBox .inputBox .inputText input{
            border: 0;
            padding: 6px;
            border-bottom: 1px solid white;
            background-color: #ffffff00;
            color: #fff;
            margin-top: 20px;
        }
        .loginBox .inputBox .inputBtn{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 30px;
            width: 150px;
            height: 30px;
            color: #fff;
            background: linear-gradient(120deg,#a6c0fe 0%,#f68884 100%);
            border-radius: 25px;
            cursor: pointer;
        }
        #login{
            margin-top: 30px;
            width: 170px;
            height: 35px;
        }
        .loginBox .inputBox .signup{
            width: 100%;
            height: 10px;
            display: flex;
            justify-content: center;
            margin-top: 40px;
            color: white;
            font-size: 15px;
        }
        .loginBox .inputBox .signup a{
            color: #3498db;
            text-decoration: none;
            cursor: pointer;
            font-size: 15px;
        }
    </style>

    <script type="text/javascript">
        $(function () {

            $("body").keyup(function (e) {
                if (e.keyCode===13){
                    $(".inputBtn").click()
                }
            })

            $(".inputBtn").on('click', function () {
                const username = $("#user-name").val();
                const password = $("#pass-word").val();
                const rememberMe = $("#remember-me").is(":checked");
                if (username===""||password===""||username===null||password===null) {
                    alert("用户名（账号），密码不能为空");
                    return;
                }
                $.ajax({
                    url : "${pageContext.request.contextPath}/checkLogin",
                    type : "POST",
                    dataType : "json",
                    data:{"username":username,"password":password},
                    error:function () {

                    },
                    success:function (res) {
                        const r = res.toString()
                        if (r==="false"){
                            alert("用户名或密码输入错误！")
                        } else {
                            window.location.href = 'toIndex'
                        }
                    }
                })
            });



        })
    </script>

</head>

<body>

<div class="loginBox">
    <h1>登录<br></h1>
    <div class="inputBox">
        <div class="inputText">
            <span class="glyphicon glyphicon-user"></span>
            <input type="text" name="username" placeholder="账号" id="user-name">
        </div>
        <div class="inputText">
            <span class="glyphicon glyphicon-lock"></span>
            <input type="password" name="password" placeholder="密码" id="pass-word">
        </div>
        <div class="inputBtn" id="login">
            登录
        </div>
        <div class="signup">
            <a href="${pageContext.request.contextPath}/toRegister">注册</a>
            <a href="${pageContext.request.contextPath}/toRegister" style="margin-left: 30px">
                找回密码
            </a>
        </div>
    </div>
</div>


</body>

</html>