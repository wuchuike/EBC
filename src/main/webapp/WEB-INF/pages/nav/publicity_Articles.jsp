<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/30
  Time: 13:21
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
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background: #ccffcc;
        }
        .page {
            background: #fff;
            /* Optional Gradient */
            background: -moz-linear-gradient(top,  #ffffff 0%, #e5e5e5 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e5e5e5)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* IE10+ */
            background: linear-gradient(top,  #ffffff 0%,#e5e5e5 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#e5e5e5',GradientType=0 ); /* IE6-9 */
        }
        .fold{
            position: relative;
            -webkit-box-shadow: 10px 10px 10px #888888;
            -moz-box-shadow: 10px 10px 10px #888888;
            box-shadow: 10px 10px 10px #888888;
        }

        .fold:before {
            content: "";
            position: absolute;
            border-bottom: 150px solid #eee;
            border-left: 150px solid whitesmoke;
            -webkit-box-shadow: 7px 7px 7px #888888;
            -moz-box-shadow: 7px 7px 7px #888888;
            box-shadow: 7px 7px 7px #888888;
        }
        .article a{
            text-decoration: none;
        }
    </style>

    <script>
        $(function (){
            $(".article").mouseover(function () {
                this.setAttribute("style","margin-top: 10px;background: #F0F8FF;" +
                    "box-shadow: 0 0 10px rgba(0,0,0,0.3);");
            }).mouseleave(function () {
                this.setAttribute("style","margin-top: 10px;background: #F0F8FF");
            })
        })
    </script>

</head>
<body>

<%@include file="../common/nav.jsp"%>

<div class="container" style="margin-top: 80px">
    <div class="page fold row">
        <div class="row"></div>
        <div class="row text-center" style="margin-top: 170px;margin-bottom: 60px">
            <h3>
                <strong style="font-family: 华文行楷,serif;font-size: 40px">
                    科普宣传文章
                </strong>
            </h3>
        </div>


        <c:forEach var="p" items="${requestScope.articleList}">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 row article"
                     style="margin-top: 10px;background: #F0F8FF;">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="margin-top: 10px;margin-bottom: 20px">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                            <img src="${pageContext.request.contextPath}/img/articles/${p.imgPath}"
                                 alt="..." class="img-responsive">
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-10 col-xs-10
                            col-lg-push-0 col-md-push-0 col-sm-push-1 col-xs-push-1">
                        <div class="row" style="margin-top: 10px">
                            <a href="${pageContext.request.contextPath}${p.transform}">
                                <h4>
                                    <strong style="font-family: 华文楷体,serif;font-size: 25px">
                                        ${p.title}
                                    </strong>
                                </h4>
                            </a>
                        </div>
                        <div class="row" style="margin-top: 20px">
                            <p class="text-left">
                                ${p.textArea}
                            </p>
                        </div>
                        <div class="row" style="margin-top: 10px;margin-bottom: 20px;color: #999999">
                            <p class="text-left">
                                ${p.declareDate}
                            </p>
                            <p class="text-right">
                                ${p.views}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>


        <div class="row text-center" style="margin-top: 60px;margin-bottom: 100px">
            <div class="ccol-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2 text-center">
                <nav aria-label="Page navigation" id="pageLi">
                    <ul class="pagination">
                        <li>
                            <c:if test="${requestScope.page.hasPrevious()}">
                                <a href="${pageContext.request.contextPath}/nav/publicityArticles?cup=${requestScope.pagePre}&ps=6" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </c:if>
                            <c:if test="${!requestScope.page.hasPrevious()}">
                                <a href="#" aria-label="Previous" style="pointer-events: none">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </c:if>
                        </li>
                        <c:forEach var="p" begin="1" end="${requestScope.pages}">
                            <c:if test="${requestScope.page.current==p}">
                                <li class="active">
                                    <a href="${pageContext.request.contextPath}/nav/publicityArticles?cup=${p}
                                        &ps=6">
                                            ${p}
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${requestScope.page.current!=p}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/nav/publicityArticles?cup=${p}
                                        &ps=6">
                                            ${p}
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                        <li>
                            <c:if test="${requestScope.page.hasNext()}">
                                <a href="${pageContext.request.contextPath}/nav/publicityArticles?cup=${requestScope.pageN}&ps=6"
                                   aria-label="Next" id="next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </c:if>
                            <c:if test="${!requestScope.page.hasNext()}">
                                <a href="#" aria-label="Next" id="next" style="pointer-events: none">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </c:if>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>


        <div class="row" style="margin-bottom: 100px"></div>

    </div>
</div>

<%@include file="../common/footer.jsp"%>

</body>
</html>
