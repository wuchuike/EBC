<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/29
  Time: 17:11
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
            background-color: #ccffcc;
        }
        p{
            text-indent: 2em;
        }
        #body-text{
            margin-top: 50px;
        }

        #h_header{
            text-align: center;
            background-color: white;
            height: 100px;
            margin-top: 15px;
        }
        #introduce-header{
            margin-top: 28px;
        }
        #introduce-header-text{
            background-color: white;
        }
        #introduce-header-text p{
            margin: 30px;
        }


        #consist{
            text-align: center;
            background-color: white;
            margin-top: 20px;
        }


        /*经验板块*/
        #gain_experience{
            background: whitesmoke;
            margin-top: 20px;
        }
        #gain_experienceHead{
            margin: 30px;
            text-align: center;
        }
        /*科研监测*/
        #ScientificResearchMonitoring{
            margin-top: 20px;
            background: lightsteelblue;
            border-radius: 20px;
            margin-bottom: 20px;
            box-shadow: 10px 10px 5px #888888;
            height: 550px;
        }
        #ScientificResearchMonitoringHead{
            margin-left: 30px;
            margin-top: 30px;
            margin-bottom: 15px;
        }
        #ScientificResearchMonitoringHead h4{
            font-size: 20px;
            color: #3c763d;
            text-shadow: 2px 2px 2px #888888;
        }
        #ScientificResearchMonitoringText{

        }
        #ScientificResearchMonitoringText p{

        }
        /*科技支撑与能力建设*/
        #ScientificAndTechnologicalConstruction{
            margin-top: 20px;
            background: lightsteelblue;
            border-radius: 20px;
            margin-bottom: 20px;
            box-shadow: 10px 10px 5px #888888;
            height: 550px;
        }
        #ScientificAndTechnologicalConstructionHead{
            margin-left: 30px;
            margin-top: 30px;
            margin-bottom: 15px;
        }
        #ScientificAndTechnologicalConstructionHead h4{
            font-size: 20px;
            color: #3c763d;
            text-shadow: 2px 2px 2px #888888;
        }
        #ScientificAndTechnologicalConstructionText{

        }
        #ScientificAndTechnologicalConstructionText p{

        }
        /*经验板块第二行*/
        #gain_experience_2{
            background: whitesmoke;
        }
        /*公众教育与科普*/
        #popularizationOfScience{
            margin-top: 20px;
            background: lightsteelblue;
            border-radius: 20px;
            margin-bottom: 40px;
            box-shadow: 10px 10px 5px #888888;
            height: 550px;
        }
        #popularizationOfScienceHead{
            margin-left: 30px;
            margin-top: 30px;
            margin-bottom: 15px;
        }
        #popularizationOfScienceHead h4{
            font-size: 20px;
            color: #3c763d;
            text-shadow: 2px 2px 2px #888888;
        }
        #popularizationOfScienceText{

        }
        #popularizationOfScienceText p{

        }
        /*国际交流与合作*/
        #InternationalExchangesAndCooperation{
            margin-top: 20px;
            background: lightsteelblue;
            border-radius: 20px;
            margin-bottom: 40px;
            box-shadow: 10px 10px 5px #888888;
            height: 550px;
        }
        #InternationalExchangesAndCooperationHead{
            margin-left: 30px;
            margin-top: 30px;
            margin-bottom: 15px;
        }
        #InternationalExchangesAndCooperationHead h4{
            font-size: 20px;
            color: #3c763d;
            text-shadow: 2px 2px 2px #888888;
        }
        #InternationalExchangesAndCooperationText{

        }
        #InternationalExchangesAndCooperationText p{

        }





        /*公益周边*/
        #publicWelfareSurrounding{
            margin-top: 50px;
            text-align: center;
        }
        #publicWelfareSurroundingShow{
            margin-top: 40px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="introduce">
    <div id="nav">
        <%@include file="../common/nav.jsp"%>
    </div>

    <!--简介-->
    <div id="body-text" class="container">
        <div id="head-text">
            <div id="h_header" class="row">
                <h2 id="introduce-header">
                    陆桥生态中心简介
                </h2>
                <span>
                    <i class="bi bi-stop-fill" style="color: red"></i>
                </span>
                <span>
                    <i class="bi bi-stop-fill" style="color: orange"></i>
                </span>
                <span>
                    <i class="bi bi-stop-fill" style="color: green"></i>
                </span>
            </div>

            <div id="introduce-header-text" class="row">
                <p class="navbar-text" style="font-size: 18px; line-height: 30px; font-weight: 350">
                    <strong>北京市海淀区陆桥生态中心（EBC, Eco-Bridge Continental）</strong>是我国本土生态环保机构，
                    专念于中国自然保护事业。陆桥生态中心以科学研究为先导，以生态保护技术和实践活动为核心，
                    基于全球视野和生态学理念，致力于自然和生物多样性保护、自然保护宣传教育，以及生态保护技
                    术培训等工作。项目地包括西藏珠穆朗玛峰国家级自然保护区、新疆塔什库尔干国家级自然保护区、
                    宁夏贺兰山国家级自然保护区、祁连山国家公园青海片区、祁连山国家公园盐池湾片区、海南热带
                    雨林国家公园、云南南滚河国家级自然保护区等生物多样性热点地区。目前主要集中于雪豹、豹、猞
                    猁等中大型猫科动物和亚洲象等陆生野生旗舰物种保护问题；同时还聚焦鹤鹳类、高原鸟类、灵长
                    类等濒危类群。为维护自然生态平衡、构建人与自然和谐发展铺路搭桥。
                </p>
            </div>
        </div>


        <!--组织构成图-->
        <div id="consist" class="row">
            <div id="consist-head">
                <h2>组织构成</h2>
                <span>
                    <i class="bi bi-stop-fill" style="color: red"></i>
                </span>
                <span>
                    <i class="bi bi-stop-fill" style="color: orange"></i>
                </span>
                <span>
                    <i class="bi bi-stop-fill" style="color: green"></i>
                </span>
            </div>
