<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/5/26
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html  lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <title>用户管理</title>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/jquery.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/roboto.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/material-design.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/small-n-flat.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/static/assets/js/lib/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.mousewheel.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.cookie.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/fastclick.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/clearmin.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/css/layui.css"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/layui.js"
            charset="utf-8"></script>

    <style>
        body{
            background-color: #ccffcc;
        }
        #logo{
            width: 200px;
            height: 50px;
        }
        #left-list li a {
            background-color: #34495e;
            border: none;
        }
        #left-list li a strong{
            color: whitesmoke;
        }
        #left-list li {
            border: none;
        }
        #left-list li ul{
            border: none;
        }
        #left-list li ul li{
            border: none;
        }
        #left-list li ul li a{
            border: none;
        }
        #left-list{
            border: none;
        }
    </style>

    <script>
        $(function () {
            const $title = $(document).attr("title");
            if ($title==="后台管理") {
                $("#backstage_1").addClass("active");
            } else if ($title==="用户管理") {
                $("#backstage_2").addClass("active");
            } else if ($title==="动态管理") {
                $("#backstage_3").addClass("active");
            } else if ($title==="学术文章") {
                $("#backstage_4").addClass("active");
            } else if ($title==="宣传文章") {
                $("#backstage_5").addClass("active");
            } else if ($title==="动物影像") {
                $("#backstage_6").addClass("active");
            } else if ($title==="数据批次") {
                $("#backstage_7").addClass("active");
            }
        })
    </script>

</head>
<body class="cm-no-transition cm-2-navbar">

<%@include file="../../common/backstageNav.jsp"%>

<div id="global">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>用户数据管理</strong>
                    </div>
                    <div class="panel-body">
                        <p style="margin-bottom:0">The table is outside the <code>.panel-body</code></p>
                    </div>


                    <table class="layui-hide" id="test" lay-filter="test"></table>

                    <script type="text/html" id="toolbarDemo">
                        <div class="layui-btn-container">
                            <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
                            <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
                            <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
                        </div>
                    </script>
                    <script type="text/html" id="barDemo">
                        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
                        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
                    </script>



                    <script>
                        layui.use('table', function(){
                            var table = layui.table;

                            //温馨提示：默认由前端自动合计当前行数据。从 layui 2.5.6 开始：
                            // 若接口直接返回了合计行数据，则优先读取接口合计行数据。
                            //详见：/docs/modules/table.html#totalRow
                            //特别注意！！！返回的数据列名有的会自动转为小写
                            table.render({
                                elem: '#test'
                                ,url:'${pageContext.request.contextPath}/backstage/getUsers'
                                ,toolbar: '#toolbarDemo'
                                ,title: '用户数据表'
                                ,cols: [[
                                    {type: 'checkbox', fixed: 'left'}
                                    ,{field:'username', title:'username', width:100, fixed: 'left', unresize: true,
                                        sort: true}
                                    ,{field:'nickname', title:'昵称', width:130, edit: 'text'}
                                    ,{field:'email', title:'邮箱', width:230, edit: 'text', templet: function(res){
                                            return '<em>'+ res.email +'</em>'
                                        }}
                                    ,{field:'phone', title:'电话', width:200, sort: true}
                                    ,{field:'rdate', title:'加入时间', width:160}
                                    ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
                                ]]
                                ,page: true
                            });

                            //工具栏事件
                            table.on('toolbar(test)', function(obj){
                                var checkStatus = table.checkStatus(obj.config.id);
                                switch(obj.event){
                                    case 'getCheckData':
                                        var data = checkStatus.data;
                                        layer.alert(JSON.stringify(data));
                                        break;
                                    case 'getCheckLength':
                                        var data = checkStatus.data;
                                        layer.msg('选中了：'+ data.length + ' 个');
                                        break;
                                    case 'isAll':
                                        layer.msg(checkStatus.isAll ? '全选': '未全选')
                                        break;
                                }
                            });
                            //行工具事件
                            table.on('tool(test)', function(obj) {
                                var data = obj.data;
                                //console.log(obj)
                                if (obj.event === 'del') {
                                    layer.confirm('真的删除行么', function (index) {
                                        obj.del();
                                        layer.close(index);
                                    });
                                } else if (obj.event === 'edit') {
                                    layer.prompt({
                                        formType: 2
                                        , value: data.email
                                    }, function (value, index) {
                                        obj.update({
                                            email: value
                                        });
                                        layer.close(index);
                                    });
                                }
                            });
                        });
                    </script>




                </div>
            </div>
        </div>
        <div class="alert alert-info alert-dismissible fade in shadowed" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <i class="fa fa-fw fa-info-circle"></i> EBC Administrator user
            <a href="${pageContext.request.contextPath}/nav/backstage">Backstage</a> V 2022
        </div>
    </div>
    <footer class="cm-footer">
        <span class="pull-left">EBC back-stage management</span>
        <span class="pull-right">&copy; Root administrator</span>
    </footer>
</div>
</body>
</html>
