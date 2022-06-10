<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/6/8
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>

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
    #cm-menu{
        z-index: 1;
    }
</style>

<%--nav以及列表--%>
<div id="cm-menu">
    <nav class="cm-navbar cm-navbar-midnight">
        <div class="cm-flex">
            <a href="${pageContext.request.contextPath}/index">
                <img src="${pageContext.request.contextPath}/img/logo-ebc.png"
                     alt="logo" id="logo" class="img-rounded">
            </a>
        </div>
        <div class="btn btn-midnight md-menu-white" data-toggle="cm-menu"></div>
    </nav>
    <%--左侧菜单栏--%>
    <div id="cm-menu-content">
        <div id="cm-menu-items-wrapper">
            <div id="cm-menu-scroller">
                <ul class="cm-menu-items" id="left-list">
                    <li id="backstage_1">
                        <a href="${pageContext.request.contextPath}/nav/backstage" class="sf-house">
                            <strong>后台管理</strong>
                        </a>
                    </li>
                    <li id="backstage_2"><a href="${pageContext.request.contextPath}/nav/backstage/manager/users"
                           class="sf-user-id">
                        <strong>用户管理</strong>
                    </a></li>
                    <li id="backstage_3"><a href="${pageContext.request.contextPath}/nav/backstage/dynamicManagement"
                                          class="sf-bullhorn">
                        <strong>动态管理</strong>
                    </a></li>
                    <li id="backstage_4"><a href="${pageContext.request.contextPath}/nav/backstage/Academic"
                                            class="sf-address-book">
                        <strong>学术文章</strong>
                    </a></li>
                    <li id="backstage_5"><a href="${pageContext.request.contextPath}/nav/backstage/publicityArticle" class="sf-book-bookmark">
                        <strong>宣传文章</strong>
                    </a></li>
                    <li id="backstage_6"><a href="${pageContext.request.contextPath}/nav/backstage/wildlifeImg" class="sf-device-tv">
                        <strong>动物影像</strong>
                    </a></li>
                    <li id="backstage_7"><a href="${pageContext.request.contextPath}/nav/backstage/separateBatch" class="sf-box">
                        <strong>数据批次</strong>
                    </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<%--nav右侧--%>
<header id="cm-header">
    <nav class="cm-navbar cm-navbar-midnight">
        <div class="btn btn-midnight md-menu-white hidden-md hidden-lg" data-toggle="cm-menu"></div>
        <div class="cm-flex">
            <h1>后台管理主页</h1>
        </div>
        <div class="dropdown pull-right">
            <button class="btn btn-midnight md-notifications-white" data-toggle="dropdown">
                <span class="label label-danger">23</span>
            </button>

            <div class="popover cm-popover bottom">
                <div class="arrow"></div>
                <div class="popover-content">
                    <div class="list-group" style="z-index: 999">
                        <a href="#" class="list-group-item">
                            <h4 class="list-group-item-heading text-overflow">
                                <i class="fa fa-fw fa-envelope"></i>
                                消息(10)
                            </h4>
                            <p class="list-group-item-text text-overflow">
                                查看所有普通消息
                            </p>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 class="list-group-item-heading">
                                <i class="fa fa-fw fa-warning"></i>
                                权限申请消息(3)
                            </h4>
                            <p class="list-group-item-text">
                                查看所有权限申请消息
                            </p>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 class="list-group-item-heading">
                                <i class="fa fa-fw fa-laptop "></i>
                                在线留言消息(10)
                            </h4>
                            <p class="list-group-item-text">
                                查看所有在线留言消息
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="dropdown pull-right">
            <button class="btn btn-midnight md-account-circle-white" data-toggle="dropdown"></button>
            <ul class="dropdown-menu">
                <li class="disabled text-center">
                    <a style="cursor:default;"><strong>${sessionScope.user.nickname}</strong></a>
                </li>
                <li class="divider"></li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-user"></i>
                        我的资料
                    </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-fw fa-edit"></i>我的消息</a>
                </li>
                <li>
                    <a href=""><i class="fa fa-fw fa-sign-out"></i>退出登录</a>
                </li>
            </ul>
        </div>
    </nav>
</header>
