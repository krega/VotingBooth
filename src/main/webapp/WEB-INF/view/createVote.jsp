<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>VotingBooth</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/lightbox.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link id="css-preset" href="<c:url value="/resources/css/presets/preset1.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />">
</head><!--/head-->

<body>
<header id="home">
    <div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">

    </div><!--/#home-slider-->
    <div class="main-nav">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                    <h1><img class="img-responsive" src="<c:url value="/resources/images/logo2.png" />" alt="logo"></h1>
                </a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="scroll active"><a href="#home">Home</a></li>
                    <li class="scroll"><a href="#services">New Vote</a></li>
                    <li class="scroll"><a href="#about-us">History</a></li>
                    <li class="scroll"><a href="#blog">Contact</a></li>
                    <li class="scroll"><a href="#contact">Log out</a></li>

                </ul>
            </div>
        </div>
    </div><!--/#main-nav-->
</header><!--/#home-->
<!--.preloader-->
<div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
<!--/.preloader-->

<section id="createVote">
    <div class="container" align="center">


    </div>
</section>




<footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="container text-center">
            <div class="footer-logo">
                <a href="index.html"><img class="img-responsive" src="<c:url value="/resources/images/logo2.png" />"  alt=""></a>
            </div>
            <div class="social-icons">
                <ul>
                    <li><a class="envelope" href="#"><i class="fa fa-envelope"></i></a></li>
                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="linkedin" href="https://www.linkedin.com/in/kamil-rega-6a1398136/"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<script src="<c:url value="/resources/js/jquery.js" />"></script>
<script  src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src= https://maps.googleapis.com/maps/api/js?key=AIzaSyBWUUg2FhKnRbmOdJj-LB4gEXONRBq04io&sensor=true"" ></script>
<script  src="<c:url value="/resources/js/jquery.inview.min.js" />"></script>
<script  src="<c:url value="/resources/js/wow.min.js" />"></script>
<script src="<c:url value="/resources/js/mousescroll.js" />"></script>
<script  src="<c:url value="/resources/js/smoothscroll.js" />"></script>
<script  src="<c:url value="/resources/js/jquery.countTo.js" />"></script>
<script  src="<c:url value="/resources/js/lightbox.min.js" />"></script>
<script  src="<c:url value="/resources/js/main.js" />"></script>

</body>
</html>