package com.ggjg.ggbanchan.util;

import com.ggjg.ggbanchan.model.Member;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();

        Member loginMember = (Member) session.getAttribute("loginMember");

        if(loginMember != null) {
            if ("admin".equals(loginMember.getRole()))
                return true;
        } else {
            response.sendRedirect("/login");
            return false;
        }
        response.sendRedirect("/");
        return false;
    }
}