<%--    class="img-responsive"图片自适应        --%>
            <div id="consist-img">
                <img src="${pageContext.request.contextPath}/img/central_composition/17597855.jpg"
                     alt="..." class="img-responsive">
            </div>
        </div>


        <!--经验板块-->
        <div class="row" id="gain_experience">
            <div id="gain_experienceHead">
                <h3>我们在<strong>理论、技术和实践应用</strong>方面取得的宝贵经验</h3>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-9 col-xs-9 col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1"
                 id="ScientificResearchMonitoring">
                <div id="ScientificResearchMonitoringHead">
                    <h4>
                        <strong>
                            <i class="bi bi-record-fill" style="text-shadow: 2px 2px 2px #888888"></i>
                            科研监测
                        </strong>
                    </h4>
                </div>
                <div id="ScientificResearchMonitoringText">
                    <p class="navbar-text">
                        围绕国家公园和自然保护区雪豹种群和栖息地管理，我们先后在甘肃盐池湾、
                        甘肃祁连山、青海祁连山和西藏珠峰等地区开展了连续的野外监测和研究；
                    </p>
                    <p class="navbar-text">
                        优化整合了样线痕迹调查、红外相机陷阱和分子粪便学等多种研究方法，
                        在帕米尔高原、新疆阿拉套山、青藏高原和祁连山脉成功实施了“雪豹重
                        点分布区种群及栖息地调查评估”项目；
                    </p>
                    <p class="navbar-text">
                        与牛津大学等国内外多家机构合作在新疆塔什库尔干和博尔塔拉地区、
                        四川宝兴和甘孜地区、西藏珠穆朗玛峰地区、青海祁连山和阿尼玛卿地区，
                        以及甘肃祁连山和盐池湾地区等雪豹重要分布区对雪豹种群分布和栖息地状
                        况进行研究评估和分析预测；
                    </p>
                    <p class="navbar-text">
                        通过对大量红外照片、粪便 DNA 及其他野外调查数据的分析，初步掌握了
                        雪豹在中国的重点分布区域，以及在热点分布区域的种群数量，掌握了雪豹
                        的栖息地选择、食性、人兽冲突和猎物种群密度等重要生物学和生态学信息，
                        发表雪豹相关论文 20 余篇，为中国雪豹种群保护和栖息地管理提供了坚实
                        的科学依据。
                    </p>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-9 col-xs-9 col-lg-push-2 col-md-push-2 col-sm-push-1 col-xs-push-1"
                 id="ScientificAndTechnologicalConstruction">
                <div id="ScientificAndTechnologicalConstructionHead">
                    <h4>
                        <strong>
                            <i class="bi bi-record-fill" style="text-shadow: 2px 2px 2px #888888"></i>
                            科技支撑与能力建设
                        </strong>
                    </h4>
                </div>
                <div id="ScientificAndTechnologicalConstructionText">
                    <p class="navbar-text">
                        陆桥生态中心为国家林草局濒管办、海淀区园林绿化局提供有关科技咨询及技术服务，
                        承担海淀区野生动物保护技术支持机构职能；
                    </p>
                    <p class="navbar-text">
                        在开展雪豹野外科研监测中，不断总结野外工作经验，研究改进了雪豹调查监测技术，
                        制定《雪豹调查监测技术方案》并通过国家林草局评审鉴定。
                    </p>
                    <p class="navbar-text">
                        此外，我们先后在新疆天山东部、青海祁连山、甘肃盐池湾地区等对巡护员和保护地管
                        理人员进行了雪豹保护与监测技术培训，培养了一批专业的雪豹调查监测技术人员，有
                        力地推动了自然保护地及周边区域的雪豹保护能力建设工作。
                    </p>
                </div>
            </div>
        </div>
        <div class="row" id="gain_experience_2">
            <div class="col-lg-4 col-md-4 col-sm-9 col-xs-9 col-lg-push-2 col-md-push-2 col-sm-push-1 col-xs-push-1"
                 id="popularizationOfScience">
                <div id="popularizationOfScienceHead">
                    <h4>
                        <strong>
                            <i class="bi bi-record-fill" style="text-shadow: 2px 2px 2px #888888"></i>
                            公众教育与科普
                        </strong>
                    </h4>
                </div>
                <div id="popularizationOfScienceText">
                    <p class="navbar-text">
                        每年的“世界野生动植物日”和“国际雪豹日”等保护纪念活动，陆桥生态
                        中心都自筹经费举办各种公益宣传活动，普及雪豹等濒危野生动物保护
                        的法律法规和科学知识。
                    </p>
                    <p class="navbar-text">
                        陆桥还与中国野生动物协会合作编撰出版了《中国雪豹》画册，围绕雪
                        豹等野生动物保护及自然环境保护问题，长期坚持利用微信公众号、新浪
                        微博等宣传平台开展宣传教育。
                    </p>
                    <p class="navbar-text">
                        此外，陆桥还积极与中央电视台、《大众电影》、《中国绿色时报》、
                        《中国林业杂志》等多家媒体合作，开展了一系列雪豹保护公众教育与科
                        普宣传活动。
                    </p>
                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-9 col-xs-9 col-lg-push-3 col-md-push-3 col-sm-push-1 col-xs-push-1"
                 id="InternationalExchangesAndCooperation">
                <div id="InternationalExchangesAndCooperationHead">
                    <h4>
                        <strong>
                            <i class="bi bi-record-fill" style="text-shadow: 2px 2px 2px #888888"></i>
                            国际交流与合作
                        </strong>
                    </h4>
                </div>
                <div id="InternationalExchangesAndCooperationText">
                    <p class="navbar-text">
                        陆桥生态中心合作承担中国首次“国际雪豹保护大会”（ 2018 年 9 月，
                        深圳）组织工作，负责大会的学术筹备和组织运行，在多方共同努力下会
                        议取得了良好效果，发布了有重要意义的“雪豹保护深圳共识”，会议组织
                        工作得到了行政主管部门和国内外同行的高度认可。
                    </p>
                    <p class="navbar-text">
                        在国家林草局对外合作项目中心的支持下，我们联合北京林业大学开展“国
                        家公园管理与国际合作机制研究”，在贵阳成功举办了“国家公园管理与国际
                        合作”专题研讨会。此外，陆桥的主要负责人作为国家雪豹领域的专家代表多
                        次参加国内外相关会议，并多次在会议上作学术和工作报告。
                    </p>
                </div>
            </div>
        </div>


        <!--公益周边-->
        <div class="row" id="publicWelfareSurrounding">
            <div id="publicWelfareSurroundingHead" class="row">
                <h2>公益周边</h2>
                <div style="margin-top: 10px">
                    <span>
                    <i class="bi bi-stop-fill" style="color: red"></i>
                    </span>
                    <span>
                        <i class="bi bi-stop-fill" style="color: orange"></i>
                    </span>
                    <span>
                        <i class="bi bi-stop-fill" style="color: green"></i>
                    </span>
                </div>
            </div>

            <div class="row" id="publicWelfareSurroundingShow">
                <div class="col-md-3">
                    <img src="${pageContext.request.contextPath}/img/introduce/16285029.jpg"
                         alt="..." style="height: 203px;width: 270px">
                </div>
                <div class="col-md-3">
                    <img src="${pageContext.request.contextPath}/img/introduce/16285027.jpg"
                         alt="..." style="height: 203px;width: 270px">
                </div>
                <div class="col-md-3">
                    <img src="${pageContext.request.contextPath}/img/introduce/16285028.jpg"
                         alt="..." style="height: 203px;width: 270px">
                </div>
                <div class="col-md-3">
                    <img src="${pageContext.request.contextPath}/img/introduce/16285026.jpg"
                         alt="..." style="height: 203px;width: 270px">
                </div>
            </div>

        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
</html>
