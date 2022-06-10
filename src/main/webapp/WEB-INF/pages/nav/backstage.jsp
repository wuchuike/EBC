<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/5/16
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <title>后台管理</title>
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

    <style>
        body{
            background-color: #ccffcc;
        }
        #logo{
            width: 200px;
            height: 50px;
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
        #left-list{
            border: none;
        }
    </style>

    <script>
        $(function () {
            const $title = $(document).attr("title");
            if ($title==="后台管理") {
                $("#backstage_1").addClass("active");
            } else if ($title==="用户管理") {
                $("#backstage_2").addClass("active");
            } else if ($title==="动态管理") {
                $("#backstage_3").addClass("active");
            } else if ($title==="学术文章") {
                $("#backstage_4").addClass("active");
            } else if ($title==="宣传文章") {
                $("#backstage_5").addClass("active");
            } else if ($title==="动物影像") {
                $("#backstage_6").addClass("active");
            } else if ($title==="数据批次") {
                $("#backstage_7").addClass("active");
            }
        })
    </script>

</head>
<body class="cm-no-transition cm-1-navbar">

    <%@include file="../common/toTop.jsp"%>

    <%@include file="../common/backstageNav.jsp"%>

    <div id="global">
        <div class="container-fluid">
            <div class="row cm-fix-height">
                <div class="col-sm-12">
                    <div class="panel panel-default" style="background-color: whitesmoke">
                        <div class="panel-body">
                            <h4>
                                <strong style="font-family: 华文楷体,serif;font-size: 23px">
                                    EBC后台管理
                                </strong>
                            </h4>
                            <p style="text-indent: 2em;margin-top: 25px">
                                后台管理页面用于管理EBC数据页面访问，权限分发，EBC用户、动态、学术文章、宣传文章、
                                野生动物影像、EBC数据分批的增删改。
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row cm-fix-height">
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src="${pageContext.request.contextPath}/img/backstage/users.png"
                                 alt="Components" class="img-responsive center-block"
                                 style="width: 180px;height: 115px">
                            <br>
                            <p style="text-indent: 2em">
                                用户管理，对EBC的所有用户进行管理，修改用户信息，增加用户，删除用户，用户的权限分
                                配，查看所有用户功能，根据条件查询用户（根据权限名，权限类型，用户名，注册日期等查询用户）
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src="${pageContext.request.contextPath}/img/backstage/article.png"
                                 alt="Components" class="img-responsive center-block"
                                 style="width: 180px;height: 115px">
                            <br>
                            <p style="text-indent: 2em">
                                动态管理，学术文章，宣传文章，野生动物影像都可以动态地修改其信息，标题的修改，
                                副标题修改，内容简介修改，跳转页面的修改，内容的增加，删除操作。
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <img src="${pageContext.request.contextPath}/img/backstage/batch.png"
                                 alt="Components" class="img-responsive center-block"
                                 style="width: 180px;height: 115px">
                            <br>
                            <p style="text-indent: 2em">
                                数据批次管理，根据EBC管理员自行拟定的规则进行数据的批次的划分，一个数据批次含有的
                                内容为图片视频，外业记录表，物种分拣表，个体识别表，先创建批次才能上传。
                            </p>
                        </div>
                    </div>
                </div>
            </div>



            <div class="row cm-fix-height">
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                    <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                        <div class="panel-body text-center">
                            <span class="svg-48">
                                <img src="${pageContext.request.contextPath}/static/assets/img/sf/user-id.svg"
                                     alt="dashboard">
                            </span>
                            <h4>用户管理</h4>
                            <small>跳转到用户管理</small>
                        </div>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                    <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                        <div class="panel-body text-center">
                            <span class="svg-48">
                                <img src="${pageContext.request.contextPath}/static/assets/img/sf/bullhorn.svg"
                                     alt="dashboard">
                            </span>
                            <h4>动态管理</h4>
                            <small>前往动态管理</small>
                        </div>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                    <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                        <div class="panel-body text-center">
                            <span class="svg-48">
                                <img src="${pageContext.request.contextPath}/static/assets/img/sf/address-book.svg"
                                     alt="dashboard">
                            </span>
                            <h4>学术文章</h4>
                            <small>前往学术文章，学术成果管理</small>
                        </div>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                    <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                        <div class="panel-body text-center">
                            <span class="svg-48">
                                <img src="${pageContext.request.contextPath}/static/assets/img/sf/book-bookmark.svg"
                                     alt="dashboard">
                            </span>
                            <h4>宣传文章</h4>
                            <small>前往科普宣传文章管理</small>
                        </div>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                    <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                        <div class="panel-body text-center">
                            <span class="svg-48">
                                <img src="${pageContext.request.contextPath}/static/assets/img/sf/device-tv.svg"
                                     alt="dashboard">
                            </span>
                            <h4>动物影像</h4>
                            <small>前往野生动物影像管理</small>
                        </div>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                    <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                        <div class="panel-body text-center">
                            <span class="svg-48">
                                <img src="${pageContext.request.contextPath}/static/assets/img/sf/box.svg"
                                     alt="dashboard">
                            </span>
                            <h4>批次管理</h4>
                            <small>前往数据批次管理</small>
                        </div>
                    </a>
                </div>
            </div>

        </div>
        <footer class="cm-footer"><span class="pull-left">root用户</span><span class="pull-right">&copy; EBC</span></footer>
    </div>


</body>
</html>
