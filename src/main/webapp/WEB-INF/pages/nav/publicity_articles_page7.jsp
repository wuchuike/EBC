<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/5/4
  Time: 11:26
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
                        加入雪豹保护，共建生物多样性的未来
                    </strong>
                </h3>
            </div>
            <div class="row" style="margin-top: 15px">
                <p style="color: #999999">
                    <span style="margin-right: 50px;">2020年7月16日 17:08</span>
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
                <small>作者：王熙博</small>
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 60px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                “在未来的许多个世纪中，那些山峰仍然会矗立在这寂寥的风景里，但当最后一只雪豹在峭壁间消失时......
                一簇生命的火花将随之而逝，山峰也将变成沉默的石头。”
            </p>
            <p class="text-right">
                ——野生动植物生态学家乔治•夏勒
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 60px;">

        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        高山之魂
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    即使是经过了几十年的研究，雪豹依旧神秘，人类对雪豹的了解依旧十分有限。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624725.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        红外相机下的雪豹 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    雪豹（Panthera uncia）隶属于哺乳纲(Mammalia)食肉目(Carnivora)猫科(Felidae)豹属
                    (Panthera)，是高原地区的岩栖性大型食肉动物，常以岩羊、北山羊等动物为食。因其黑白相间的
                    体色以及常出没于高山雪线附近的习性，而得名“雪豹”。雪豹分布区域通常十分破碎，呈斑状分布，
                    人为界限又将其分割得更加复杂。雪豹在我国的分布主要在青藏高原地区、新疆天山山脉，以及甘肃、
                    四川、云南等省份的高海拔地区。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624726.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        雪豹的分布范围（黄色部分） 图源：IUCN
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    雪豹为适应高原环境而演化出的特征是与其他大猫的主要区别：蓬松的毛发起到了保温的作用；较小的脑
                    袋和耳朵减少了热量的散失；宽大的脚掌便于在积雪上运动；灰底黑斑的体色便于其在山岩雪地中伏击猎物。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624727.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        雪豹的大爪印 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    雪豹敏感、机警、喜欢独行、夜间活动、远离人迹，以及高海拔的生活特性使其行为特征难以为人所知。
                    到目前为止，人类对雪豹的了解仍然十分有限。
                </p>
            </div>
        </div>

    </div>



    <div class="row" style="margin-top: 70px;">

        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        被打扰的隐士
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 50px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    早在 1975 年，雪豹就被列入“濒危野生动植物种国际贸易公约”（CITES）的附录1 中，1998 年被世界自然保护
                    联盟（IUCN）列为“世界濒危珍稀动物保护种属”目录中。中国是雪豹的最主要分布国，占有整个雪豹栖息地的60%。
                    青藏高原也是唯一一片拥有雪豹成片栖息地的区域。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 10px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    而现在，雪豹的生存状况正面临着严重的威胁。过度放牧，草场退化导致猎物减少；家畜数量增长，人兽冲突加剧导致
                    了牧民对雪豹的报复性猎杀；道路建设，土地开发导致栖息地的破碎化；甚至藏獒热过去后，遗弃或丢失的犬类也会影
                    响到雪豹的生存。其中，栖息地退化和减少对雪豹的影响较大，报复性猎杀对雪豹的伤害也不容忽视<sup>[1]</sup>。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624728.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        红外相机下的雪豹 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 30px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    据统计，在中国，1990—2012年间至少有432只雪豹死于盗猎，雪豹死亡比例中盗猎致死率达到了 81%，
                    人为报复性猎杀的比例占到 19%<sup>[2]</sup>。现有研究发现雪豹的食物中大约有三分之一来自牧
                    民所饲养的牛羊，在某些地区，这个比例甚至达到了70%，这使得雪豹与牧民之间的冲突尤为严重。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    道路建设，林地开发破坏了原本的栖息环境。尤其是对于雪豹这种活动范围较大的捕食者来说，栖息地减小和
                    破碎化的影响显得更加严重。同时，由于全球气候变化，雪豹生存环境温度升高，高山雪线上升，森林植被向
                    高海拔地区扩散，也会使得原本的森林被开发为农业用地，进而加速了对雪豹栖息地的破坏。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    种种直接或间接的因素威胁到了雪豹的繁衍生息，也使雪豹的保护工作面临挑战。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624729.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        红外相机下的雪豹 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

    </div>


    <div class="row" style="margin-top: 70px;">

        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        神秘与神性
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 35px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    我们选择保护雪豹，不仅仅是因为它们数量稀少，栖息地骤减，还因为它们承载了当地的文化。《山海经·北山经》
                    有对神兽“孟极”的描写：“……泚水出焉，西流注于河。有兽焉，其状如豹，而文题白身，名曰孟极，是善伏，其名
                    自呼。”文中的“孟极”就是雪豹<sup>[3]</sup>。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624730.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        公元前三世纪左右，《山海经》中关于“孟极”的记载，是我国，也是世界上关于雪豹的最早记载。
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 35px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    作为高原上最神秘的生物，青藏高原上的藏民们对雪豹充满了敬畏和崇拜。自古以来，雪豹就与藏族
                    文化和藏传佛教密切相关。藏族佛教寺庙往往坐落于裸岩与河流之间。而这也是雪豹的栖息场所。据
                    调查，46%的寺庙位于雪豹栖息地的内部；90%的寺庙位于雪豹栖息地的5公里范围内。在藏传佛教的
                    佛经中，雪豹是石山的主人；是所有食肉动物的领袖；是神山的守护神之一[4]。因此，保护雪豹，不
                    仅仅是保护这一物种，也是对传统藏传佛教文化的守护和尊重。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624731.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        在六字真言下走过的雪豹 图源：PlateauWild
                    </p>
                </div>
            </div>
        </div>

    </div>


    <div class="row" style="margin-top: 70px;">

        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        作为雪豹，“责任”重大
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 35px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    雪豹由于其稀少的数量，神秘的习性，能够引起公众的重视，是一种重要的旗舰物种，这使得公
                    众在关注雪豹的同时，也认识、了解了同生态系统中的其他生物。在互联网上，不少保护区、动
                    物园的官博以及各路致力于动物保护的科普博主都在进行科普活动，呼吁公众了解雪豹、保护雪
                    豹，使雪豹作为旗舰种的作用逐渐扩大。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624732.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        人工繁育的雪豹“傲雪”超话拥有数千万的阅读量 图源：新浪微博
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 35px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    雪豹同时也是高原生态系统的伞护种。在雪豹保护的过程中，对于其生存环境的保护是必不
                    可少的，因此同时也保护了其他同生存环境的生物。雪豹在物种保护层面上也成为了其他物
                    种的保护伞。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    作为高原生态系统中顶级的捕食者，在食物链中处于顶级的地位，雪豹的数量多少也能直接反映出当地整体
                    的生态环境状况。雪豹亦被人们称为“高海拔生态系统健康与否的气压计”。雪豹数量的减少会影响到与之相
                    关的所有生物，尤其是在寒冷的高原自然环境，初级产能低下，生态系统的自我调节能力较弱，雪豹种群数
                    量的大幅减少甚至可能使生态系统彻底崩溃。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624734.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        以珠峰为背景的雪豹全身照 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

    </div>


    <div class="row" style="margin-top: 70px;">

        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <div class="row text-center">
                <h4>
                    <strong style="font-size: 18px">
                        加入雪豹保护，共建生物多样性的未来
                    </strong>
                </h4>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    虽然雪豹的生存繁衍遇到了诸多威胁，但好在随着政府的重视和各种方针政策的不断出台，人民群
                    众对雪豹的关注和保护意识也不断提高，越来越多的人们参与到保护措施的探索和实施中来。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p style="text-indent: 2em;font-size: 17px;margin-top: 20px">
                    这之中少不了全球各机构、组织和高校的共同努力。除了研究员、学者能够在雪豹保护中发挥作用之外，
                    只要你热爱野生动物，关心自然生态，就可以加入我们，致力于雪豹及其他野生动物乃至生态系统和生
                    态环境的保护之中。
                </p>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624735.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        雪豹保护工作-布设红外相机 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624736.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        雪豹保护工作-巡护勘察 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 40px">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                    <img src="${pageContext.request.contextPath}/img/articles/pages_7/16624737.png"
                         alt="..." class="img-responsive">
                </div>
            </div>
            <div class="row" style="margin-top: 5px">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <p class="text-center" style="color: #999999;font-size: 17px">
                        雪豹保护工作-登高望远，与冰川雪山为伴 图源：陆桥生态中心
                    </p>
                </div>
            </div>
        </div>

    </div>


    <div class="row" style="margin-top: 80px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                参考资料：
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [1]李小雨,肖凌云,等.中国雪豹的威胁与保护现状[J].生物多样性,2019,27(09):932-942.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [2]饶凤艳,张文政.雪豹:生存危机与保护拯救[J].生态经济,2015,31(12):6-9
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [3]周士琦.《山海经》“孟极”即“雪豹”考[J].中国科技史料,1991(02):84-87.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [4]李娟，雪豹与寺庙：相隔数百万年的殊途同归，青海民族大学藏学院，2018.
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
<%@include file="../common/footer.jsp"%>

</body>
</html>
