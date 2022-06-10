<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/30
  Time: 11:22
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
            text-align: center;
        }
        #body-text div h1{
            margin-top: 20px;
        }
        #banner{
            margin-top: 20px;
        }

    </style>

</head>
<body>
<div>
    <%@include file="../common/nav.jsp"%>

    <div id="body-text" class="container">
        <div class="row">
            <h1>
                <strong>
                    <em style="font-family: 华文行楷,serif">亚洲象保护项目</em>
                </strong>
            </h1>
        </div>

        <div class="row" id="banner">
            <img src="${pageContext.request.contextPath}/img/asianElephant/16255437.jpg"
                 alt="..." class="img-responsive">
        </div>

        <div class="row">
            <h4 style="font-size: 18px;margin-top: 30px">
                <strong>
                    项目地：
                </strong>
            </h4>
            <br>
            <div class="row">
                <p class="text-center">
                    云南南滚河国家级自然保护区
                </p>
            </div>
            <div class="row">
                <p class="text-center">
                    云南西双版纳国家级自然保护区
                </p>
            </div>
        </div>



        <div class="row">
            <h4 style="font-size: 18px;margin-top: 30px" class="text-center">
                <strong>
                    主管、合作单位：
                </strong>
            </h4>
            <br>
            <div class="row">
                <p class="text-center">
                    国家林业和草原局
                </p>
            </div>
            <div class="row">
                <p class="text-center">
                    云南南滚河国家级自然保护区管护局
                </p>
            </div>
            <div class="row">
                <p class="text-center">
                    云南西双版纳国家级自然保护区管护局
                </p>
            </div>
        </div>



        <div class="row" style="margin-top: 80px">
            <div class="row">
                <h3 style="color: white">
                    <strong style="background: #33cc00;">
                        2016年南滚河亚洲象拯救保护项目
                    </strong>
                </h3>
            </div>

            <div class="row" style="margin-top: 60px">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/asianElephant/17501632.png"
                             alt="..." class="img-responsive center-block">
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <p class="text-center" style="color: #666666;font-size: 15px">
                            红外相机拍摄到的南滚河亚洲象照片
                        </p>
                    </div>
                </div>
                <div class="row" style="margin-top: 50px">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <p class="text-left" style="font-size: 15px;text-indent: 2em;line-height: 2">
                            栖息于南滚河国家级自然保护区的亚洲象种群在遗传结构上有别于我国其他地区分布的亚洲象种群，
                            属于β分支，为单独一个地理种群。目前该种群被孤立在保护区的沧源片区，与国内属α分支的其他
                            种群和缅甸的种群存在地理隔离，已经成为一个孤立的小种群，易受到活动范围、食物与配偶难以获
                            得等因素的影响，有灭绝的风险。
                        </p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 60px">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/asianElephant/17501633.png"
                             alt="..." class="img-responsive center-block">
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <p class="text-center" style="color: #666666;font-size: 15px">
                            红外相机拍摄到的南滚河亚洲象照片
                        </p>
                    </div>
                </div>
                <div class="row" style="margin-top: 50px">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <p class="text-left" style="font-size: 15px;text-indent: 2em;line-height: 2">
                            北京陆桥生态中心和北京林业大学野生动物研究所团队于2018年1月至12月完成了野外数据和样品采
                            集、数据整理分析和报告撰写等各环节工作；目前项目已圆满结题，提交了 “亚洲象种群分布、数量
                            及结构”、 “亚洲象栖息地监测” 、“亚洲象食性”、 “亚洲象分布区社会经济状况”和“亚洲象持续监
                            测技术方法”五个方面的七个项目报告：《亚洲象分布范围及种群结构研究报告》、《亚洲象粪便分析
                            实验报告》、《亚洲象种群及栖息地监测与评估报告》、《亚洲象栖息地土地利用现状调查报告》、
                            《亚洲象食性研究报告》、《亚洲象分布区域社会经济状况调查报告》和《亚洲象持续监测技术方法》。
                        </p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 60px">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/asianElephant/17501637.png"
                             alt="..." class="img-responsive center-block">
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <p class="text-center" style="color: #666666;font-size: 15px">
                            红外相机布设场景
                        </p>
                    </div>
                </div>
                <div class="row" style="margin-top: 50px">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                        <p class="text-left" style="font-size: 15px;text-indent: 2em;line-height: 2">
                            项目深入调查了南滚河亚洲象种群数量、分布、食性及社区周边居民的保护态度，遥感解译了土地利用
                            数据，评估了栖息地质量，特别是对种群遗传结构、遗传多样性水平、亲缘关系和种群生存力进行了深
                            入研究，提出了切实可行的种群保护和管理建议。基于红外相机和分子粪便学研究，经过细致的个体识
                            别，估算得出南滚河亚洲象种群现由12头-22头个体组成，同时构建了第一个南滚河野生亚洲象种群数
                            据库，首次使用DNA宏条形码技术定量分析亚洲象食性，首次分析了南滚河保护区近三十年亚洲象适宜
                            栖息地动态变化等创新性研究成果，并确立了科学可行的综合的亚洲象监测技术。为南滚河象群未来的
                            发展提出了有力的管理策略，助力南滚河亚洲象种群持续发展。
                        </p>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 60px">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/asianElephant/17501634.png"
                             alt="..." class="img-responsive center-block">
                    </div>
                </div>
            </div>



            <div class="row" style="margin-top: 120px">
                <h3 style="color: white">
                    <strong style="background: #33cc00;">
                        全国第二次陆生野生动物资源调查——亚洲象等濒危物种跨境区域种群及栖息地调查
                    </strong>
                </h3>
            </div>

            <div class="row" style="margin-top: 100px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-left" style="font-size: 15px;text-indent: 2em;line-height: 2">
                        北京陆桥生态中心和北京林业大学野生动物研究所受国家林业和草原局委托，在全国第二次陆生野生动物资
                        源调查项目中承接亚洲象等濒危物种跨境区域种群及栖息地调查。项目团队对西双版纳国家级自然保护区亚
                        洲象的种群数量和现状进行了细致调查；以位于中老边境线附近的尚勇子保护区为重点研究区域，评估该区
                        域亚洲象种群数量、密度及跨境种群分布和活动情况；调查亚洲象在中国境内现存分布区的分布状况及动态
                        变化趋势；分析影响其分布的制约因子，找出亚洲象种群面临的生存威胁，为MIKE项目及CITES履约提供了
                        必要的信息支持和技术支撑；为亚洲象种群复壮和发展提出了科学的保护建议。
                    </p>
                </div>
            </div>
            <div class="row" style="margin-top: 35px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="font-size: 15px; line-height: 2">
                        项目期间布设红外相机27台，获取亚洲象有效照片1，886张，共识别出69头亚洲象。
                    </p>
                </div>
            </div>



            <div class="row" style="margin-top: 60px">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <img src="${pageContext.request.contextPath}/img/asianElephant/17501636.png"
                             alt="..." class="img-responsive center-block">
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
                        <p class="text-center" style="color: #666666;font-size: 15px">
                            红外相机在西双版纳国家级自然保护区尚勇子保护区拍摄到的亚洲象照片
                        </p>
                    </div>
                </div>
            </div>

        </div>


    </div>

    <%@include file="../common/footer.jsp"%>
</div>
</body>
</html>
