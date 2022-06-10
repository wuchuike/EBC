<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/24
  Time: 14:02
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
    <script src="${pageContext.request.contextPath}/static/layui-v2.6.8/layui/layui.js"
            charset="utf-8"></script>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/webuploader/dist/webuploader.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/webuploader/dist/webuploader.js"></script>
    <link rel="stylesheet" href=
            "${pageContext.request.contextPath}/static/bootstrap-select/dist/css/bootstrap-select.min.css">
    <script src="${pageContext.request.contextPath}/static/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-select/dist/js/i18n/defaults-*.min.js"></script>


    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background: #ccffcc;
        }
        table{
            table-layout:fixed;
        }
        .notShow{
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .table tbody tr td{
            vertical-align: middle;
        }
    </style>

    <script>
        $(function () {

            const $OS = WebUploader.Base.os;
            if ($OS.toString() === "android" || $OS.toString() === "ios") {

            }

            //设置每个分片大小（如果文件超过5M则分片上传）
            const chunkSize = 5*1024*1024;
            let $ORDER = 1;

            // HOOK 这个必须要再uploader实例化前面
            WebUploader.Uploader.register({
                'before-send-file': 'beforeSendFile',
                'before-send': 'beforeSend'
            }, {
                beforeSendFile: function (file) {
                    const task = new $.Deferred();
                    uploader.md5File(file).progress(function (percentage) {
                        console.log("正在计算md5.。。")
                    }).then(function (md5Value) {
                        console.log("文件："+file.name+"   的MD5值为："+md5Value);
                        file.md5 = md5Value;
                        file.uid = WebUploader.Base.guid();
                        $.post("upload/checkFileMd5",
                            {uid: file.uid,
                                md5: file.md5,
                                "Authorization": localStorage.token,
                                filename: file.name,
                                size: file.size
                            },
                            function (data) {
                                console.log("before task");
                                task.resolve();
                                console.log("after task");
                                console.log("data.code："+data.code);
                                if (data.state === 101) {
                                    // 文件不存在，那就正常流程
                                    console.log("文件未上传过")
                                } else if (data.state === 100) {
                                    // 忽略上传过程，直接标识上传成功；
                                    uploader.skipFile(file);
                                    console.log("文件已经上传")
                                    file.pass = true;
                                } else if (data.state === 102) {
                                    // 部分已经上传到服务器了，但是差几个模块。
                                    console.log("部分没有上传")
                                    file.missChunks = data.data;
                                }
                            }
                        )
                    })
                    return $.when(task);
                },
                beforeSend: function (block) {
                    console.log("block：");
                    const task = new $.Deferred();
                    const file = block.file;
                    const missChunks = file.missChunks;
                    const blockChunk = block.chunk;
                    console.log("总分块：" + block.chunks);
                    console.log("当前分块：" + blockChunk);
                    console.log("missChunks：" + missChunks);
                    console.log("当前分块所属文件：" + file.name);
                    if (missChunks !== null && missChunks !== undefined && missChunks !== '') {
                        let flag = true;
                        for (let i = 0; i < missChunks.length; i++) {
                            if (blockChunk === missChunks[i]) {
                                console.log(file.name + ":" + blockChunk + ":还没上传，现在上传去吧。");
                                flag = false;
                                break;
                            }
                        }
                        if (flag) {
                            task.reject();
                        } else {
                            task.resolve();
                        }
                    } else {
                        task.resolve();
                    }
                    return $.when(task);
                }
            });

            const uploader = WebUploader.create({
                auto: false,
                // swf文件路径
                swf: '${pageContext.request.contextPath}/static/webuploader/dist/Uploader.swf',
                server: '${pageContext.request.contextPath}/upload/files',
                chunked: true,
                chunkSize: chunkSize, // 字节 1M分块
                chunkRetry: 5,  // 当出现异常时自动重传次数限定
                threads: 6,
                pick: '#picker',
                multiple: true,
                prepareNextFile: true,
                // 禁掉全局的拖拽功能。这样不会出现图片拖进页面的时候，把图片打开。
                disableGlobalDnd: true,
            });

            // 当有文件被添加进队列的时候
            let $list = $("#list")
            uploader.on( 'fileQueued', function( file ) {
                $list.append(
                    '<tr class="info" id="'+file.id+'">'+
                        '<td class="notShow">'+$ORDER+'</td>'+
                        '<td class="notShow">'+file.name+'</td>'+
                        '<td class="uploadState notShow">等待上传</td>'+
                        '<td>'+
                            '<button type="button" class="layui-btn layui-btn-normal layui-btn-sm">' +
                                '<i class="layui-icon layui-icon-refresh-1"></i>' +
                            '</button>'+
                            '<button type="button" class="layui-btn layui-btn-normal layui-btn-sm">' +
                                '<i class="layui-icon layui-icon-delete"></i>' +
                            '</button>'+
                        '</td>'+
                    '</tr>'
                );
                $ORDER = $ORDER +1;
                console.log("in file ......");
            });

            $("#ctlBtn").on('click',function () {
                uploader.upload();
            })

            //当某个文件的分块在发送前触发，主要用来询问是否要添加附带参数，大文件在开起分片上传的前提下此事件可能会触发多次。
            uploader.onUploadBeforeSend = function (block, data) {
                //console.log("onUploadBeforeSend");
                const file = block.file;
                data.md5 = file.md5 || '';
                data.uid = file.uid;
                data.chunks = block.chunks;
                data.chunk = block.chunk;
            };

            // 文件上传过程中创建进度条实时显示。
            uploader.on( 'uploadProgress', function( file, percentage ) {
                let $li = $('#' + file.id),
                    $percent = $li.find('td.uploadState');
                $percent.text(percentage * 100 + '%' );
            });

            uploader.on( 'uploadSuccess', function( file ) {
                $( '#'+file.id ).find('td.uploadState').text('已上传');
            });

            uploader.on( 'uploadError', function( file ) {
                $( '#'+file.id ).find('td.uploadState').text('上传出错');
            });

            uploader.on( 'uploadComplete', function( file ) {
                $( '#'+file.id ).find('td.uploadState').text('完成');
            });


        })
    </script>



</head>
<body>
<%@include file="/WEB-INF/pages/common/nav.jsp"%>


<div class="container text-center" style="margin-top: 100px">
    <div class="row">
        <blockquote class="layui-elem-quote layui-text">
            <h3 style="font-size: 25px;font-family: 华文楷体,serif">
                <strong>上传照片、视频或单独的批次信息</strong>
            </h3>
            <small style="font-size: 16px">（.zip或.rar文件，其它类型文件）</small>
            <p class="text-left" style="font-size: 17px">
                重要提示：<br>
                <i class="bi bi-circle-fill" style="font-size: 8px"></i>
                &nbsp;上传前选择上传的文件信息
                <br>
                <i class="bi bi-circle-fill" style="font-size: 8px"></i>
                &nbsp;
                <br>
            </p>

        </blockquote>
    </div>


    <div id="uploader" class="wu-example text-left row"
         style="margin-top: 100px;background: whitesmoke">

        <div class="row text-center" style="margin-top: 60px;">

            <p>
                <strong style="font-family: 华文楷体,serif;font-size: 20px">
                    选择上传文件基本信息信息
                </strong>
            </p>

            <label for="selector" style="margin-top: 15px">
                选择上传类型：
            </label>
            <select id="selector" class="selectpicker" data-style="btn-info">
                <option data-tokens="ketchup mustard">选择类型</option>
                <option>图片和视频</option>
                <option>批次的表更新</option>
                <option>工作流程信息</option>
                <option>实验数据相关</option>
            </select>

        </div>

        <div class="text-center row" style="margin-top: 60px;">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <h3>
                    <strong style="font-family: 华文楷体,serif">
                        选中文件列表：
                    </strong>
                </h3>
            </div>
        </div>

        <div class="row">

        </div>

        <div class="row" style="margin-top: 30px">
            <div class="btns">
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-4
                        col-lg-push-2 col-md-push-2 col-sm-push-1 col-xs-push-1">
                    <div id="picker">选择文件</div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                    <button id="ctlBtn" class="btn btn-success"
                            style="width: 100px;height: 39px">
                        开始上传
                    </button>
                </div>
            </div>
        </div>


        <div id="fileList" style="margin-bottom: 80px">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                    <table class="table table-bordered table-hover table-condensed" id="list">
                        <tr class="info">
                            <th id="order" width="7%" style="text-align: center">序号</th>
                            <th id="filename" width="40%" style="text-align: center">文件名</th>
                            <th id="state" width="18%" style="text-align: center">上传状态</th>
                            <th id="operate" width="35%" style="text-align: center">操作</th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </div>

</div>


<%@include file="/WEB-INF/pages/common/footer.jsp"%>

</body>
</html>
