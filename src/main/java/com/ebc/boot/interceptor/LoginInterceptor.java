package com.ebc.boot.interceptor;

import com.ebc.boot.entity.EbcUser;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author k
 * Introduction :
 */

//@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws IOException {
        HttpSession session = request.getSession();
        EbcUser ebcUser = (EbcUser) session.getAttribute("user");
        if (ebcUser == null) {
            response.sendRedirect(request.getContextPath()+"/login");
            return false;
        }
        return true;
    }
}
