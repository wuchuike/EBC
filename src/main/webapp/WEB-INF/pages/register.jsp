<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/17
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ebcRegister</title>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/jquery.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css"
          crossorigin="anonymous">
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"
            crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/static/icons-1.8.1/font/bootstrap-icons.css"
          rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/layui.js"></script>

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
            background-image: url("${pageContext.request.contextPath}/img/register/MountEverest.jpg");
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
        .loginBox .inputBox .inputText #user-name{
            width: 170px;
        }
        .loginBox .inputBox .inputText #pass-word{
            width: 170px;
        }
        .loginBox .inputBox .inputText #check-pass{
            width: 170px;
        }
        .loginBox .inputBox .inputText #check-user{
            width: 13px;
            color: green;
            font-size: 20px;
        }
        .loginBox .inputBox .inputText #pass-span{
            width: 13px;
            color: green;
            font-size: 20px;
        }
        .loginBox .inputBox .inputText #check-pass-span{
            width: 13px;
            color: green;
            font-size: 20px;
        }
        .loginBox .inputBox .inputText #code{
            width: 87px;
        }
        .loginBox .inputBox .inputText img{
            width: 100px;
            height: 35px;
            margin-top: 18px;
            margin-left: 3px;
        }
        .loginBox .inputBox .inputBtn{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 25px;
            width: 150px;
            height: 35px;
            color: #fff;
            background: linear-gradient(120deg,#a6c0fe 0%,#f68884 100%);
            border-radius: 25px;
            cursor: pointer;
        }
        .loginBox .inputBox a{
            font-size: 16px;
            margin-top: 27px;
            margin-right: 15px;
            color: #3498db;
            text-decoration: none;
            cursor: pointer;
        }
    </style>

    <script type="text/javascript">
        $(function () {

            $("body").keyup(function (e) {
                if (e.keyCode===13){
                    $(".inputBtn").click();
                }
            })

            $(".inputBtn").on('click',function () {
                const username = $("#user-name").val();
                const password = $("#pass-word").val();
                const checkPass = $("#check-pass").val();
                const code = $("#code").val()
                if ($("#check-user").prop("class")==="glyphicon glyphicon-remove-circle"){
                    alert("??????????????????????????????")
                } else if (username==null||username==="") {
                    alert("??????????????????????????????")
                } else if (password===""||password===null) {
                    alert("??????????????????")
                } else if (password!==checkPass) {
                    alert("?????????????????????");
                } else if (code===null || code===""){
                    alert("??????????????????");
                } else {
                    $.ajax({
                        url:"${pageContext.request.contextPath}/saveEBCUser",
                        async: false,
                        type:"POST",
                        dataType:"json",
                        data:{"username":username,"password":password,"code":code},
                        error:function () {
                            alert("??????????????????????????????");
                        },
                        success:function (res) {
                            const r = res.toString();
                            if (r==="true") {
                                // ???????????????????????????
                                alert("????????????????????????");
                                window.location.href='login';
                            } else if(r === "false") {
                                alert("???????????????");
                                $("#img-f").attr("src","${pageContext.request.contextPath}/captcha.jpg");
                            }
                        }
                    })

                }
            });

            // ???????????????????????????
            $("#img-f").on('click',function () {
                // new Date???????????????????????????????????????
                const random = (Math.random() * 10000).toString();
                this.src = "${pageContext.request.contextPath}/captcha.jpg?solve=" + random;
            })

            // ?????????????????????????????????????????????????????????????????????
            $("#check-pass").keyup(function () {
                const password = $("#pass-word").val();
                const checkPass = $("#check-pass").val();
                if (password===checkPass && password!=="") {
                    $("#pass-span").attr("class","glyphicon glyphicon-ok-circle").css({
                        "width":"13px",
                        "color":"green",
                        "font-size":"20px"
                    });
                    $("#check-pass-span").attr("class","glyphicon glyphicon-ok-circle").css({
                        "width":"13px",
                        "color":"green",
                        "font-size":"20px"
                    });
                } else {
                    $("#pass-span").attr("class","glyphicon glyphicon-remove-circle").css({
                        "width":"13px",
                        "color":"red",
                        "font-size":"20px"
                    });
                    $("#check-pass-span").attr("class","glyphicon glyphicon-remove-circle").css({
                        "width":"13px",
                        "color":"red",
                        "font-size":"20px"
                    });
                }
            })

            // ??????????????????????????????????????????????????????????????????
            $("#user-name").blur(function () {
                const username = this.value;
                $.getJSON("${pageContext.request.contextPath}/checkEBCUser",{"username":username},function (e) {
                    const exist = e.toString();
                    if (exist ==="true" && username!=="") {
                        // ??????
                        $("#check-user").attr("class","glyphicon glyphicon-ok-circle").css({
                            "width":"13px",
                            "color":"green",
                            "font-size":"20px"
                        });
                    } else {
                        $("#check-user").attr("class","glyphicon glyphicon-remove-circle").css({
                            "width":"13px",
                            "color":"red",
                            "font-size":"20px"
                        });
                    }
                })
            })

        })
    </script>

</head>

<body>

<div class="loginBox">
    <h1>??????<br></h1>
    <div class="inputBox">
        <div class="inputText">
            <span class="glyphicon glyphicon-user"></span>
            <input type="text" name="username" placeholder="??????" id="user-name">
            <span id="check-user" class=""></span>
        </div>
        <div class="inputText">
            <span class="glyphicon glyphicon-lock"></span>
            <input type="password" name="password" placeholder="???????????????32??????" id="pass-word">
            <span id="pass-span" class=""></span>
        </div>
        <div class="inputText">
            <span class="glyphicon glyphicon-lock"></span>
            <input type="password" name="checkPassword" placeholder="????????????" id="check-pass">
            <span id="check-pass-span" class=""></span>
        </div>
        <div class="inputText">
            <span class="bi bi-shield-lock-fill"></span>
            <input type="text" name="code" id="code" placeholder="?????????">
            <img src="${pageContext.request.contextPath}/captcha.jpg" alt="" id="img-f"><br>
        </div>
        <a href="${pageContext.request.contextPath}/login">&lt;??????</a>
        <div class="inputBtn">
            ??????
        </div>
    </div>
</div>


</body>

</html>
