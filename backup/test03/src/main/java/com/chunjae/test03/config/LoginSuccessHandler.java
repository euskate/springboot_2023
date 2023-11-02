package com.chunjae.test03.config;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.chunjae.test03.common.CommonTopComponent;
import com.chunjae.test03.entity.UserInfo;
import com.google.gson.JsonObject;

@Component
public class LoginSuccessHandler extends CommonTopComponent implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException {

        //default 성공
        String resultCode = "00";

        HttpSession session = request.getSession(true);
        session.setMaxInactiveInterval(60 * 60 * 3);

        session.setAttribute("sessUserInfo",((UserInfo) auth.getPrincipal()));
        session.setAttribute("authority",((UserInfo) auth.getPrincipal()).getAuthority());
        session.setAttribute("authorityNm",((UserInfo) auth.getPrincipal()).getAuthorityNm());
        session.setAttribute("auth",((UserInfo) auth.getPrincipal()).getAuth());

        //Response 결과 값을 넣어줌
        JsonObject loginResult = new JsonObject();
        loginResult.addProperty("resultCode", resultCode);
        loginResult.addProperty("targetUrl", request.getContextPath()+"/");

        //응답 전송
        writeResponse((jakarta.servlet.http.HttpServletResponse) response, loginResult);
    }
}
