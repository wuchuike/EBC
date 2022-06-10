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
                        与兽为邻：雪豹之于牧民
                    </strong>
                </h3>
            </div>
            <div class="row" style="margin-top: 15px">
                <p style="color: #999999">
                    <span style="margin-right: 50px;">2020年7月1日 19:12</span>
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
                野生动物与人类间的冲突，在全世界普遍存在，尤其是保护区边界地区。雪豹，作为一种食肉猫科动物，
                它们与当地牧民之间的冲突尤为明显。雪豹与牧民间的冲突不仅关乎到牧民们的基本生活保障，也与雪豹
                的种群数量息息相关。因此，关注人兽冲突是雪豹保护工作中必不可少的一环。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_4/16255878.png"
                        alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    图源：Britannica
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                雪豹（panthera uncia），隶属于食肉目Carnivora猫科Felidae豹属Panthera。在我国主要分布于青
                藏高原和新疆帕米尔高原等高海拔地区。作为高原生态系统中最顶级的捕食者，雪豹一般捕食北山羊、岩羊等
                野生有蹄类哺乳动物，偶尔也捕食旱獭、高原兔等小型哺乳动物<sup>[2]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_4/16255879.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    雪豹捕食猎物 图源：snowleopard.org
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                除了这些天然的食物来源之外，雪豹也会或多或少捕食绵羊、耗牛等家畜，这是引发当地人兽冲突的直接
                原因。通过调查雪豹的粪便组成，学者们发现，雪豹的食物中，有15%—30%由家畜组成。在有些地区，这
                个比例甚至高达70%<sup>[3]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_4/16255880.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    牧民羊圈中的雪豹 图源：见水印
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                这些家畜是当地牧民生活的重要保障，家畜被雪豹捕食，这对牧民们来说，是最直接也是最巨大的损失。与此同时，
                为了减少损失，不少牧民开始对雪豹实施报复性猎杀。从牧民的角度来看，这种做法不仅断绝了后患，也可以通过猎
                杀所得的雪豹皮毛获得额外收益<sup>[4]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                <strong>这场雪豹与牧民的竞争对任何一方都是不利的。</strong>
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                雪豹不同于一些高繁殖力物种，对人为猎杀十分敏感。研究显示，只有当种群中雌性雪豹数量超过15只时，
                该种群才能承受一年被猎杀一只雪豹所带来的影响<sup>[5]</sup>。而牧民们所猎杀的雪豹数量很可能
                远远超过这个限度。也有研究表明，在从雪豹所受威胁来看，对雪豹的直接猎杀或抓捕中，报复性猎杀对雪
                豹的影响最大<sup>[6]</sup>。而对于牧民们来说，家畜被捕食所带来的损失也是难以接受的。在三江
                源地区，人兽冲突导致的牦牛死亡率为4%，绵羊死亡率为11%，户均损失达到2.8万元。一方面，雪豹肇事
                给牧民们带来了经济损失，另一方面，肇事也反过来增加了雪豹被报复性猎杀的风险。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_4/16255881.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    图源：陆桥生态中心
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                在中国，解决这一问题的主要方式是通过补偿牧民的损失来缓解人兽冲突。2012年1月开始实施的《青海省重点保护陆生野生
                动物造成人身财产损失补偿办法》中第十一条规定：造成牲畜死亡的，补偿金按当地市场价格的50%补偿。并在第十三条中规
                定，省、州（地、市）、县三级财政按照2:1:1来负担野生动物肇事后的损失。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                但就算如此，政府所补偿的金额相对于牧民们的损失来说，往往是不够的。因此，只有从根本上遏制住
                人兽冲突才是解决问题的关键。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                近年来，三江源地区采取了一些人兽冲突预防和缓解措施，如成立巡护队、开展野生动物防护和安全意
                识宣传教育等。这些工作已经取得了相当可观的成效，至少是在防护和避免冲突的环节中起到了很大的
                作用<sup>[7]</sup>。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                藏族的传统文化在缓解人兽冲突中也发挥了重要作用。即使有部分地区雪豹捕食家畜的行为十分严重，
                但也有部分牧民并没有采取报复性猎杀的行为。因为他们认为雪豹是神山的守护神，不保护雪豹就是放
                弃了对神山的保护。这种思想传达出一种藏族的传统生态伦理：众生平等。在这种理念的影响下，当地
                僧人和牧民自发组成了生态环境保护协会，自发开展生物多样性监测和保护，组织自然教育，以多样化
                的方式解决雪豹问题，保护雪豹，守护神山圣湖。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                同时，这种以文化为依托的保护方式也引发了动物保护学者们的新思考。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8
                    col-lg-push-3 col-md-push-3 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_4/16255882.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    图源：陆桥生态中心
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                “人与野生动物冲突”这个词汇在2004年的第五次世界公园大会上开始使用，并成为了保护生物学领域的
                重要课题。但“人与野生动物冲突”以及相关词语“肇事”、“盗食家畜”等都是以人类为中心、以人类利益
                为出发点对人与野生动物关系的描述。野生动物的活动既会给人类带来困扰，也会带来积极影响。例如,
                在藏区中有部分藏民认为雪豹捕食家畜的行为是天经地义的，这与他们的生态伦理思想有相合之处，是已
                经被接受了的事情。但如果这种行为被定义为“冲突”，它就可能被定性为一个不能被正常接受的问题。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 40px">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-8 col-xs-8
                    col-lg-push-4 col-md-push-4 col-sm-push-2 col-xs-push-2">
                <img src="${pageContext.request.contextPath}/img/articles/pages_4/16255883.png"
                     alt="..." class="img-responsive">
            </div>
        </div>
        <div class="row" style="margin-top: 5px">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <p class="text-center" style="color: #999999;font-size: 17px">
                    关于藏民索日一家保护雪豹的纪录片《索日家和雪豹》
                </p>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                因而有学者建议放弃使用“冲突”，改为“共存”<sup>[8]</sup>。“共存”既可以理解为褒义的
                “和谐共存”也可以理解为中性的“共同生存”。具体来说，如果牧民对于雪豹捕食家畜的行为并不
                在意，那这样的人兽关系是对雪豹有利的偏利状态；如果牧民认为雪豹捕食家畜等于将家畜献给
                了神山，这样既保护了雪豹也视同为自己和家人积累了福分，这样的人兽关系就是对双方都有利
                的互惠关系。
            </p>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;font-size: 17px">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                    col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
            <p class="text-left" style="text-indent: 2em">
                因此，对于雪豹捕食家畜的这一行为，也许不能仅仅定义为“冲突”。野生动物与人类的关系需要我们更多的思考。
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
                [1]Shemwetta D T K，Kideghesho J R. Human-wildlife conflicts in Tanzania：What
                research and extension could offer to conflict resolution// 1st University Wild
                Conference，Sokoine University of Agriculture，Morogoro，Tanzania. 2000:569-577
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [2]高煜芳,居·扎西桑俄.从冲突到共存:人与野生动物关系的文化分析[J].科学,2019,71(05):10-14+4.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [3]Nyhus P J, McCarthy T, Mallon D. Snow leopards: Biodiversity of the world:
                Conservation from genes to landscapes. London, New York: Academic Press, 2016.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [4]赵翔. 人兽冲突该如何破解？[N]. 中国绿色时报,2015-01-08(A04).
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [5]饶凤艳,张文政.雪豹:生存危机与保护拯救[J].生态经济,2015,31(12):6-9.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [6]李小雨,肖凌云,梁旭昶,程琛,冯琛,赵翔,刘炎林,卞晓星,何兵,张常智,Justine Shanti Alexander,
                邢睿,黄亚慧,阿旺久美,谢然尼玛,宋大昭,黄巧雯,扎西桑俄,彭奎,尹杭,连新明,杨欣,李晟,施小刚,杨创明,
                吕植.中国雪豹的威胁与保护现状[J].生物多样性,2019,27(09):932-942.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [7]闫京艳,张毓,蔡振媛,陈家瑞,覃雯,张婧捷,连新明,张同作.三江源区人兽冲突现状分析[J].兽类学报,2019,
                39(04):476-484.
            </p>
            <p class="text-left" style="color: #999999;font-size: 13px;margin-top: 7px">
                [8]Nyhus P J. Human-wildlife conflict and coexistence. Annual Review of Environment
                and Resources, 2016, 41: 143-171.
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
