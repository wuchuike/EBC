<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/30
  Time: 12:22
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
        #body-text{
            margin-top: 80px;
        }
    </style>

    <script>
        $(function () {

        })
    </script>

</head>
<body>


<%@include file="../common/nav.jsp"%>

    <div class="container" id="body-text" style="background-color: whitesmoke;">
        <div class="row text-center" style="margin-top: 50px;margin-bottom: 50px">
            <h3>我们的最新动态</h3>
        </div>

        <div id="show">
            <c:forEach items="${requestScope.dList}" var="list">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1" style="margin-bottom: 50px;margin-top: 50px">
                    <div class="row" >
                        <div class="col-lg-3 col-md-3 col-sm-8 col-xs-8
                        col-lg-push-0 col-md-push-0 col-sm-push-2 col-xs-push-2">
                            <a href="${list.transform}">
                                <img src="${pageContext.request.contextPath}/img/newestDynamic/${list.imgPath}"
                                     alt="..." class="img-responsive" style="width: 200px;height: 150px">
                            </a>
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-left">
                            <div class="row" style="margin-top: 10px">
                                <h4><a href="${list.transform}">
                                    <strong style="font-size: 20px;">
                                            ${list.title}
                                    </strong>
                                </a></h4>
                            </div>
                            <div class="row" style="margin-top: 10px">
                                <p style="text-indent: 2em">
                                        ${list.textArea}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>




        <div class="row text-center" style="margin-top: 60px;margin-bottom: 100px">
            <div class="ccol-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2 text-center">
                <nav aria-label="Page navigation" id="pageLi">
                    <ul class="pagination">
                        <li>
                            <c:if test="${requestScope.page.hasPrevious()}">
                                <a href="${pageContext.request.contextPath}/nav/publicityNewestDynamic?pc=${requestScope.pagePre}&ps=5" aria-label="Previous">
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
                                    <a href="${pageContext.request.contextPath}/nav/publicityNewestDynamic?pc=${p}
                                        &ps=5">
                                            ${p}
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${requestScope.page.current!=p}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/nav/publicityNewestDynamic?pc=${p}
                                        &ps=5">
                                            ${p}
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                        <li>
                            <c:if test="${requestScope.page.hasNext()}">
                                <a href="${pageContext.request.contextPath}/nav/publicityNewestDynamic?pc=${requestScope.pageN}&ps=5"
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

    </div>

<%@include file="../common/footer.jsp"%>

</body>
</html>
