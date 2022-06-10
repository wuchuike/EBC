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
                        饱受非议的狼 | “害兽”也需要谈保护
                    </strong>
                </h3>
            </div>
            <div class="row" style="margin-top: 15px">
                <p style="color: #999999">
                    <span style="margin-right: 50px;">2020年7月16日 16:40</span>
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
                “狼狈为奸”、“狼子野心”、“引狼入室”，自古以来，狼留给人们的印象似乎总是负面为主，残忍、狡诈、
                贪婪，不一而足。那么，真实的狼究竟如何呢？
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623575.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                一般所说的狼，多指分布在亚、欧和北美的灰狼（Canis lupus），食肉目（Carnivora）犬科（canidae）
                犬属（Canis）哺乳动物。除此外，世界范围内还有赤狼、郊狼、北极狼等20多个亚种。中国境内狼亚种的划分
                仍存在较大分歧，有学者认为中国境内仅C.l.chanco一个亚种，另还有学者分别认为存在3种及5种亚种，目前
                尚无定论，比较明确的是南方狼与北方狼的皮毛，特别是与西北干旱地区的无论在毛绒厚薄、色泽深浅方面均有
                较明显的差别<sup>[1]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623576.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                狼（Canis Lupus）2-3年性成熟，发情期常在2-4月，繁殖期的雌狼会定居在隐蔽的洞穴中，
                而与一贯的残忍奸诈形象不同的是，狼会维持较长时间的一夫一妻配偶关系，繁殖期雄狼会陪伴
                雌狼共同哺育小狼，这个时间长达1-2年。狼善于奔跑，一般行进速度每小时5-7公里，每天活
                动范围50-60公里，并且生态适应很广，曾广泛分布在北半球的极地苔原、亚寒带针叶林、温带
                和亚热带常绿林、温带草原、高山和荒漠。但由于人们对狼的敌意和捕杀，狼在全世界的分布区
                都已急剧缩小，地球上很多地方的狼已经悄然失去踪迹。近代已有日本狼、纽芬兰狼等7个狼亚种
                灭绝。意大利狼、印度狼等被列入了《国际濒危野生动物贸易公约》加以保护<sup>[2,3]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623577.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    图源©高中信[2]
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                在中国，狼曾广布于除台湾及某些岛屿以外的广大地区，我国在20世纪50-60年代时，各地还有专门的“打狼队”，
                把狼作为害兽大力消灭，导致狼已在很多地区消失了，目前主要分布在我国新疆、内蒙古、西藏、青海等地域辽阔
                人口较少的牧区<sup>[2]</sup>。现在狼已被我国列为国家二级保护动物,在《中国哺乳类红色名录》中为易危
                (VU)物种<sup>[4]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                狼有集群的习性，但也常常单只活动，是否集群由很多因素决定，一般认为群体协作猎捕更有效是促成
                集群的重要原因。狼群一般由3-7只狼组成，组成主体一般为雌雄（父母）及其子女，是一个等级制度
                十分森严的社会组织。在狼的家庭结构中，被严格的分为头狼、乙狼和亥狼，森严的等级制度体现在多
                个方面，包括肢体语言、进食优先权以及生育权等，除头狼外其余成员都没有交配权，而家庭地位则是
                根据身体强壮程度和搏击能力确定。狼群为了生存和哺育后代相互合作，在群内社交和相互合作方面，
                他们的能力可能仅次于灵长类动物<sup>[5]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623578.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623579.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    狼群的等级制度
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                但有研究发现中国的狼群数量较少，可能是由于人口密度大、狼群栖息环境被破坏严重，此外，
                生态的破坏导致中国现存野外大型有蹄类猎物已很少，狼只能以小型野生动物及家畜为食，狼群
                协作的必要性不复存在[6]。根据狼的食性研究，狼的食谱很广，最喜食的是野生有蹄类，但在
                野生有蹄类数量少时，也捕食野兔、老鼠等小型哺乳动物，甚至捕食鱼、蜥蜴等小动物。在农区
                和牧区，常因野外食物极其不足而猎杀家畜、家禽。特别是在牧区，当野生食物不足时，狼经常
                尾随羊群，在牧人放松警惕时冲进羊圈或羊群，造成大量羊的死亡，给牧人造成巨大的经济损失。
                这也直接导致人类和狼之间存在严重的生存矛盾<sup>[1]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623580.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    图源©高中信, 王秀辉<sup>[6]</sup>
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                在中国传统文化中，狼不是一个讨喜的存在，往往被认为是害兽，被视为敌人。而在人狼冲突中，
                除了狼实际上对家畜危害较大，给人类财产造成损失外，这种文化心理带来的恐惧厌恶感远远超过
                了实际上所造成的破坏程度<sup>[7]</sup>。以祁连山国家公园中人类与野生动物的冲突研究为
                例，其中狼被牧民认为是肇事最严重的动物之一，然而实际数据表明雪豹的肇事频次是高于狼的，但
                牧民对雪豹肇事的容忍度更高，往往认为雪豹需要进一步保护，狼群数量应该加强控制<sup>[8]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 15px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                那么，狼群就应该被消灭吗？实际上，从生态平衡角度来看，狼起着抑制食草动物种群数量过快发展，维
                护生态系统整体平衡的作用。此外，狼的猎捕对象多是老、弱、病、残者，这有利于促进食草动物种群的
                健康和优化。因此，在整个生态系统中，狼是不可缺少的一环[5]。有很多明显的证据显示，狼在维持生
                态系统的平衡上发挥着重要的作用，比如黄石公园的狼被大肆猎捕后，鹿群爆炸性扩增反而造成群体危机，
                直至重新引入狼，生态才复归平衡<sup>[9]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623581.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                现今，越来越多的人们开始认识到保护狼的必要性和重要性。在欧洲，自工业革命后，英伦三岛、法国，比
                利时、丹麦、瑞士等国的狼相继消失。为此，1973年，世界自然保护联盟物种生存委员会在瑞典成立了“狼
                专家组”，起草并公布了《狼保护宣言》：“狼是地球众多生命中很有分量的一种生物，它有权利生存在这个
                地球上。”1992年，“欧洲狼网络”制定出《欧洲保护狼的战略》，以更好的保护欧洲大陆的狼群。其他各国
                也都相继开始采取保护措施。欧洲的保护运动已经初见成效，国内对狼的态度也有了很大转变，从“坚决消灭，
                并给予捕杀者奖励”到“适度控制狼的数量，不能乱捕乱猎”，但保护之路仍然任重道远，如何有效缓解当地社
                区对狼的敌意是亟需解决的重要议题之一，在这方面“狼专家组”的举措或许是一个值得参考的案例<sup>[9,10]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_5/16623582.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                万物有灵皆可诗，物种的存在自有其意义，从自然出发，保护生物多样性，而不是单以人类的好恶来评断
                一个物种的存亡。愿有一日，鹰击长空，鱼翔浅底，万类霜天竞自由！
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
                [1]高中信. 中国狼研究进展[J]. 动物学杂志, 2006(01):136-138.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [2]高中信. 世界狼的分布及种群现状[J]. 野生动物, 1997, 018(003):27.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [3]轶伦. 狼的名声并不太坏[J]. 科学世界, 2011(12):46-53.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [4]徐会明, 王浩瀚, 张志云,等. 狼分布于三江并流区南部区域的实证资料[J]. 四川动物, 2018, 037(004):463-464.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [5]杨林（编译）. 狼的社会等级[J]. 大自然探索, 2011(3):54-61.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [6]高中信, 王秀辉. 狼的集群生活[J]. 野生动物, 1999, 020(001):24-25.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [7]马建章,杨广涛,马逸清. 中国狼文化研究[J]. 野生动物(2):38-42.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [8]程一凡, 薛亚东, 代云川, et al. 祁连山国家公园青海片区人兽冲突现状与牧民态度认知研究[J].
                生态学报, 2018, 39(4).
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [9]郭琪, 周元春, 蒙蒂·斯隆. 狼保护运动：消除偏见与误解[J]. 生命世界, 2004, 000(008):20-27.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [10]高中信, 刘元. 欧洲狼的恢复. 野生动物, 2003, 024(004):39-42.
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
