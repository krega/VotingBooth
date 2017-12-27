<%--
  Created by IntelliJ IDEA.
  User: W10x64
  Date: 14.12.2017
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>Movie Fire</title>
    <link href="<c:url value="/resources/css/text.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/app.css" />" rel="Stylesheet">
    <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet">

    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">

</head>

<body>
<div id="Outer">
    <div id="HEADER">
        <div id="VT">VotingBooth: amazing voting experiences</div>
    </div>

    <div id="content">
        <div id="Ans">
            <input type="text" id="surveyName" placeholder="Enter your surveyName" onkeypress="return retrieveInput(event)"/>
        </div>


        <h3 id="Question"></h3>

        <div id="divTable"></div>
        <div id="divVote"></div>

        <div id="sideNavigation" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <div id="myChart"></div>
        </div>

        <nav class="topnav">
            <button  onclick="openNav()" class="square_btn">
                STATS
            </button>
        </nav>
    </div>








</div>
</body>
<script src="https://www.gstatic.com/firebasejs/4.6.1/firebase.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.6.1/firebase-database.js"></script>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="<c:url value="/resources/js/stats.js" />" ></script>
<script src="<c:url value="/resources/js/consts.js" />" ></script>
<script src="<c:url value="/resources/js/dateBaseConnection.js" /> "></script>
<script src="<c:url value="/resources/js/media.js" />" ></script>
<script src="<c:url value="/resources/js/appDom.js" />" ></script>
<script src="<c:url value="/resources/js/survey.js" />" ></script>
</html>


<%@include file="/WEB-INF/view/template/footer.jsp" %>