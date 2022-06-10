<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/23
  Time: 15:29
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
<div class="container" id="cont" style="min-height: 600px;background: whitesmoke;margin-top: 70px;">
    <div class="row" style="min-height: 500px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10" style="margin-top: 20px">
            <i class="bi bi-search" style="font-size: 30px;margin-left: 30px;"></i>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
                <legend><strong>选择需要查询的信息</strong></legend>
            </fieldset>

            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">图片视频</li>
                    <li>批次信息</li>
                    <li>实验数据</li>
                    <li>kml</li>
                    <li>环境数据</li>
                    <li>物种名录</li>
                    <li>群落丰富度&种群密度</li>
                    <li>公共宣传与影像</li>
                    <li>其它</li>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <div class="layui-tab-item layui-show">

                    </div>
                    <div class="layui-tab-item">内容2</div>
                    <div class="layui-tab-item">内容3</div>
                    <div class="layui-tab-item">内容4</div>
                    <div class="layui-tab-item">内容5</div>
                    <div class="layui-tab-item">内容6</div>
                    <div class="layui-tab-item">内容7</div>
                    <div class="layui-tab-item">内容8</div>
                    <div class="layui-tab-item">内容9</div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>
