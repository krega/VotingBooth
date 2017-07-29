<%@include file="/WEB-INF/view/template/header.jsp" %>
<body>
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
</body>

<%@include file="/WEB-INF/view/template/footer.jsp" %>


