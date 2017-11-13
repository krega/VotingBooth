<%--
  Created by IntelliJ IDEA.
  User: W10x64
  Date: 09.11.2017
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>

<html>
<head>
    <link href="<c:url value="/resources/js/login.js" />" >
    <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

    <script src="https://www.gstatic.com/firebasejs/4.6.2/firebase.js"></script>


</head>
<body>
<div class="container">

    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
            <form role="form">
                <fieldset>
                    <h2>Please Sign In</h2>
                    <hr class="colorgraph">
                    <div class="form-group">
                        <input type="email" name="email" id="txtEmail" class="form-control input-lg" placeholder="Email Address">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="txtPassword" class="form-control input-lg" placeholder="Password">
                    </div>


				</span>
                    <hr class="colorgraph">
                    <div class="row">

                        <button   id="btnLogin" class="btn btn-action" >Log In</button>


                        <button  id="btnSignUp" class="btn btn-secondary " value="" >Sign Up</button>

                        <div>
                            <button id="btnLogout" class="btn btn-action hide">Log out</button>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

</div>

</body>
<script src="<c:url value="/resources/js/app.js" />" ></script>
</html>
<%@include file="/WEB-INF/view/template/footer.jsp" %>

