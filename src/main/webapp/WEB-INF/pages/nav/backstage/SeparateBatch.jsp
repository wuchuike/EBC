<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/6/9
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>数据批次</title>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/jquery.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/roboto.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/material-design.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/small-n-flat.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/static/assets/js/lib/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.mousewheel.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.cookie.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/fastclick.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/clearmin.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/css/layui.css"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/layui.js"
            charset="utf-8"></script>


    <style>
        body{
            background-color: #ccffcc;
        }
        #left-list li a {
            background-color: #34495e;
            border: none;
        }
        #left-list li a strong{
            color: whitesmoke;
        }
        #left-list li {
            border: none;
        }
        #left-list li ul{
            border: none;
        }
        #left-list li ul li{
            border: none;
        }
        #left-list li ul li a{
            border: none;
        }
    </style>


    <script>
        $(function () {
            const $title = $(document).attr("title");
            if ($title === "后台管理") {
                $("#backstage_1").addClass("active");
            } else if ($title === "用户管理") {
                $("#backstage_2").addClass("active");
            } else if ($title === "动态管理") {
                $("#backstage_3").addClass("active");
            } else if ($title === "学术文章") {
                $("#backstage_4").addClass("active");
            } else if ($title === "宣传文章") {
                $("#backstage_5").addClass("active");
            } else if ($title === "动物影像") {
                $("#backstage_6").addClass("active");
            } else if ($title === "数据批次") {
                $("#backstage_7").addClass("active");
            }
        })
    </script>
</head>
<body>
<%@include file="../../common/backstageNav.jsp"%>
</body>
</html>
