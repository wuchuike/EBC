<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/23
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/jquery.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/css/bootstrap.min.css"
          crossorigin="anonymous">
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/bootstrap.min.js"
            crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/static/icons-1.8.1/font/bootstrap-icons.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/css/layui.css"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/layui.js"
            charset="utf-8"></script>

    <style>
        body{
            background: #ccffcc;
        }
        #cont{
            box-shadow: 1px 1px 1px 1px #888888;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%@include file="../common/toTop.jsp"%>
<%@include file="../common/nav.jsp"%>
<div class="container" id="cont" style="min-height: 800px;background: whitesmoke;margin-top: 70px;">
    <div class="row" style="min-height: 500px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10" style="margin-top: 20px">

        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1" style="margin-top: 55px;">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="font-size: 60px;color: lightskyblue">
                    &gt;&gt;&nbsp;数据生成
                </p>
            </div>
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
            col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2" style="margin-top: 50px;">
                <a href="" style="text-decoration: none">
                    <p style="font-size: 30px;color: lightskyblue;margin-top: 15px;">
                        &gt;&gt;&nbsp;红外相机工作日统计表
                    </p>
                </a>
                <a href="" style="text-decoration: none">
                    <p style="font-size: 30px;color: lightskyblue;margin-top: 15px;">
                        &gt;&gt;&nbsp;密度-xx年xx地区雪豹个体数表
                    </p>
                </a>
                <a href="" style="text-decoration: none">
                    <p style="font-size: 30px;color: lightskyblue;margin-top: 15px;">
                        &gt;&gt;&nbsp;群落丰富度&多样性计算表
                    </p>
                </a>
                <a href="" style="text-decoration: none">
                    <p style="font-size: 30px;color: lightskyblue;margin-top: 15px;">
                        &gt;&gt;&nbsp;物种名录
                    </p>
                </a>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>
