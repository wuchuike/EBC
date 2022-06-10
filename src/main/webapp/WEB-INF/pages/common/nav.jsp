<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/23
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    #logo{
        width: 200px;
        height: 50px;
    }
</style>

<script>
    $(function () {
        $("#toTop").on('click', function () {
            $('html,body').animate({ scrollTop: 0 }, 700);
        });
        $("#toButton").on('click', function () {
            $('html,body').animate({ scrollTop: $(document).height() }, 700);
        });
    })
</script>


<!--导航条-->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath}/toIndex">
                <img src="${pageContext.request.contextPath}/img/logo-ebc.png"
                     alt="logo" id="logo" class="img-rounded">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
<%--                <li><a href="${pageContext.request.contextPath}/toIndex">回到首页</a></li>--%>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                       data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">关于我们 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/nav/introduce">中心介绍</a></li>
                        <li><a href="${pageContext.request.contextPath}/nav/team">团队介绍</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                       data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">保护项目 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/protectSnowLeopard">
                                雪豹保护项目
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/protectAsianElephant">
                                亚洲象保护项目
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/protectPublicJoin">
                                公共参与和社区保护
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                       data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">公共宣传 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/publicityNewestDynamic?pc=1&ps=5">
                                最新动态
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/publicityAcademicAchievements?cup=1&ps=10">
                                学术成果
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/publicityArticles?cup=1&ps=6">
                                科普宣传文章
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/publicityWildlifeImage?cup=1&ps=6">
                                野生动物影像
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                       data-toggle="dropdown" role="button"
                       aria-haspopup="true" aria-expanded="false">加入我们 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="https://mp.weixin.qq.com/s/MfZOolXnxKsEyFeh-87YsQ">
                                全职招聘
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nav/joinVolunteerRecruitment">
                                志愿者招募
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>


            <ul class="nav navbar-nav navbar-right" id="user">
                <c:if test="${ empty sessionScope.user}">
                    <li class="dropdown" id="person">
                        <a href="${pageContext.request.contextPath}/login">
                            <span class="glyphicon glyphicon-user" style=""></span>
                            <span id="personS">去登陆</span>
                        </a>
                    </li>
                </c:if>

                <c:if test="${not empty sessionScope.user}">
                    <li class="dropdown" id="person">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                           role="button" aria-haspopup="true" aria-expanded="false" id="personA2">
                            <span class="glyphicon glyphicon-user" style=""></span>
                            <span id="personS2">${sessionScope.user.nickname}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/nav/myData">
                                    我的资料
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/nav/message">
                                    消息
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/nav/myUpload">
                                    我的上传
                                </a>
                            </li>
                            <c:if test="${sessionScope.user.r == 1}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/nav/managerUsers">
                                        用户管理
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.user.r == 0}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/nav/myApply">
                                        权限申请
                                    </a>
                                </li>
                            </c:if>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/logout">
                                    退出登录
                                </a>
                            </li>
                        </ul>
                    </li>
                </c:if>

            </ul>

        </div>

    </div>
</nav>
