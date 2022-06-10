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
                        高原鼠兔 | 生存在高原草甸的短耳朵兔
                    </strong>
                </h3>
            </div>
            <div class="row" style="margin-top: 15px">
                <p style="color: #999999">
                    <span style="margin-right: 50px;">2020年7月16日 16:56</span>
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
                <small>作者：弗芮德</small>
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 60px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                有一种小动物，它生长在遥远的青藏高原，却经常在各位的表情包中露面。它明明拥有一对小短圆的耳朵，却被
                冠以兔之名。是的，它就是我们今天的主角“高原鼠兔”，一个绝佳的地下管道建设者，一个备受争议的族群。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_6/16624186.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    谁？是谁在说本兔？图源网络
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                高原鼠兔（Ochotona curzoniae）隶属于兔形目、鼠兔科、鼠兔属，其栖息地为海拔3000-5100m的矮嵩草草
                甸<sup>[1]</sup>，主要分布于中国西部及其毗邻的尼泊尔、锡金等地。在我国分布于西藏、青海、甘肃南部、
                四川西北部。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                <strong style="color: #FF8247">
                    鼠兔鼠兔，到底是鼠还是兔？
                </strong>
                从外观看，它没有兔子标志性的长耳朵，形似鼠，尾巴短到近乎于无，这样一种动物是因何归入兔形目？
                原来呀，兔形目和啮齿目相比有一个显著的区别在于，
                <strong style="color: #FF8247">
                    兔形目在上颚大门齿的后面还有一对较小的门齿
                </strong>
                ，紧靠第一对上门齿生长，而啮齿目则只有一对上门齿，鼠兔恰好符合兔形目这个特征，所以这是一只货真
                价实长得像鼠的兔子。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_6/16624187.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    露出小牙 图源网络
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                其实呢，鼠兔属有很多种类，全世界30种鼠兔中,有28种都生活在欧亚大陆，特别是在中国中西部至喜马
                拉雅地区——24种生活在中国，其中又有12种为中国特有[2,3]。这些鼠兔中，有部分还是拥有肉眼可见的
                兔形目特征的（例如伊犁鼠兔）。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_6/16624188.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    伊犁鼠兔 图源网络
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 55px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                而今天的主角——高原鼠兔，作为青藏高原上小型兽类的优势种，围绕其进行的研究也较多<sup>[4]</sup>。
                高原鼠兔是一种家群式的社会型动物，家庭是其社会基本组成单位。据研究，高原鼠兔寿命不长，极少数个体的
                存活期超过2年，平均寿命为119.9天<sup>[5]</sup>。其繁殖期则主要集中在每年的4月至8月，每年可繁殖
                2-5胎，每胎产仔数通常为3-7只，繁殖周期约为3周<sup>[1]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                高原鼠兔还是天生的建筑高手，它们以洞穴为中心进行各项生命活动。洞穴系统错综复杂，以窝穴为中心呈
                放射状分布，洞系还包含隐藏洞穴和栖息洞穴，其洞道总长度平均为6.37m，最大深度约为40~50cm<sup>[6]</sup>。
                <strong style="color: #FF8247">
                    但很大程度上，正是这项技能和其出色的繁殖能力给这个族群带来诸多争议。
                </strong>
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                从上世纪60年代开始，草场退化逐渐成为青藏高原的重要问题，而鼠兔由于其强大的繁殖能力和啃草
                掘洞的习性，被认为是草场退化的罪魁祸首，一时间人人喊打，受到大规模的毒杀。在1960-1990年
                间，我国青藏高原累计有超过208000hm<sup>2</sup>的土地被施以灭鼠剂，高原鼠兔是主要的捕
                杀目标<sup>[7]</sup>，进行的灭鼠措施多种多样，主要有化学灭鼠，器械灭鼠，生物毒素灭鼠，
                培育天敌灭鼠和不育技术灭鼠等。造成的直接后果是高原鼠兔的种群密度远远低于其自然条件下的种群
                密度，在青海省连续实施灭鼠活动的草场，高原鼠兔的种群数量仅为灭鼠前的5%<sup>[8]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                <strong style="color: #FF8247">
                    但越来越多的研究表明，高原鼠兔对青藏高原的生态系统有重大意义
                </strong>
                。
                绝非“害鼠”二字可以概括。高原鼠兔对生态系统的良性作用主要体现在三个方面。第一、作为初级消费者，
                高原鼠兔是青藏高原众多肉食性动物的主要食物来源——尤其是在冬季，其种群数量变化极大影响肉食动物
                的生存。第二、对于同生态位的鸟类、两栖类等，高原鼠兔的洞穴可以为它们提供栖息场所，并在长期的
                演化过程中结成了“鼠兔提供庇护场所，鸟类提供实时警报”的互利关系。第三、高原鼠兔的活动还有助于
                提高地面植被的丰富性——曾经被认为是破坏性的掘洞行为，实质上疏松和改善了土壤条件，加快了土壤的
                物质流动和水循环<sup>[9]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_6/16624189.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    高原鼠兔的生态作用 （李娜娜等，2013）
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 35px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                尤其重要的是，研究表明，牧场退化并非鼠兔造成，
                <strong style="color: #FF8247">
                    植被丰茂的牧场会遮挡视野并非鼠兔适宜的生存环境
                </strong>
                。
                反而正是退化的牧场吸引了它们，导致了族群数量的激增。当然在已退化的牧场上，鼠兔的大量增殖
                会破坏植物根系和土壤结构，加快土壤的侵蚀速度，降低栖息地的植被质量，最终加速牧场退化，并
                存在和家畜争夺食物资源的现象，也有研究指出高原鼠兔的存在对人工改良退化牧场造成较大的影响
                <sup>[10]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                基于种种研究，有专家提出，采取综合措施诸如减少牲畜数量、动态轮牧、草地恢复管理技术、社区参
                与式管理等提高草地生产力和防止鼠害暴发，从而达到减缓牧场退化趋势的目的。同时，在对各类型退
                化草地进行综合治理时，加强对害鼠种群动态的监测，当种群密度超过经济阈值或达到高密度种群时，
                应急性、常规性灭鼠工作才可以实施<sup>[11]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_6/16624190.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    （范长风等，2012）
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 35px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                无独有偶，高原鼠兔的经历并非唯一，美国土拨鼠也有类似的遭遇。如今土拨鼠的生态作用虽已获得重新定义，
                但其数量已减少至被列入美国濒危物种，对当地的生物多样性也造成了巨大损失<sup>[12]</sup>。高原鼠兔
                目前已被《中 国生物多样性红色名录——脊椎动物卷》列为低危等级，伊犁鼠兔则已被列为濒危，另还有多种濒
                危、易危、近危，总体面临生存危机，前车之鉴，不容乐观，
                <strong style="color: #FF8247">
                    警醒大家是时候采取更科学的方法对待高原鼠兔乃至整个鼠兔大家族
                </strong>
                。
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
                [1]潘璇,米玛旺堆. 高原鼠兔生态学研究进展[J]. 生态学杂志(9期):2537-2543.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [2]Ge DY, Wen ZX, Xia L, Zhang Z, Erbajeva M, Huang CM,Yang QS (2013) Evolutionary history of
                Lagomorphs in response to global environmental change. PLoS ONE, 8,e59668.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [3] http://www.ioz.cas.cn/kxcb/kpwz/201702/t20170210_4742746.html中国科学院动物研究所
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [4]沈世英, 陈一耕. 青海省果洛大武地区高原鼠兔生态学初步研究[J]. 兽类学报, 1984, 4(2):107-115.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [5]王学高, 戴克华. 高原鼠兔 Ochotona curzoniae自然寿命研究[J]. 兽类学报, 1989, 009(001):56-62.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [6]卫万荣, 张灵菲, 杨国荣,等. A study on the burrow features and functions of plateau pika%高
                原鼠兔洞系特征及功能研究[J]. 草业学报, 2013, 022(006):198-204.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [7]Fan Naichang, Zhou Wenyang, Wei Wanhong, et al. Rodent pest management in the Qinghai-Tibet
                alpine meadow ecosystem [G]//Singleton G.R, Hinds L A, Leirs H, et al. Ecologically-Based Rodent
                Management of rodent pests.Canberra: ACIAR,1999: 285-304
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [8]李娜娜, 李华, 雷光春,等. Ecological Function of Plateau Pika (Ochotona curzoniae)%高原鼠兔(Ochotona
                curzoniae)的生态功能[J]. 野生动物, 2013, 034(004):238-242.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [9]Wilson M C , Smith A T . The pika and the watershed: The impact of small mammal poisoning on
                the ecohydrology of the Qinghai-Tibetan Plateau[J]. AMBIO, 2015, 44(1):16-22.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [10]潘多锋, 马玉寿, 张德罡,等. 高原鼠兔对退化草地人工植被稳定性的影响[J]. 草原与草坪, 2006(5):49-51.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [11]孙飞达, 苟文龙, 李飞,等. 青藏高原高寒草甸生态系统高原鼠兔种群调查及其防控阈值研究(英文)[J]. 四川动物,
                2016(06):31-38.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [12]范长风, 范乃心. 生物多样性的祝福还是诅咒——三江源地区毒杀高原鼠兔的权力话语与藏族生态智慧的调查研究
                %Benediction or Damnation of Biodiversity——Investigation on Power Discourse of Killing
                Plateau Pikas and Tibetan Ecological Wisdom in Three River Sources Areas[J]. 青海民族研究,
                2012, 023(004):90-95.
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
