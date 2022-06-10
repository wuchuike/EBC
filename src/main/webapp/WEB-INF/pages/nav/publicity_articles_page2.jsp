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
                        舔石头？喝眼泪？我真的只为了吃口咸的！
                    </strong>
                </h3>
            </div>
            <div class="row" style="margin-top: 15px">
                <p style="color: #999999">
                    <span style="margin-right: 50px;">2020年7月1日 19:04</span>
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
                <small>作者： 王熙博</small>
            </p>
        </div>
    </div>


    <div class="row" style="margin-top: 40px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px;color: slateblue">
                人类通过各种方式的制盐技术来实现“食盐自由”，而动物们又是如何获取盐分的呢？
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                从节肢动物中的昆虫到哺乳动物中的各种大型兽类，以及我们人类本身，几乎所有动物的生存都需要盐分的摄入。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                “盐”是各种无机盐的统称，我们熟知的各种阳离子与阴离子组合起来就能形成盐。无机盐中的阳离子如钠离子、钾
                离子、镁离子、钙离子等是人体必需的常量非金属元素，在构成机体组织、维持神经与肌肉的正常兴奋等方面有重
                要的作用<sup>[1]</sup>。同时，无机盐也是维持机体渗透压平衡的必要成分。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                在我国古代，食盐的作为生活必需品的交换流通可以追溯到上古时代<sup>[2]</sup>。传说炎帝黄帝与蚩尤开战是为了争夺食盐；
                中国先民在5000多年前就通过刮取海滨咸土，淋卤煎盐的方式提取盐分；在古罗马，士兵们能够按日领取一定量的补
                贴，被称为“salarium”（即后来英文里的“salary”（薪水）一词），这笔补贴以食盐的形式给予。盐业文化在人类
                文化中扮演了重要的地位，同时，在自然界，对于动物们来说，摄取盐分也是它们最本能的需求。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                如果你的家里养了猫或狗的话，一定见过它（们）在你身上舔舐的样子。这也许是一种与你亲昵的表现，但从生物学的
                角度来讲，舔舐主人的皮肤也是一种摄取盐分的方式。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292448.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                笔者家里的宠物狗就喜欢凑过来舔来舔去
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                在一次动物学实习中，我们需要布置鼠夹来捕获老鼠，在布置的过程中，在布放区域撒上一些食盐往往会提高捕鼠的效果。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                在自然界中，盐分是有限的，人类已经能够通过各种方式的制盐技术来提取盐分，但动物们获取盐分往往比
                较困难，不同种类的动物获取盐分的方式也不尽相同。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292449.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                人工提炼的精盐 图源网络
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                在生物体中，无机盐主要存在于体液里（主要包括血浆和组织液）。因此，食肉动物（雪豹、虎、狼等）
                在捕食过程中，除了通过食用肌肉组织和脂肪组织来获取蛋白质、脂肪、氨基酸等营养物质外，还会通过
                猎物的血液来获取盐分。在一些食肉动物伤人的报道中，肇事动物有时会成“惯犯”，也可能是因为人体内
                含盐量比一般动物要高，对盐分的需求驱使着肇事动物继续伤害人类。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292450.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                雪豹从猎物中获取盐分 图源：zsjsll.goooc.net
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                对于食草动物（岩羊、羚牛、山羊等）能够通过取食大量的植物来获得植物细胞中少量的无机盐。一般来
                说，植物中的盐分尚不足以维持食草动物巨大身体的生理机能，因此，大型食草动物们常通过舔舐地面或
                岩石来获取盐分。因而能看到岩羊、山羊等“铤而走险”在岩壁上舔舐岩石的画面。一些黏土悬崖形成的天
                然盐砖，也会吸引到一些鸟类来获取盐分。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292452.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                山羊在岩壁上舔舐岩石获取盐分 图源: hybridwildlife.com
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292453.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                富含盐分的峭壁吸引着鸟类 图源：National Geographic
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                在畜牧业中，由于饲料的含盐量往往不够，养殖者需要为家畜提供特定的盐砖（盐块）让动物舔舐来满足对盐分的需求。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292454.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                畜牧业用盐砖 图源网络
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292455.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                家畜舔舐盐砖 图源网络
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                对于昆虫来说，鳞翅目的蝴蝶和蛾等获取盐分的行为最为明显。自然界中，蝴蝶会成群的附着在鳄鱼、乌龟等爬
                行动物的眼部吸取泪液（这种行为有一个专有名词：Lachryphagy），或是聚集在动物粪便、尸体附近，这都是
                它们获取宝贵盐分的行为。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292457.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                吸取眼泪的蝴蝶 图源：sohu
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                除此之外，某些夜蛾科（Noctuidae）的昆虫会“富贵险中求”地在鸟类的眼部冒险获取盐分；裳蛾科（Erebibae）
                的广壶裳蛾（calyptra thalictri）能够通过钩状的口器吸食血液<sup>[3]</sup>；舟蛾科（Notodontidae）的北方咕噜
                舟蛾（Gluphisia septentrionis）能够一次性获取自身体重600倍的水，在边喝水边排水的过程中，吸收水中
                的盐分。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292458.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                广壶裳蛾吸食血液 图源：entomologytoday.org
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 50px">
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                        col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
            <img src="${pageContext.request.contextPath}/img/articles/pages_2/16292459.png"
                 alt="..." class="img-responsive">
        </div>
    </div>
    <div class="row" style="margin-top: 5px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-center" style="color: #999999;font-size: 17px">
                北方咕噜舟蛾 图源：Pinterest
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                除了这些“急于”获取盐分的动物，对于许多在海洋这种高盐分环境下生活的或自身排泄功能并不完善的动物来说反而
                需要从体内排出多余的盐分来维持生存。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p style="text-indent: 2em;font-size: 17px">
                海洋硬骨鱼能够通过鳃上的“泌盐细胞”将海水中多余的盐排出体外；软骨鱼能够通过增加尿液中的尿素含量来排盐；海
                洋中的贝类能够通过在体内积累氨基酸来与外界高盐环境对抗，平衡渗透压；海蛇能通过排盐腺体过滤海水；在海边生
                活的海鬣蜥（Amblyrhynchus cristatus）由于长期以海藻为食，在鼻孔和眼睛之间演化出了盐腺，以“喷嚏”的形式
                排出盐分<sup>[4]</sup>。以及我们熟悉的“鳄鱼的眼泪”，这也是一种排盐行为。
            </p>
        </div>
    </div>


    <div class="row" style="margin-top: 80px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                参考资料：
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [1] 李颖.人体内的化学元素与人体健康[J].课程教育研究,2013(23):167.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [2] 影山刚,顾南,顾学稼.中国古代盐业的生产组织与经营形态——专卖制度前的情况[J].盐业史研究,1990(01):62-73+80.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [3] https://www.acemap.info/field/2008550798
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [4] 海鬣蜥的生存独白[J].海洋世界,2011(03):18-21.
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
