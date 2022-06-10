<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/4/24
  Time: 13:56
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
    </style>

    <script>
        $.post(
            'upload/folder/show/batches',
            {},
            function (data) {
                for (const key in data) {
                    $('#selector').append("<option value="+key+">" +data[key]+ "</option>");
                }
            }
        );
        $(function () {






            //设置每个分片大小（如果文件超过5M则分片上传）
            const chunkSize = 5*1024*1024;


            // 上传组件的hook，百度定义必须在webuploader实例化之前
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
                            {
                                uid: file.uid,
                                md5: file.md5,
                                filename: file.name,
                                size: file.size,
                                chunk: file.chunk,
                                chunks: file.chunks
                            },
                            function (data) {
                                // console.log("before task");
                                task.resolve();
                                // console.log("after task");
                                // console.log("data.code："+data.code);
                                if (data.state === 101) { // 文件从头开始上传
                                } else if (data.state === 100) { // 文件已经上传完成
                                    uploader.skipFile(file);
                                    file.pass = true;
                                } else if (data.state === 102) { // 断点续传
                                    file.missChunks = data.data;
                                }
                            }
                        )
                    })
                    return $.when(task);
                },
                beforeSend: function (block) {
                    //console.log("block：");
                    const task = new $.Deferred();
                    const file = block.file;
                    const missChunks = file.missChunks;
                    const blockChunk = block.chunk;
                    console.log("总分块："+block.chunks)
                    console.log("当前分块："+block.chunk)
                    if (missChunks !== null && missChunks !== undefined && missChunks !== '') {
                        let flag = true;
                        for (let i = 0; i < missChunks.length; i++) {
                            if (blockChunk === missChunks[i]) {
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
                swf: '${pageContext.request.contextPath}/static/webuploader/dist/Uploader.swf',
                server: '${pageContext.request.contextPath}/upload/folder',
                chunked: true,
                chunkSize: chunkSize,
                chunkRetry: 5,  // 当出现异常时自动重传次数限定
                threads: 6,
                pick: '#picker',
                multiple: true,
                prepareNextFile: true,
                disableGlobalDnd: true,
            });

            // 当有文件被添加进队列的时候
            let $list = $("#fileList")
            uploader.on( 'fileQueued', function( file ) {
                $list.append(
                    '<div class="row" style="margin-bottom: 20px;margin-top: 20px;">'+
                        '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">'+
                            '<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12'+
                                    'col-lg-push-1 col-md-push-1 col-sm-push-0 col-xs-push-0">'+
                                '<div class="row">'+
                                    '<blockquote class="layui-elem-quote layui-text" id="'+file.id+'">'+
                                        '<h3 style="font-size: 25px;font-family: 华文楷体,serif">'+
                                            '<strong>文件信息</strong>'+
                                        '</h3>'+
                                        '<p class="text-left" style="font-size: 17px">'+
                                            '<i class="bi bi-circle-fill" style="font-size: 8px"></i>'+
                                            '&nbsp;文件名：'+file.name+'<br>'+
                                            '<i class="bi bi-circle-fill" style="font-size: 8px"></i>'+
                                            '&nbsp;文件大小：'+file.size+
                                            '<br>'+
                                            '<i class="bi bi-circle-fill" style="font-size: 8px"></i>'+
                                            '&nbsp;<span class="uploadState">等待上传......</span>'+
                                            '<br>'+
                                            '<button type="button" class="layui-btn layui-btn-radius" ' +
                                                    'style="background: #2aabd2">' +
                                                '<strong>出错重传</strong>' +
                                            '</button>'+
                                            '<button type="button" class="layui-btn layui-btn-radius" ' +
                                                    'style="background: #009688">' +
                                                '<strong>从列表中删除</strong>' +
                                            '</button>'+
                                        '</p>'+
                                    '</blockquote>'+
                                '</div>'+
                            '</div>'+
                        '</div>'+
                    '</div>'
                );
                console.log("in file ......");
            });

            $("#ctlBtn").on('click',function () {
                const $Batch = $("#selector option:selected").text();
                if ($Batch === "选择批次" || $Batch === null) {
                    alert("请选择批次信息，若没有对应的批次信息，请联系管理员添加");
                    return;
                }
                uploader.upload();
            })

            //当某个文件的分块在发送前触发，主要用来询问是否要添加附带参数，大文件在开起分片上传的前提下此事件可能会触发多次。
            uploader.onUploadBeforeSend = function (block, data) {
                //console.log("onUploadBeforeSend");
                const file = block.file;
                const $Batch = $("#selector option:selected").text();
                data.md5 = file.md5 || '';
                data.uid = file.uid;
                data.chunks = block.chunks;
                data.chunk = block.chunk;
                data.batch = $Batch;
            };

            // 文件上传过程中创建进度条实时显示。
            uploader.on( 'uploadProgress', function( file, percentage ) {
                let $li = $('#' + file.id),
                    $percent = $li.find('span.uploadState');
                $percent.text('上传中......   '+percentage * 100 + '%' );
            });

            uploader.on( 'uploadSuccess', function( file ) {
                $( '#'+file.id ).find('span.uploadState').text('已上传');
            });

            uploader.on( 'uploadError', function( file ) {
                $( '#'+file.id ).find('span.uploadState').text('上传出错');
            });

            uploader.on( 'uploadComplete', function( file ) {
                $( '#'+file.id ).find('span.uploadState').text('所有分块上传完成');
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
                <strong>以压缩包、文件上传</strong>
            </h3>
            <small style="font-size: 16px">（.zip或.rar文件，其它类型文件）</small>
            <p class="text-left" style="font-size: 17px">
                重要提示：<br>
                <i class="bi bi-circle-fill" style="font-size: 8px"></i>
                &nbsp;并不推荐使用一次性上传太大的文件，因为各种原因可能导致上传过程中出现数据缺失
                <br>
                <i class="bi bi-circle-fill" style="font-size: 8px"></i>
                &nbsp;可以将文件拆分为多个zip包，分别上传
                <br>
                <i class="bi bi-circle-fill" style="font-size: 8px"></i>
                &nbsp;上传前一定要表明该文件属于哪个批次以及其它分批信息
                <br>
                <i class="bi bi-circle-fill" style="font-size: 8px"></i>
                &nbsp;<strong style="color: lightcoral">
                    图片上传以压缩包形式上传，外业记录表，物种分拣表，个体识别表以原格式上传
                </strong>
            </p>

        </blockquote>
    </div>


    <div id="uploader" class="wu-example text-left row"
         style="margin-top: 100px;background: whitesmoke">

        <div class="row text-center" style="margin-top: 60px;">

            <p>
                <strong style="font-family: 华文楷体,serif;font-size: 20px">
                    选择上传文件所属批次信息
                </strong>
            </p>

            <label for="selector" style="margin-top: 15px">
                选择文件所属批次：
            </label>
            <select id="selector" class="selectpicker" data-live-search="true" data-style="btn-info">
                <option data-tokens="ketchup mustard">选择批次</option>
            </select>


        </div>

        <div class="text-center row" style="margin-top: 30px;">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10
                        col-lg-push-1 col-md-push-1 col-sm-push-1 col-xs-push-1">
                <h3>
                    <strong style="font-family: 华文楷体,serif">
                        选中文件列表：
                    </strong>
                </h3>
            </div>
        </div>



        <div class="row" style="margin-top: 30px;margin-bottom: 60px">
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


        <div id="fileList">

        </div>


    </div>

</div>


<%@include file="/WEB-INF/pages/common/footer.jsp"%>

</body>
</html>
