<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/30
  Time: 14:22
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
    <link href="${pageContext.request.contextPath}/static/video_js/dist/video-js.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/video_js/dist//video.min.js"></script>


    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background: #ccffcc;
        }
    </style>



</head>
<body>

<%@include file="../common/nav.jsp"%>
<div class="container" style="margin-top: 80px">

    <div class="row text-center">

        <div class="row">
            <h4>
                <strong style="font-size: 30px;font-family: 华文行楷,serif">
                    野生动物影像
                </strong>
            </h4>
        </div>

        <c:forEach var="p" items="${requestScope.imgList}">
            <div class="row" style="margin-top: 80px">
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <p class="text-left">
                            <strong style="font-size:50px">
                                <em>0${p.orders}</em>
                            </strong>
                            <strong>
                                ${p.title}
                            </strong>
                        </p>
                            ${p.textArea}
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="col-lg-12 col-md-12 col-sm-10 col-xs-10
                            col-lg-push-0 col-md-push-0 col-sm-push-1 col-xs-push-1">
                        <video id="ios-video${p.orders}" class="video-js vjs-big-play-centered vjs-fluid">
                            <p class="vjs-no-js">
                                To view this video please enable JavaScript, and consider upgrading to a
                                web browser that
                                <a href="https://videojs.com/html5-video-support/" target="_blank">
                                    supports HTML5 video
                                </a>
                            </p>
                        </video>
                        <script>
                            const player_${p.orders} = videojs(document.getElementById('ios-video${p.orders}'), {
                                controls: true, // 是否显示控制条
                                poster: '${pageContext.request.contextPath}/img/wildlifeImage/${p.poster}', // 视频封面图地址
                                preload: 'auto',
                                autoplay: false,
                                fluid: true, // 自适应宽高
                                language: 'zh-CN', // 设置语言
                                muted: false, // 是否静音
                                inactivityTimeout: false,
                                controlBar: { // 设置控制条组件
                                    /* 设置控制条里面组件的相关属性及显示与否*/
                                    'currentTimeDisplay':true,
                                    'timeDivider':true,
                                    'durationDisplay':true,
                                    'remainingTimeDisplay':false,
                                    volumePanel: {
                                      inline: false,
                                    },
                                    /* 使用children的形式可以控制每一个控件的位置，以及显示与否 */
                                    children: [
                                        {name: 'playToggle'}, // 播放按钮
                                        {name: 'currentTimeDisplay'}, // 当前已播放时间
                                        {name: 'progressControl'}, // 播放进度条
                                        {name: 'durationDisplay'}, // 总时间
                                        { // 倍数播放
                                            name: 'playbackRateMenuButton',
                                            'playbackRates': [0.5, 1, 1.5, 2, 2.5]
                                        },
                                        {
                                            name: 'volumePanel', // 音量控制
                                            inline: false, // 不使用水平方式
                                        },
                                        {name: 'FullscreenToggle'} // 全屏
                                    ]
                                },
                                sources: [ // 视频源
                                    {
                                        src: '${pageContext.request.contextPath}/video/${p.videoPath}',
                                        type: 'video/mp4',
                                        poster: '${pageContext.request.contextPath}/img/wildlifeImage/${p.poster}'
                                    }
                                ]
                            }, function () {
                                console.log('视频可以播放了', this);
                            });
                        </script>
                    </div>
                </div>
            </div>
        </c:forEach>


        <c:if test="${requestScope.pages>1}">
            <div class="row text-center" style="margin-top: 60px;margin-bottom: 100px">
                <div class="ccol-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2 text-center">
                    <nav aria-label="Page navigation" id="pageLi">
                        <ul class="pagination">
                            <li>
                                <c:if test="${requestScope.page.hasPrevious()}">
                                    <a href="${pageContext.request.contextPath}/nav/publicityWildlifeImage?cup=${requestScope.pagePre}&ps=6" aria-label="Previous">
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
                                        <a href="${pageContext.request.contextPath}/nav/publicityWildlifeImage?cup=${p}
                                        &ps=6">
                                                ${p}
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${requestScope.page.current!=p}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/nav/publicityWildlifeImage?cup=${p}
                                        &ps=6">
                                                ${p}
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>
                            <li>
                                <c:if test="${requestScope.page.hasNext()}">
                                    <a href="${pageContext.request.contextPath}/nav/publicityWildlifeImage?cup=${requestScope.pageN}&ps=6"
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
        </c:if>


    </div>


</div>




<%@include file="../common/footer.jsp"%>


</body>
</html>
