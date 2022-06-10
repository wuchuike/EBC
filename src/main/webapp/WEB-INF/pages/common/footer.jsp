<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/5/1
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #footer{
        margin-top: 130px;
        background: whitesmoke;
    }
    #footerRow{
        margin-top: 30px;
    }
    #footerMsg_box1{

    }
    #footerMsg_box2{
        text-align: center;
    }
    #footerMsg_box2 img{
        margin-top: 30px;
        width: 100px;
        height: 100px;
    }
</style>


<script>
    $(function () {
        $("#img-f").click(function () {
            // new Date解决部分浏览器直接读取缓存
            this.src = "${pageContext.request.contextPath}/captcha.jpg?solve="+new Date();
        })

        $("#submitL").on('click', function () {
            const onTitle = $("#msgTitle").val();
            const onEmail = $("#conEmail").val();
            const code = $("#code").val();
            const textMsg = $("#textMsg").val();
            const $submitMsg = $("#submitL").text();
            if (textMsg === "" || textMsg === null) {
                alert("留言内容不能为空为空");
                return false;
            } else if (onTitle === "" || onTitle === null) {
                alert("留言标题不能为空");
                return false;
            } else if (code === "" || code === null) {
                alert("验证码不能为空");
                return false;
            } else if ((onEmail === null || onEmail === "")) {
                alert("邮箱为空");
                return false;
            } else {
                $.ajax({
                    url : "${pageContext.request.contextPath}/nav/onlineMessage",
                    type : "POST",
                    dataType : "json",
                    data:{"onTitle":onTitle,"onEmail":onEmail,"code":code,"textMsg":textMsg},
                    error:function () {
                        alert("提交失败");
                    },
                    success:function (res) {
                        const r = res.toString()
                        if (r==="false"){
                            alert("验证码错误");
                        } else {
                            alert("留言已提交");
                        }
                    }
                })
            }
        })
    })
</script>


<div  id="footer">
    <div class="container">
        <div class="row" id="footerRow">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" id="footerMsg_box1">
                <p style="font-size: 18px"><strong>北京市海淀区陆桥生态中心</strong></p>
                <p style="margin-top: 10px">电话：010 8273 2160</p>
                <p style="margin-top: 10px">传真：010 8273 2160</p>
                <p style="margin-top: 10px">网址：http://eco-bridgecontinental.org.cn/</p>
                <p style="margin-top: 10px">邮箱：ebc@eco-bridgecontinental.org</p>
                <p style="margin-top: 10px">地址：北京市海淀区学清路9号汇智大厦B座0817室</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" id="footerMsg_box2">
                <div class="col-lg-6 col-md-6 col-sm-5 col-xs-5">
                    <div class="row">
                        <img src="${pageContext.request.contextPath}/img/footer/18449879.png"
                             alt="...">
                    </div>
                    <div class="row">
                        <span>微信公众号</span>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 col-sm-5 col-xs-5" >
                    <div class="row">
                        <img src="${pageContext.request.contextPath}/img/footer/18449878.png"
                             alt="...">
                    </div>
                    <div class="row">
                        <span>微博</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" id="footerMsg_box3">
                <form>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="form-group">
                            在线留言
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="msgTitle"
                                   placeholder="留言标题">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="conEmail"
                                   placeholder="联系邮箱">
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
                                    <input type="text" class="form-control" name="code" placeholder="验证码"
                                           style="width: 90px" id="code">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-lg-push-1
                                    col-md-push-1 col-sm-push-1 col-xs-push-1" style="margin-left: auto">
                                    <img src="${pageContext.request.contextPath}/captcha.jpg"
                                         alt="..." style="width: 100px; height: 34px" id="img-f">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <textarea class="form-control" style="width: 200px;height: 166px" id="textMsg"></textarea>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-lg-push-5
                                    col-md-push-5 col-sm-push-5 col-xs-push-5">
                            <button type="submit" class="btn btn-success" id="submitL"
                                    style="width: 100px">
                                <c:if test="${ not empty sessionScope.user}">
                                    用户提交
                                </c:if>
                                <c:if test="${ empty sessionScope.user}">
                                    邮箱提交
                                </c:if>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
