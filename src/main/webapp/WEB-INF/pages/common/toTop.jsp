<%--
  Created by IntelliJ IDEA.
  User: WCK
  Date: 2022/6/9
  Time: 0:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #toTop {
        display: none;
        opacity: 0.6;
        z-index: 999999;
        position: fixed;
        bottom: 113px;
        left: 90%;
        margin-left: 40px;
        border: 1px solid #a38a54;
        width: 38px;
        height: 38px;
        background-color: #eddec2;
        border-radius: 3px;
        cursor: pointer;
    }
    #toTop:hover {
        opacity: 1;
        filter: alpha(opacity=100);
    }
    #arrow {
        position: absolute;
        left: 10px;
        top: -1px;
        width: 0;
        height: 0;
        border: 9px solid transparent;
        border-bottom-color: #cc3333;
    }
    #stick {
        position: absolute;
        left: 15px;
        top: 15px;
        width: 8px;
        height: 14px;
        display: block;
        background-color: #cc3333;
        -webkit-border-radius: 1px;
        -moz-border-radius: 1px;
        border-radius: 1px;
    }
</style>
<script>
    $(function() {
        $(window).scroll(function() {
            if ($(window).scrollTop() > 1000)
                $('div.go-top').show();
            else
                $('div.go-top').hide();
        });
        $('div.go-top').click(function() {
            $('html, body').animate({scrollTop: 0}, 1000);
        });
    });
</script>
<div class="go-top" id="toTop">
    <div class="arrow" id="arrow"></div>
    <div class="stick" id="stick"></div>
</div>
