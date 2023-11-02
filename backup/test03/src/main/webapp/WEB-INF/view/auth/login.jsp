<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" type="text/css" href="${ctxPath}/css/loginForm.css"/>

<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="fadeIn first">
            로그인
        </div>

        <!-- Login Form -->
        <form>
            <input type="text" id="loginId" class="fadeIn second" name="un" placeholder="아이디를 입력해주세요" required>
            <input type="text" id="loginPw" class="fadeIn third" name="up" placeholder="비밀번호를 입력해주세요" required>
            <input type="button" class="fadeIn fourth" value="Log In" onclick="loginSubmit()">
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <a class="underlineHover" href="/auth/join">회원가입</a>
        </div>

    </div>
</div>

