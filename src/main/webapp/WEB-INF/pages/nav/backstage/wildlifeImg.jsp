<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/6/9
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>动物影像</title>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1-dist/js/jquery.min.js"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/roboto.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/material-design.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/small-n-flat.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css">
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
    </style>


    <script>
        $(function () {
            const $title = $(document).attr("title");
            if ($title === "后台管理") {
                $("#backstage_1").addClass("active");
            } else if ($title === "用户管理") {
                $("#backstage_2").addClass("active");
            } else if ($title === "动态管理") {
                $("#backstage_3").addClass("active");
            } else if ($title === "学术文章") {
                $("#backstage_4").addClass("active");
            } else if ($title === "宣传文章") {
                $("#backstage_5").addClass("active");
            } else if ($title === "动物影像") {
                $("#backstage_6").addClass("active");
            } else if ($title === "数据批次") {
                $("#backstage_7").addClass("active");
            }
        })
    </script>
</head>
<body>
<%@include file="../../common/backstageNav.jsp"%>

<div id="global" style="margin-top: 50px">

    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong style="font-size: 18px">野生动物影像管理</strong>
            </div>
            <div class="panel-body" id="demo-buttons">

                <div class="row">
                    <table class="layui-hide" id="test" lay-filter="test"></table>
                    <script type="text/html" id="barDemo">
                        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
                        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
                    </script>
                    <script>
                        layui.use('table', function(){
                            const table = layui.table;

                            $.ajax({
                                type: 'POST',
                                url: '${pageContext.request.contextPath}/backstage/getWildlifeImg',
                                dataType: 'json',
                                success:function (rdata) {
                                    if (rdata) {
                                        const option = {
                                            elem: '#test'
                                            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
                                            , page: true
                                            , limit: 10
                                            , title: '学术文章信息表'
                                            , cols: [[
                                                {type: 'checkbox', fixed: 'left'}
                                                , {
                                                    field: 'orders', title: '序列', width: 80, fixed: 'left',
                                                    unresize: true, sort: true
                                                }
                                                , {field: 'title', title: '标题', width: 200, edit: 'text'}
                                                , {field: 'textArea', title: '描述文本', width: 500, edit: 'text'}
                                                , {field: 'videoPath', title: '影像资料名', width: 100, edit: 'text'}
                                                , {field: 'poster', title: '影像海报', width: 100, edit: 'text'}
                                                , {
                                                    fixed: 'right',
                                                    title: '操作',
                                                    toolbar: '#barDemo',
                                                    width: 150
                                                }
                                            ]]

                                        };
                                        option.data = rdata.data;
                                        table.render(option);
                                    } else {
                                        layer.msg("获取动态数据失败");
                                    }
                                }
                                , error:function () {
                                    layer.msg("获取动态数据失败");
                                }
                            })

                            //工具栏事件
                            table.on('toolbar(test)', function(obj){
                                const checkStatus = table.checkStatus(obj.config.id);
                                let data;
                                switch(obj.event){
                                    case 'getCheckData':
                                        data = checkStatus.data;
                                        layer.alert(JSON.stringify(data));
                                        break;
                                    case 'getCheckLength':
                                        data = checkStatus.data;
                                        layer.msg('选中了：'+ data.length + ' 个');
                                        break;
                                    case 'isAll':
                                        layer.msg(checkStatus.isAll ? '全选': '未全选')
                                        break;
                                }
                            });

                            //行工具事件
                            table.on('tool(test)', function(obj) {
                                const data = obj.data;
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
    </div>
    <footer class="cm-footer">
        <span class="pull-left">EBC back-stage management</span>
        <span class="pull-right">&copy; Root administrator</span>
    </footer>
</div>
</body>
</html>
