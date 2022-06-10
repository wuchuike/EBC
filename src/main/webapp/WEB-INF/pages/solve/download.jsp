<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/23
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>EBC数据下载</title>
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
            <i class="bi bi-download" style="font-size: 30px;margin-left: 30px"></i>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
                <legend><strong>选择下载信息项</strong></legend>
            </fieldset>

            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">图片视频下载</li>
                    <li>批次信息下载</li>
                    <li>实验数据下载</li>
                    <li>kml文件下载</li>
                    <li>环境数据信息下载</li>
                    <li>工作流程信息下载</li>
                </ul>
                <div class="layui-tab-content" style="height: 100px;">
                    <div class="layui-tab-item layui-show">

                    </div>
                    <div class="layui-tab-item">内容2</div>
                    <div class="layui-tab-item">内容3</div>
                    <div class="layui-tab-item">内容4</div>
                    <div class="layui-tab-item">内容5</div>
                    <div class="layui-tab-item">内容6</div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>

</body>
</html>
