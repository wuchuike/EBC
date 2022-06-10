<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/16
  Time: 16:57
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
            background-color: #ccffcc;
        }

        #container-solve{
            margin-top: 150px;
        }

        /*四个模块a标签设置*/
        .caption-h4{
            color: black;
        }
        .caption-h4:hover{
            color: #3c763d;
        }

        #protectProject{
            background: whitesmoke;
            box-shadow: 0 0 10px #888888;
        }

    </style>

    <script>
        $(function () {


            $("#upload-data").click(function () {
                window.location.href = 'upload'
            })
            $("#download-data").click(function () {
                window.location.href = 'download'
            })
            $("#search-data").click(function () {
                window.location.href = 'search'
            })
            $("#generation-data").click(function () {
                window.location.href = 'generation'
            })

            let i =0;
            const changeImg = $("#changeImg");
            changeImg.attr("src",
                "${pageContext.request.contextPath}/img/index/introduction/25199088.jpg");
            function time(){
                if (i===0){
                    changeImg.attr("src",
                        "${pageContext.request.contextPath}/img/index/introduction/25199088.jpg");
                    i = 1;
                } else {
                    changeImg.attr("src",
                        "${pageContext.request.contextPath}/img/index/introduction/25199087.jpg");
                    i = 0;
                }
            }
            //循环调用函数
            setInterval(time,2000);


            $("#toSnowLeopard").on('click', function () {
                window.location.href = 'nav/protectSnowLeopard';
            })
            $("#toAsianElephant").on('click', function () {
                window.location.href = 'nav/protectAsianElephant';
            })
            $("#toPublicJoin").on('click', function () {
                window.location.href = 'nav/protectPublicJoin';
            })


        })

    </script>

