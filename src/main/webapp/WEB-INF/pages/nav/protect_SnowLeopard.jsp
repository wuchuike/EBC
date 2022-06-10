<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/30
  Time: 11:12
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
    <script src="${pageContext.request.contextPath}/static/echarts/echarts.min.js"
            crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/static/echarts/china.js"
            crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/static/icons-1.8.1/font/bootstrap-icons.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/css/layui.css"
          rel="stylesheet">


    <style>
        body{
            background: #ccffcc;
        }
    </style>



</head>
<body>

<%@include file="../common/nav.jsp"%>

<div class="container" style="margin-top: 80px">
    <div class="text-center row">
        <div class="col-lg-8 col-md-8 col-sm-10 col-xs-10 col-lg-push-2 col-md-push-2 col-sm-push-1 col-xs-push-1">
            <h4>
                <strong style="font-size: 25px">雪豹保护项目区域分布</strong>
                <br>
                <br>
                <small style="font-size: 15px">
                    地图深色部分为有项目研究的省份
                </small>
            </h4>

        </div>
    </div>
    <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-10 col-xs-10 col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">

            <div id = "main" style = "width:1000px;height:1000px">
                <h4>雪豹保护项目区域分布</h4>
                <small>地图深色部分为有项目研究的省份</small>
            </div>

            <script>
                const myChart = echarts.init(document.getElementById('main'));
                const option = {
                    tooltip: {
                        formatter: function (params) {
                            if (params.name==="四川"){
                                return "卧龙自然保护区管理局";
                            } else if (params.name==="青海"){
                                return "祁连山国家级自然保护区管理局";
                            } else if (params.name==="西藏"){
                                return "珠穆朗玛峰国家级自然保护区";
                            } else if (params.name==="新疆") {
                                return "塔什库尔干自然保护区，托木尔峰自然保护区，西天山自然保护区开展雪豹专项调查";
                            } else if (params.name==="甘肃") {
                                return "盐池湾国家级自然保护区";
                            } else if (params.name==="宁夏"){
                                return "贺兰山自然保护区管理局";
                            } else {
                                const pName = params.name;
                                return pName;
                            }
                        }, //提示标签格式
                        backgroundColor: "#ff7f50",//提示标签背景颜色
                        textStyle: {
                            color: "#fff"
                        } //提示标签字体颜色
                    },
                    series: [{
                        type: 'map',
                        mapType: 'china',
                        label: {
                            normal: {
                                show: true,//显示省份标签
                                textStyle: {color: "#c71585"}//省份标签字体颜色
                            },
                            emphasis: {//对应的鼠标悬浮效果
                                show: true,
                                textStyle: {color: "#800080"}
                            }
                        },
                        itemStyle: {
                            normal: {
                                borderWidth: .5,//区域边框宽度
                                borderColor: '#009fe8',//区域边框颜色
                                areaColor: "#ffefd5",//区域颜色
                            },
                            emphasis: {
                                borderWidth: .5,
                                borderColor: '#4b0082',
                                areaColor: "#ffdead",
                            }
                        },
                        data: [
                            {name: '四川', selected: true},
                            {name: '新疆', selected: true},
                            {name: '青海', selected: true},
                            {name: '宁夏', selected: true},
                            {name: '西藏', selected: true},
                            {name: '甘肃', selected: true}
                        ]
                    }],
                };

                myChart.setOption(option);
                myChart.on('mouseover', function (params) {

                });
                myChart.on('click', function (params) {             //点击事件
                    alert(params.name);
                });
            </script>
        </div>
    </div>
</div>


</body>
</html>
