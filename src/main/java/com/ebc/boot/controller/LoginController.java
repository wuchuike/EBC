package com.ebc.boot.controller;

import com.ebc.boot.service.EbcUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author k
 * Introduction :
 */

@Controller
public class LoginController {

    @Autowired
    private EbcUserService ebcUserService;

    /**
     * 登录界面
     * /为访问根目录触发
     * login为从注册页面回到登录界面
     * @return 返回登录界面jsp
     */
    @RequestMapping(value = {"/","login"})
    public String toLogin() {
        return "login";
    }


    /**
     * 注册验证通过后登录跳转index.jsp
     * @return 返回登录界面
     */
    @RequestMapping(value = {"/toIndex"})
    public String toIndex() {
        // 重定向
        return "redirect:index";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/checkLogin")
    public void toCheckLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean e = ebcUserService.toCheckLogin(username,password,request);
        if (!e)
            response.getWriter().write("false");
        else
            response.getWriter().write("true");
    }

    //跳转到注册页面
    @RequestMapping(value = {"/toRegister"})
    public String toRegister() {
        return "register";
    }


    //退出登录
    @RequestMapping(value = {"/logout"})
    public String toLogout(HttpServletRequest request,HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "redirect:index";
    }
}
