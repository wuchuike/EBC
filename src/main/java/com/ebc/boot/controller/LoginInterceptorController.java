package com.ebc.boot.controller;

import com.ebc.boot.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author k
 * Introduction :
 */

//@Configuration
public class LoginInterceptorController implements WebMvcConfigurer {

    /**
     * 配置拦截和不拦截路径
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration registration = registry.addInterceptor(new LoginInterceptor());
        registration.addPathPatterns("/**");//拦截所有路径
        //不拦截的请求
        registration.excludePathPatterns(
                "/",
                "/login",
                "/toIndex",
                "/index",
                "/checkLogin",
                "/toRegister",
                "/checkEBCUser",
                "/captcha.jpg",
                "/saveEBCUser",
                "/static/**",
                "/img/**",
                "/WEB-INF/**",
                "/video"
        );
    }
}
