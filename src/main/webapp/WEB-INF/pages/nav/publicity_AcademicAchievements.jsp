<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/30
  Time: 12:57
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
            padding: 20px;
        }
        .a4{
            background: whitesmoke;
            box-shadow: 0 0 30px rgba(0,0,0,0.3);
            margin: 26px auto 0;
            padding: 24px;
            position: relative;
            font-size: 20px;
        }
        .a4:before, .a4:after{
            content: "";
            height: 100%;
            z-index: -10;
            position: absolute;
            width: 100%;
        }
        .a4:before{
            background: #FAFAFA;
            box-shadow: 0 0 8px rgba(0,0,0,0.2);
            left: -5px;
            top: 4px;
            transform: rotate(-2.5deg);
        }
        .a4:after{
            background: #f6f6f6;
            box-shadow: 0 0 8px rgba(0,0,0,0.2);
            left: -5px;
            top: 3px;
            transform: rotate(1.9deg);
        }
    </style>



</head>
<body>

<%@include file="../common/nav.jsp"%>

<div class="container" style="margin-top: 130px; margin-bottom: 60px">
    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 a4">
        <div class="row text-center" style="margin-top: 30px;margin-bottom: 50px">
            <h4>
                <strong style="font-family: 华文行楷,serif;font-size: 35px">
                    学术成果
                </strong>
            </h4>
        </div>
        <c:forEach var="p" items="${requestScope.aList}">
            <div class="row" style="margin-top: 20px">
                <div class="show col-lg-8 col-md-8 col-sm-8 col-xs-8
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <span>
                    <strong>${p.orders}.</strong>&nbsp;${p.title}
                </span>
                </div>
                <div class="show col-lg-3 col-md-3 col-sm-3 col-xs-3
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <a href="${p.transform}">
                        <i class="bi bi-forward"></i>
                        <span>Details</span>
                    </a>
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
                                <a href="${pageContext.request.contextPath}/nav/publicityAcademicAchievements?cup=${requestScope.pagePre}&ps=10" aria-label="Previous">
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
                                <li class="active" id="choose${p}">
                                    <a href="${pageContext.request.contextPath}/nav/publicityAcademicAchievements?cup=${p}&ps=10">
                                            ${p}
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${requestScope.page.current!=p}">
                                <li id="choose${p}">
                                    <a href="${pageContext.request.contextPath}/nav/publicityAcademicAchievements?cup=${p}&ps=10">
                                            ${p}
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                        <li>
                            <c:if test="${requestScope.page.hasNext()}">
                                <a href="${pageContext.request.contextPath}/nav/publicityAcademicAchievements?cup=${requestScope.pageN}&ps=10"
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

</div>


<%@include file="../common/footer.jsp"%>



</body>
</html>