</head>
<body>
<%@include file="common/toTop.jsp"%>
    <%@include file="common/nav.jsp"%>

    <div id="myCarousel" class="carousel slide" style="margin-top: 50px">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="${pageContext.request.contextPath}/img/index/Carousel/16255434.jpg"
                     alt="First slide" style="width: 100%">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/index/Carousel/16255435.jpg"
                     alt="Second slide" style="width: 100%">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/index/Carousel/16255436.jpg"
                     alt="Second slide" style="width: 100%">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath}/img/index/Carousel/16255437.jpg"
                     alt="Second slide" style="width: 100%">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <!--简介-->
    <div class="container" style="margin-top: 30px;background: #C1FFC1">

        <div class="row" style="margin-top: 30px">
            <div class="row text-center">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1" id="introduction">
                    <h3>
                        <strong style="font-family: 方正舒体,serif;font-size: 40px">
                            陆桥生态中心简介
                        </strong>
                    </h3>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 30px;margin-bottom: 50px">

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <p style="text-indent: 2em;font-size: 17px">
                                    北京市海淀区陆桥生态中心（Eco-Bridge Continental, EBC）成立于 2015 年，是专
                                    注于中国自然保护事业的公益机构。中心自成立以来始终以科学研究为先导，以自然资源管理
                                    和生态环境保护技术研发、技术咨询和相关实践活动为核心，致力于自然和生物多样性保护、
                                    自然保护宣传教育，以及生态保护技术培训等工作。中心自成立之初就与北京林业大学野生动
                                    物研究所结成战略合作伙伴，聚焦雪豹、亚洲象等陆生旗舰物种的保护问题，针对野生动物资
                                    源保护、管理和可持续发展等科学问题，积极开展科研监测，在种群生态、栖息地评估、保护
                                    策略等方面取得了显著的成果。
                                </p>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 20px;margin-bottom: 20px">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <p style="margin-left: 30px">
                                    <a href="${pageContext.request.contextPath}/nav/introduce">
                                        <button type="button" class="layui-btn layui-btn-radius" style="width: 100px">
                                            更多&gt;&gt;
                                        </button>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <img src="${pageContext.request.contextPath}/img/index/introduction/25199087.jpg"
                         alt="..." class="img-responsive" id="changeImg">
                </div>
            </div>

        </div>

    </div>


    <!--四大功能模块-->
    <div class="container" id="container-solve">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="upload-data">
                <a class="btn btn-outline-success btn-sm caption-h4">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                            <img src="${pageContext.request.contextPath}/img/index/row-c/upload_f.png"
                                 alt="..." class="img-responsive">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                            <strong style="font-size: 17px">我要上传</strong>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="download-data">
                <a class="btn btn-outline-success btn-sm caption-h4">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                            <img src="${pageContext.request.contextPath}/img/index/row-c/downLoad_f.png"
                                 alt="..." class="img-responsive">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                            <strong style="font-size: 17px">我要下载</strong>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="search-data">
                <a class="btn btn-outline-success btn-sm caption-h4">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                            <img src="${pageContext.request.contextPath}/img/index/row-c/search_f.png"
                                 alt="..." class="img-responsive">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                            <strong style="font-size: 17px">查找相关</strong>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6" id="generation-data">
                <a class="btn btn-outline-success btn-sm caption-h4">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                                col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                            <img src="${pageContext.request.contextPath}/img/index/row-c/show_d.png"
                                 alt="..." class="img-responsive">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                                col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                            <strong style="font-size: 17px">数据可视化</strong>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>



    <!--我们的项目介绍-->
    <div class="container" style="margin-top: 230px" id="protectProject">
        <div class="row text-left" style="margin-top: 30px;margin-left: 30px">
            <p class="text-left">
                <i class="bi bi-pen-fill" style="font-size: 30px;
                    text-shadow: 2px 2px 5px #888888"></i>
            </p>
        </div>
        <hr>
        <div class="row text-center" style="margin-top: 50px">
            <strong style="font-family: 华文行楷,serif;font-size: 40px">
                我们的项目
            </strong>
        </div>
        <div class="row" style="margin-top: 35px;margin-bottom: 100px">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="margin-top: 20px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                    <p class="text-center" style="font-size: 20px; margin-bottom: 15px">
                        <strong>雪豹保护项目</strong>
                    </p>
                    <img src="${pageContext.request.contextPath}/img/index/protectProject/SnowLeopard.jpg"
                         alt="..." class="img-responsive" style="width: 350px;height: 200px">
                    <button type="button" class="layui-btn layui-btn-radius protectBtn"
                            style="margin-top: 20px" id="toSnowLeopard">
                        查看更多
                    </button>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="margin-top: 20px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                    <p class="text-center" style="font-size: 20px; margin-bottom: 15px">
                        <strong>亚洲象保护项目</strong>
                    </p>
                    <img src="${pageContext.request.contextPath}/img/index/protectProject/AsianElephant.jpg"
                         alt="..." class="img-responsive" style="width: 350px;height: 200px">
                    <button type="button" class="layui-btn layui-btn-radius protectBtn"
                            style="margin-top: 20px" id="toAsianElephant">
                        查看更多
                    </button>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="margin-top: 20px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                    <p class="text-center" style="font-size: 20px; margin-bottom: 15px">
                        <strong>公众参与和社区保护</strong>
                    </p>
                    <img src="${pageContext.request.contextPath}/img/index/protectProject/publicity.jpg"
                         alt="..." class="img-responsive" style="width: 350px;height: 200px">
                    <button type="button" class="layui-btn layui-btn-radius protectBtn"
                            style="margin-top: 20px" id="toPublicJoin">
                        查看更多
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!--最新动态-->
    <div class="container" style="margin-top: 230px" id="protectProject">
        <div class="row text-left" style="margin-top: 30px;margin-left: 30px">
            <p class="text-left">
                <i class="bi bi-pen-fill" style="font-size: 30px;
                    text-shadow: 2px 2px 5px #888888"></i>
            </p>
        </div>
        <hr>
        <div class="row text-center" style="margin-top: 50px">
            <strong style="font-family: 华文行楷,serif;font-size: 40px">
                最新动态
            </strong>
        </div>
        <div class="row" style="margin-top: 35px;margin-bottom: 100px">
            <div class="col-lg-6 col-md-6-sm-12 col-xs-12" style="margin-top: 20px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                            <p class="text-center" style="font-size: 20px; margin-bottom: 15px">
                                <strong>青海门源野外日记丨炎炎夏日，我在祁连山里赏冰雹</strong>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                            col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2 text-center">
                            <img src="${pageContext.request.contextPath}/img/index/newestDynamic/24932869.png"
                                 alt="..." class="img-responsive">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                            <button type="button" class="layui-btn layui-btn-radius protectBtn" style="margin-top: 20px">
                                查看更多
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-top: 20px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                            <p class="text-center" style="font-size: 20px; margin-bottom: 15px">
                                <strong>最新科研成果 | 人类活动对我国西南部亚洲象孤立小种群的影响</strong>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                            col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2 text-center">
                            <img src="${pageContext.request.contextPath}/img/index/protectProject/AsianElephant.jpg"
                                 alt="..." class="img-responsive" style="height: 230px">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                            col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 text-center">
                            <button type="button" class="layui-btn layui-btn-radius protectBtn" style="margin-top: 20px">
                                查看更多
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!--图片-->
    <div class="container" style="margin-top: 230px" id="protectProject">
        <div class="row text-left" style="margin-top: 30px;margin-left: 30px">
            <p class="text-left">
                <i class="bi bi-pen-fill" style="font-size: 30px;
                    text-shadow: 2px 2px 5px #888888"></i>
            </p>
        </div>
        <hr>
        <div class="row text-center" style="margin-top: 50px">
            <strong style="font-family: 华文行楷,serif;font-size: 40px">
                红外抓拍
            </strong>
        </div>

        <div class="row" style="margin-top: 80px">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055162.png"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055148.png"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055134.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055204.png"
                     alt="..." class="img-responsive thumbnail">
            </div>

        </div>

        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055097.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055095.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055091.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055097.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

        </div>

        <div class="row" style="margin-bottom: 100px">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055086.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055098.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055134.jpg"
                     alt="..." class="img-responsive thumbnail">
            </div>

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                <img src="${pageContext.request.contextPath}/img/index/show/27055142.png"
                     alt="..." class="img-responsive thumbnail">
            </div>

        </div>
    </div>



    <%@include file="common/footer.jsp"%>
</body>
</html>
