<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="WEB-INF/jsp/common/tag.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>资产管理平台</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/dist/js/app.min.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/dist/css/skins/skin-blue.min.css">
    <link rel="stylesheet" href="/css/loginPage.css">
    <%@include file="WEB-INF/jsp/common/head.jsp"%>
</head>
<body>
<div id="main">
    <div id="login-view">
        <form class="sign-up" action="login.jsp" method="post">
            <h1 class="sign-up-title">用户登录</h1>
            <input type="text" class="sign-up-input" placeholder="用户名" autofocus name="username">
            <input type="password" class="sign-up-input" placeholder="密码" name="password">
            <select class="sign-up-input" name="userType">
                <option value = "1" class="sign-up-input" selected="selected">管理员</option>
                <option value = "2">教师</option>
            </select>
            <input type="submit" value="登陆" class="sign-up-button">
        </form>
    </div>
</div>
<script src="/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/dist/js/app.min.js"></script>
</body>

</html>