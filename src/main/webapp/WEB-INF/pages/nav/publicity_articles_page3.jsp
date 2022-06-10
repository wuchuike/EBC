<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/5/4
  Time: 11:25
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
    </style>


</head>
<body>

<%@include file="../common/nav.jsp"%>

<div class="container" style="margin-top: 80px;margin-bottom: 100px">

    <div class="row text-center">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row">
                <h3>
                    <strong style="font-family: 方正舒体,serif;font-size: 30px">
                        与兽为邻：人类与亚洲象的不解之缘
                    </strong>
                </h3>
            </div>
            <div class="row" style="margin-top: 15px">
                <p style="color: #999999">
                    <span style="margin-right: 50px;">2020年7月1日 19:06</span>
                    <span></span>
                    <span style="margin-left: 50px">浏览量：999</span>
                </p>
            </div>
        </div>
    </div>

    <div class="row text-right">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="font-size: 20px;color: #666666">
                <small>作者：虎贵琳</small>
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 80px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                我们面对着两个难以避免的事实：
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                <span style="background: cornflowerblue;color: white">事实一：</span>亚洲象(Elephas maximus)，
                从1986年开始，就被世界自然保护联盟(IUCN)列为濒危物种(EN)。目前在我国仅云南省南部西双版纳、普洱市和西南部临
                沧市有其野生种群分布，数量不足三百头。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                <span style="background: cornflowerblue;color: white">事实二：</span>亚洲象(Elephas maximus)，
                随着经济的发展、人口增多和天然栖息地的不断减少，导致亚洲象食源不足，进而加剧了人象冲突。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8
                        col-lg-push-2 col-md-push-2 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255797.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                在印度的西孟加拉邦，一群人向一对亚洲象母子投掷燃烧的焦油球后，母子俩匆忙逃离现场。图源©Biplab Hazra，
                Sanctuary Nature Foundation
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                为了探寻濒危物种保护与经济发展之间的平衡点，我们曾不止一次地去探讨不断加剧的人象冲突，试图缓和二者之间
                僵持不下的矛盾。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                <strong style="color: #FF8247">人象冲突</strong>。
                摆在我们面前的这个问题尚未充分地解决。因此，全面地了解这种冲突的历史成因、现状、已有的解
                决措施等，无论过了多久都不会过时。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                这样的了解，有助于我们在下一次看到这类冲突的新闻时，从更理性的角度上去看待其前因与后果。
            </p>
        </div>
    </div>


    <div class="row" style="margin-top: 80px;">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        一、人象冲突的前世今生
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    <strong style="color: #FF8247">
                        过去，大象面临的一大威胁，是人类为了自身利益而进行的猎杀行为
                    </strong>
                    。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    我们的祖先
                    <strong style="color: #FF8247">
                        一开始
                    </strong>
                    是不猎杀大象的。一方面，大象作为食草动物对人类几乎无害；另一方面，在
                    <strong style="color: #FF8247">旧石器时代及之前</strong>，人类没有猎杀大型野兽(
                    包括象科动物)的能力。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    到了
                    <strong style="color: #FF8247">
                        晚新世进入新石器时代
                    </strong>
                    ，人学会了用火，会用石头打磨成坚矛。此时古象虽几乎没有天敌，但存在一个弱点——几乎没有任何的
                    可隐藏性，极容易被人发现和追踪。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255798.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    猎杀 图源：Daily Mail
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    在古人群体化围攻和伏击下，火攻、石头雨阵、绑有石矛的梭镖，都能成为击伤击死猛象的致命武器。
                    而其巨大的躯体和坚韧的皮肤已经能被石刀石斧划开。一头象无疑会给一个古人类部落带来
                    <strong style="color: #FF8247">
                        丰盛的食物
                    </strong>
                    ，以至于
                    <strong style="color: #FF8247">
                        出现了专门追踪猎捕大象的部落。
                    </strong>
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    <strong style="color: #FF8247">
                        而现在，我们不用再为食物而猎杀大象，却出现了新的冲突。
                    </strong>
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255799.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    伤人事件 图源：Daccan Chronicle
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    1972 年和 1973 年，上海动物园为了捕获小象和拍摄捕象记，在西双版纳密林中共计打死5头打伤
                    4头象。其中受伤的一头象成了三脚象，从此见人就攻击，一共伤害了9人。此后，
                    <strong style="color: #FF8247">
                        几乎每年都发生野象伤人的事件。
                    </strong>
                </p>
            </div>
        </div>
    </div>



    <div class="row" style="margin-top: 80px;">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        二、人象关系的现状
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 60px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    <strong style="color: #FF8247">
                        人象关系，一种是和谐相处，一种是冲突矛盾——
                    </strong>
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255800.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    人象和谐相处 图源：World Elephant Day
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 60px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    这第一种，也并非不可能实现，这起源于
                    <strong style="color: #FF8247">
                        傣族、佤族等民族的传统文化
                    </strong>
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    “傣依象，象靠傣”，亚洲象在傣族聚居区域受到宗教和文化的庇护，使得中国分布的亚洲象
                    最终没有像亚洲犀牛那样从国土上消失，为中国保护陆地上个体最大的动物留下了机会。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    相传，傣族的先民迁徙到澜沧江流域后，寨子中的人、畜常被老虎伤害。有一位聪明的老者出
                    了一个主意，让大家在村寨周围种下很多竹子和芭蕉，吸引喜欢吃竹子芭蕉的大象到村寨附近
                    觅食。大象来了，老虎斗不过大象，只好远走“他乡”，村寨从而得以安宁。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    无独有偶，传说在遥远的年代，佤族先民就是以大象为向导开辟家园的。居住在云南南滚河国家
                    级自然保护区外围的沧源佤族多年来保持着一个独特的节日——贡象节。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255801.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    佤族贡象节——庆典活动上的“大象”等是用竹编、纸糊制作而成的模型 图源：yn.naic.org.cn
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    各村寨在每年泼水节后的第三天组织准备一份贡品，到南滚河上游的巴本巴贺举行贡象仪式，包括带
                    绿叶的甘蔗、带绿叶的芭蕉、一尺方圆的糯米粑粑、茶叶、白布、苹果等等，寓意清白、平安、团圆、
                    日子节节高。仪式按请象、迎象、拜象、送象4个流程举行，人们由寨中老人带领着颂唱祝词——“祝愿
                    大象不断繁衍后代，保佑庄稼丰收”，祈愿双方和睦相处，实现人与象和谐共存。在佤族人看来，大地
                    是大象的心脏，河流是大象的血脉，大象就象征着吉祥。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255802.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    “贡象节”是沧源佤族独有的传统节日，也是我国56个民族中唯一一个与亚洲象保护有关的节日。2005年被
                    列入临沧市非物质文化遗产保护名录。 图源：yn.naic.org.cn
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    这样的和谐景象毕竟是少数，人象冲突，是人类社会发展难以避免的矛盾。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255803.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    吃农作物的大象 图源：Steemit
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    现在，在各方协调努力下，人象冲突得到了一定的缓解。但亚洲象由于生境条件缺失而被
                    迫走出保护区，对农作物与村寨产生了依赖。所以，人象开启了拉锯式对抗。
                </p>
            </div>
        </div>
    </div>



    <div class="row" style="margin-top: 80px;">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        三、这场拉锯战，不争输赢
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 70px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    人与象这场旷日持久的拉锯战，不争输赢，只为探得最适合彼此的生存之道。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255804.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    图源：IUCN
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    北京林业大学协同西双版纳自然保护区、陆桥生态中心等科研团队就我国云南亚洲象种群状况、冲突情
                    况和探讨缓解措施等进行了多方面的研究努力。比如Chen et al.(2016)致力于
                    <strong style="color: #FF8247">
                        冲突热点区域的绘制、预测
                    </strong>
                    以更好识别和响应，并建议鼓励将低商业价值的耕地或人工林转变为森林等适宜栖息地，特别是避免在保
                    护区边缘、人口密度低和/或大象长期往来的廊道区域建设人工经济林（如橡胶园）；
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    李俊松等（2017）在西双版纳的尚勇自然保护区进行亚洲象种群数量的调查及其对栖息地选择偏好的研
                    究，也提出了通过
                    <strong style="color: #FF8247">
                        栖息地修复
                    </strong>
                    扩大亚洲象自然栖息地和食物资源以缓解人象冲突的建议。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_3/16255805.png"
                     alt="..." class="img-responsive" style="width: 400px;height: 200px">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    泼出的水恰好像一头象 图源网络
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    此外还有研究就影响
                    <strong style="color: #FF8247">
                        公众对亚洲象态度的关键因子
                    </strong>
                    展开了调查(黄程等，2019)，结果表明，尽管受访者对亚洲象的负面态度（31%）多于正面态度（25%），
                    但仍有 79% 受访者认为应该保护亚洲象。是否赋予亚洲象存在价值、是否遭受亚洲象损害、保险赔偿和预
                    警效果是影响公众对亚洲象态度的关键因子，然而，仅 35% 受访者认为现行预警是及时的，62% 受损者不
                    满意保险赔偿。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    因此，提升公众赋予亚洲象的存在价值、完善保险赔偿机制、提高监测预警效率可以
                    <strong style="color: #FF8247">
                        减少公众对亚洲象的负面态度
                    </strong>
                    。
                    然而，目前，仅 35% 村民认为通过电话、短信、微信、广播、口口相传等方式的预警是及时的，说明该预警
                    网络仍有许多不足之处，结合公众科学、互联网 +、遥测技术可能是未来预警系统的发展方向。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px">
                    人象冲突，是一个需要持续关注的重点问题。今天，尽可能全面地了解，只为之后更好的共存。
                </p>
            </div>
        </div>


        <div class="row" style="margin-top: 80px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    参考文献/资料：
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [1] https://www.iucnredlist.org/species/7140/12828813?from=singlemessage#assessment-information
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [2]张立，王宁，王宇宁，等．云南思茅亚洲象对栖息地的选择与利用［J］．兽类报，2003,23(3): 185-192.
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [3] 彭勇，吴顺福. 人象冲突原因分析及缓解措施[J]. 山东林业科技. 2016, 46(5): 94-96, 61.
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [4]黄程，于秋鹏，李学友，等. 影响公众对亚洲象态度的关键因子[J]. 林业建设. 2019(06): 45-48.
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [5]李纯，曹大藩. 中国亚洲象保护历史回顾与思考[J]. 林业建设. 2019(06): 6-10.
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [6] http://www.xinhuanet.com/local/2019-12/02/c_1125299492.html
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [7] 李永杰. 佤族的贡象节[J]. 云南林业, 1996 (2).
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [8] http://www.ynmzsb.cn/hp-nry.aspx?id=8496
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [9] Chen Y, Marino J, Chen Y, et al. Predicting hotspots of human-elephant conflict to inform
                    mitigation strategies in  Xishuangbanna, Southwest China[J]. PloS one, 2016, 11(9): e0162035.
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    [10] 李俊松, 陈颖, 飘优, 等. 尚勇自然保护区亚洲象种群数量及栖息地选择研究[J]. 林业调查规划, 2017, 42(2): 48-53.
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 80px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    <a href="" style="text-decoration: none">
                        上一篇：
                    </a>
                </p>
                <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                    <a href="" style="text-decoration: none">
                        下一篇：
                    </a>
                </p>
            </div>
        </div>

    </div>



</div>

<%@include file="../common/footer.jsp"%>


</body>
</html>
