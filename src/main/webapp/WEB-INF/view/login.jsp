<%--
  Created by IntelliJ IDEA.
  User: W10x64
  Date: 09.11.2017
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>MY FIREBASE LOGIN</title>
    <script src="https://www.gstatic.com/firebasejs/4.6.2/firebase.js"></script>
    <script src="https://cdn.firebase.com/js/client/2.2.1/firebase.js"></script>
    <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">




</head>
<body>
<div class="login">
    <input type="text" placeholder="nickname" id="nickname">
    <input type="text" placeholder="Email" id="txtEmail">
    <input id="txtPassword" type="password" placeholder="password" id="password">
    <a href="#" class="forgot">forgot password?</a>
    <input id="btnSignUp" type="button" value="Sign In">
    <input id="btnLogin" type="button" value="Log In">
</div>
<div class="shadow"></div>

</body>

<script src="<c:url value="/resources/js/auth.js" />" ></script>

</html>
<%@include file="/WEB-INF/view/template/footer.jsp" %>

