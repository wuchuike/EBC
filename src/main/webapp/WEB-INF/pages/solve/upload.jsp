<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/23
  Time: 14:59
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

    <style>
        body{
            background: #ccffcc;
        }
        #container-solve{
            margin-top: 50px;
        }
        .damu-thumbnail img{
            width: 150px;
            height: 150px;
        }
    </style>


    <script>
        $(function () {
            $("#upload-data").click(function () {
                window.location.href = 'uploadFolder'
            })
            $("#download-data").click(function () {
                window.location.href = 'uploadFiles'
            })
            $("#search-data").click(function () {
                window.location.href = 'uploadFile'
            })
            $("#generation-data").click(function () {
                window.location.href = 'uploadExperiment'
            })
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })
        })
    </script>
</head>
<body>
<%@include file="../common/nav.jsp"%>
<!--四大功能模块-->
<div class="container" id="container-solve" style="margin-top: 150px">
    <div class="row">
        <p class="text-center" style="font-family: 华文行楷,serif;font-size: 40px">
            <strong>选择上传方式</strong>
        </p>
    </div>
    <div class="row" style="margin-top: 50px">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="upload-data"
             data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
            <a class="btn btn-outline-success btn-sm caption-h4">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/upload-img/folder.png"
                             alt="..." class="img-responsive">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <strong style="font-size: 17px">文件夹上传</strong>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="download-data"
             data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
            <a class="btn btn-outline-success btn-sm caption-h4">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/upload-img/files.png"
                             alt="..." class="img-responsive">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <strong style="font-size: 17px">多文件上传</strong>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="search-data"
             data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
            <a class="btn btn-outline-success btn-sm caption-h4">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/upload-img/file.png"
                             alt="..." class="img-responsive">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <strong style="font-size: 17px">单文件上传</strong>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="generation-data"
             data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">
            <a class="btn btn-outline-success btn-sm caption-h4">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/upload-img/Experiment.png"
                             alt="..." class="img-responsive">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <strong style="font-size: 17px">实验和其它数据上传</strong>
                    </div>
                </div>
            </a>
        </div>

    </div>
</div>
</body>
</html>
