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

<!--.preloader-->
<div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
<!--/.preloader-->

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
<section id="services">
    <div class="container">
        <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="row">
                <div class="text-center col-sm-8 col-sm-offset-2">
                    <h2>Our Services</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam</p>
                </div>
            </div>
        </div>
        <div class="text-center our-services">
            <div class="row">
                <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <div class="service-icon">
                        <i class="fa fa-flask"></i>
                    </div>
                    <div class="service-info">
                        <h3>Brand Identity</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="450ms">
                    <div class="service-icon">
                        <i class="fa fa-umbrella"></i>
                    </div>
                    <div class="service-info">
                        <h3>Creative Idea</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="550ms">
                    <div class="service-icon">
                        <i class="fa fa-cloud"></i>
                    </div>
                    <div class="service-info">
                        <h3>Awesome Support</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="650ms">
                    <div class="service-icon">
                        <i class="fa fa-coffee"></i>
                    </div>
                    <div class="service-info">
                        <h3>Professional Design</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="750ms">
                    <div class="service-icon">
                        <i class="fa fa-bitbucket"></i>
                    </div>
                    <div class="service-info">
                        <h3>App Development</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="850ms">
                    <div class="service-icon">
                        <i class="fa fa-gift"></i>
                    </div>
                    <div class="service-info">
                        <h3>Clean Code</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#services-->








<section id="blog">
    <div class="container">
        <div class="row">
            <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1200ms" data-wow-delay="300ms">
                <h2>Blog Posts</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam</p>
            </div>
        </div>
        <div class="blog-posts">
            <div class="row">
                <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
                    <div class="post-thumb">
                        <a href="#"><img class="img-responsive" src="<c:url value="/resources/images/blog/1.jpg" />" alt=""></a>
                        <div class="post-meta">
                            <span><i class="fa fa-comments-o"></i> 3 Comments</span>
                            <span><i class="fa fa-heart"></i> 0 Likes</span>
                        </div>
                        <div class="post-icon">
                            <i class="fa fa-pencil"></i>
                        </div>
                    </div>
                    <div class="entry-header">
                        <h3><a href="#">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h3>
                        <span class="date">June 26, 2014</span>
                        <span class="cetagory">in <strong>Photography</strong></span>
                    </div>
                    <div class="entry-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <div class="post-thumb">
                        <div id="post-carousel"  class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#post-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#post-carousel" data-slide-to="1"></li>
                                <li data-target="#post-carousel" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <a href="#"><img class="img-responsive" src="<c:url value="/resources/images/blog/2.jpg" />" alt=""></a>
                                </div>
                                <div class="item">
                                    <a href="#"><img class="img-responsive" src="<c:url value="/resources/images/blog/1.jpg" />" alt=""></a>
                                </div>

                            </div>
                            <a class="blog-left-control" href="#post-carousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                            <a class="blog-right-control" href="#post-carousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="post-meta">
                            <span><i class="fa fa-comments-o"></i> 3 Comments</span>
                            <span><i class="fa fa-heart"></i> 0 Likes</span>
                        </div>
                        <div class="post-icon">
                            <i class="fa fa-picture-o"></i>
                        </div>
                    </div>
                    <div class="entry-header">
                        <h3><a href="#">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h3>
                        <span class="date">June 26, 2014</span>
                        <span class="cetagory">in <strong>Photography</strong></span>
                    </div>
                    <div class="entry-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    </div>
                </div>
                <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="800ms">
                    <div class="post-thumb">
                        <a href="#"><img class="img-responsive" src="<c:url value="/resources/images/blog/3.jpg" />" alt=""></a>
                        <div class="post-meta">
                            <span><i class="fa fa-comments-o"></i> 3 Comments</span>
                            <span><i class="fa fa-heart"></i> 0 Likes</span>
                        </div>
                        <div class="post-icon">
                            <i class="fa fa-video-camera"></i>
                        </div>
                    </div>
                    <div class="entry-header">
                        <h3><a href="#">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h3>
                        <span class="date">June 26, 2014</span>
                        <span class="cetagory">in <strong>Photography</strong></span>
                    </div>
                    <div class="entry-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    </div>
</section><!--/#blog-->


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