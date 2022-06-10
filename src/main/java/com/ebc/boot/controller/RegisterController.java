package com.ebc.boot.controller;

import com.ebc.boot.entity.EbcUser;
import com.ebc.boot.service.EbcUserService;
import com.ebc.boot.utils.MD5Utils;
import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

/**
 * @author k
 * Introduction :
 */

@Controller
public class RegisterController {
    @Autowired
    private EbcUserService ebcUserService;

    //动态验证用户名是否可用
    @RequestMapping(value = {"/checkEBCUser"})
    public void createCaptcha(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String username = request.getParameter("username");
        boolean exist = ebcUserService.getAllUsers(username);
        if (!exist) {
            // 可用账号
            response.getWriter().write("true");
        } else {
            // 不可用账号
            response.getWriter().write("false");
        }
    }


    @Autowired
    private Producer kaptcha;
    // 验证码生成
    @RequestMapping("/captcha.jpg")
    public void getKaptchaImg(HttpServletRequest request,HttpServletResponse response)
            throws IOException {
        HttpSession session = request.getSession();
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String code = kaptcha.createText();
        session.setAttribute(KAPTCHA_SESSION_KEY,code);
        BufferedImage bufferedImage = kaptcha.createImage(code);
        ServletOutputStream outputStream = response.getOutputStream();
        ImageIO.write(bufferedImage,"jpg",outputStream);
        outputStream.flush();
        outputStream.close();
    }

    //匹配验证码，将用户信息存入数据库
    @RequestMapping(value = {"/saveEBCUser"})
    public void saveEBCUser(HttpServletRequest request, HttpServletResponse response)
            throws IOException, NoSuchAlgorithmException {
        HttpSession session = request.getSession();
        String captcha = (String) session.getAttribute(KAPTCHA_SESSION_KEY);
        session.removeAttribute(KAPTCHA_SESSION_KEY);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        password = MD5Utils.getPasswdMd5(password);
        String code = request.getParameter("code");
        //验证验证码
        if (!code.equals(captcha)) {
            response.getWriter().write("false");
            return;
        }
        EbcUser ebcUser = new EbcUser();
        ebcUser.setUsername(username);
        ebcUser.setPassword(password);
        int a = ebcUserService.saveUsers(ebcUser);
        if (a == 1) {
            response.getWriter().write("true");
        }
    }
}