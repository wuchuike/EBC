<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/29
  Time: 21:59
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
        body{background: #ccffcc}
        p{
            text-indent: 2em;
        }
        #body-text{
            margin-top: 80px;
            background: whitesmoke;
            text-align: center;
        }
        .team_composition{
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .team_composition_show{
            border: lightgrey 1px solid;
        }
        .team_composition_show_img{
            margin-top: 20px;
        }
        .img_team{
            width: 150px;
            height: 150px;
        }
        .team_composition h3{
            margin-top: 10px;
        }
    </style>


</head>
<body>
<div id="introduce">
    <div id="nav">
        <%@include file="../common/nav.jsp"%>
    </div>

    <div class="container" id="body-text">
        <div class="row" style="color: #009688">
            <h3 id="introduce-header" style="margin-top: 30px">
                <i class="bi bi-record-fill"
                   style="text-shadow: 2px 2px 2px #888888;font-size: 10px"></i>
                <i class="bi bi-record-fill"
                   style="text-shadow: 2px 2px 2px #888888;font-size: 15px"></i>
                <i class="bi bi-record-fill"
                   style="text-shadow: 2px 2px 2px #888888;font-size: 20px"></i>
                <strong>我们的团队</strong>
                <i class="bi bi-record-fill"
                   style="text-shadow: 2px 2px 2px #888888;font-size: 20px"></i>
                <i class="bi bi-record-fill"
                   style="text-shadow: 2px 2px 2px #888888;font-size: 15px"></i>
                <i class="bi bi-record-fill"
                   style="text-shadow: 2px 2px 2px #888888;font-size: 10px"></i>
            </h3>

        </div>
        <div id="team">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17042455.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>时坤</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                陆桥生态中心创始人。现任北京林业大学生态与自然保护学院教授、野生动物研究所所长，
                                并在许多国内外学术和保护机构担任重要职务。主要研究方向为保护生物学、动物生态学、
                                野生动物管理学。发表学术论文60余篇，其中SCI刊源期刊论文近30篇，参编著作10部。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17042456.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>余辰星</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                陆桥项目总监。泰国King Mongkut’s University of Technology Thonburi
                                保护生态学博士，负责机构项目策划和监督管理。日常热衷于探索自然界中各种奇妙的物种，
                                致力于各种大猫小猫的科学保护工作。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17042457.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>陈颖</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                陆桥理事、咨询专家；香港大学博士在读。参与亚洲象等濒危物种研究和保护相关项目，
                                提供技术咨询。2012年获得北京林业大学硕士学位，此后任研究助理至2017年赴香港大
                                学攻读博士学位，研究方向为亚洲象景观遗传学和保护生物学。爱好通过阅读历史、国学、
                                哲学、心理学等书籍，追求智慧的获取，启动自我认知，思考怎样度过有意义的人生，热
                                爱太极。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17503419.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>潘国梁</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                陆桥理事、哥本哈根大学博士在读。主要研究方向为雪豹保护生态学，致力于中国雪豹栖
                                息地分布模型、廊道规划，以及雪豹种群数量和遗传特征等相关研究。硕士在读期间专攻
                                雪豹行为及生态学研究，主要聚焦雪豹行为学探索，同时开展天山、阿尼玛卿雪豹栖息地
                                选择、雪豹猎物资源评估以及华南虎再引入等项目的相关研究。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17042459.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>李祎斌</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究与咨询部主任。毕业于东北林业大学野生动物与自然保护区管理专业，现主要负责项
                                目研究策划、科技咨询与实践，主要负责祁连山、贺兰山雪豹研究项目，协同北京林业大
                                科究团队通过红外相机、卫星追踪、无人机等方法开展雪豹及其猎物研究监测工作。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25100625.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>魏梦璟</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究监测部副主任。毕业于南非比勒陀利亚大学，野生动物管理专业。主要负责项目研究
                                策划以及落地实施。专注于气候学对物种群落影响的研究方向，生态学，自然保护区科学
                                均有涉猎。在过去的五年中参与过多个课题研究，物种横跨两栖爬行动物到大型哺乳动物。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17042461.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>王潇吟</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                教育与传播官员。主要负责雪豹、亚洲象等濒危野生动物、自然生态系统和生物多样性保
                                护相关宣传和科普工作。硕士研究生学历，毕业于英国萨塞克斯大学全球生物多样性保护
                                专业。热衷于昆虫等节肢动物，向往探秘马达加斯加岛。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/29164353.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>樊简</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                项目官员。北京林业大学保护区学专业硕士。主要负责项目策划、科普宣传、数据可视化。
                                喜欢猫科动物和鸟类。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/29164354.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>王兴哲</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                项目官员。毕业于东北林业大学动物科学专业，主要负责雪豹野外调查研究，曾参与华北豹、
                                绿孔雀等物种野外调查和监测。
                            </p>
                            <p class="navbar-text text-left" style="margin-top: auto">
                                保护理念：保持生物多样性，保护濒危物种，同时防控外来物种，用科学的方法实现保护与
                                发展并进，注重人与自然和谐共生！
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/29164355.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>刘单</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                物种项目官员。毕业于美国俄勒冈大学环境学专业，辅修艺术管理。现负责项目策划和统筹
                                管理及野外考察。热爱大自然中的动植物，对自然科学和动物行为学领域有着浓厚的兴趣和
                                探究欲望。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/23154034.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>刘一璇</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                项目协调员。在美国纽约州的Hartwick College 取得生物化学学士学位之后在上
                                海一家制药公司负责实验及客户沟通。从小对自然和野生动物喜爱但是近年开始专注于
                                在野生动物保护领域的职业发展。对野外考察及相关数据分析有兴趣，正在进行野保知
                                识的学习，希望可以加深自己的阅历且逐渐成熟为一名专业的野保人士。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/19392065.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>鲁珊君</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                物种项目协调员。负责项目实施过程中沟通协调、野外调查、数据采集和分析等工作。毕业
                                于美国俄勒冈州立大学野生动物保护专业。热爱大型猫科动物，目前专注于中国的雪豹保护
                                工作，希望有一天能去非洲保护大猫。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25103465.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>李凤姣</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                项目研究员。毕业于中山大学生态学专业。隆德大学保护生态学硕士研究生在读。现负责
                                陆桥物种项目中动物种群的分子生态学实验及分析。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25103460.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>常明捷</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                项目研究员。毕业于西北农林科技大学生态学专业，负责贺兰山雪豹种群和栖息地监测、
                                北京维管束植物多样性调查评估等项目。喜欢野外调查，物种识别，观察大自然中每一种
                                生命的姿态，探究物种共存的机制。
                            </p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17939348.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>时星</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                财务和行政助理。毕业于北京联合大学，大学在读期间在陆桥担任志愿者，毕业后留任陆
                                桥，现主要负责单位的财务工作，同时掌管办公室行政工作，喜欢大猫，以服务团队为使
                                命，期待有更多的机会接触大自然。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17937407.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>侯雪晗</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。本科毕业于中国农业大学动物科学专业，北京林业大学野生动物保护专业硕士
                                在读。主要负责祁连山、贺兰山雪豹种群和栖息地监测项目，热爱野外调查并进行相关的
                                宣传科普工作。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17937409.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>钟华</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。北京林业大学野生动物保护与利用专业硕士在读，项目经历：2019年9月至11
                                月期间，前往四川甘孜洛须白唇鹿自然保护区开展雪豹和金钱豹生态位分化研究野外调查；
                                2020年4月至8月，前往珠穆朗玛峰国家级自然保护区开展雪豹调查，对红外相机的使用有
                                丰富的经验。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17937405.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>丁念繁</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。毕业于北京林业大学野生动物与自然保护区管理专业，野生动植物保护与利用
                                专业硕士在读。目前专注于人兽冲突问题和生态位模型研究，希望通过保护野生动物让人
                                类过上更好的生活。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/21103142.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>汪佳慧</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。本科毕业于北京林业大学野生动物与自然保护区管理专业，北京林业大学野
                                生动植物保护与利用专业硕士在读。拥有丰富的野外调查与社区调查经验。爱好读书与
                                写作，注重对大众的科普教育。研究方向主要在于人兽冲突。致力于探索人类与其它生
                                灵共存之道。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25103462.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>丁欢欢</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。北京林业大学野生动植物保护与利用专业博士在读。脚步丈量土地，相机记录
                                生物。务实基础，专于研究，运用技术，造福生物。希望将自己放入自然而又以高于生物
                                的角度做一些有益而长远的研究。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25103463.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>龚健辉</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。北京林业大学野生动植物保护与利用专业硕士就读。有多领域的生物知识，同时
                                积极参与野外调查工作。有丰富的主持经验，希望在科研工作外为野生动物保护的宣传科普
                                工作出一份力。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25103466.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>裴超</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。本科毕业于扬州大学动物医学专业，北京林业大学野生动植物保护专业硕士
                                在读。项目经历：2021年5月前往珠穆朗玛峰国家级自然保护区吉隆地区进行野生动物
                                救助培训工作；2021年7月参与全国肇事野生动物调查项目，加入新疆片区调查工作组。
                                对动物保护，动植物资源管理，以及野生动物救助有着浓厚兴趣。梦想是终有一天人类
                                能够真正实现与动物、自然的和谐共生。
                            </p>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/25103467.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>夏馨</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。北京林业大学野生动物保护与利用专业硕士在读，关注野生动物生存现状，
                                希望探索出城市野生动物与人类和谐相处的最佳方式。
                            </p>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 team_composition">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                           col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1 team_composition_show">
                        <div class="row team_composition_show_img">
                            <img src="${pageContext.request.contextPath}/img/team/17937404.png"
                                 alt="..." class="img_team">
                        </div>
                        <div class="row">
                            <h3><strong>曹静瑄</strong></h3>
                        </div>
                        <div class="row" style="margin: 0 auto">
                            <p class="navbar-text text-left">
                                研究助理。现就读于北京林业大学野生动物与自然保护区管理专业。主要负责资料整理及协
                                助其他部门工作，同时也是陆桥志愿者之一。喜欢野生动物，钟情雪豹，希望自己能多为它
                                们做点什么。
                            </p>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>

    <div>
        <%@include file="../common/footer.jsp"%>
    </div>
</div>
</body>
</html>
