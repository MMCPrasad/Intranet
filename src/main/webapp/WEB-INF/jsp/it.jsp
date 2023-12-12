<%-- 
    Document   : it
    Created on : 19 Oct 2023, 11:01:51 am
    Author     : L580
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet </title>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&family=Marvel:wght@700&display=swap" rel="stylesheet">
        <link rel=”stylesheet” href=”css/bootstrap-responsive.css”>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>


    </head>
    <body>
        <style>

            .dep-cover,
            .dep-hero {
                position: relative;
                height: 800px;
            }
            @media screen and (max-width: 768px) {
                .dep-cover,
                .dep-hero {
                    height: 700px;
                }
            }
            .dep-cover.dep-hero-2,
            .dep-hero.dep-hero-2 {
                height: 600px;
            }
            .dep-cover.dep-hero-2 .dep-overlay,
            .dep-hero.dep-hero-2 .dep-overlay {
                position: absolute !important;
                width: 100%;
                top: 0;
                left: 0;
                bottom: 0;
                right: 0;
                z-index: 1;
                background: rgba(0, 0, 0, 0.2);
            }

            .dep-overlay {
                position: absolute !important;
                width: 100%;
                top: 0;
                left: 0;
                bottom: 0;
                right: 0;
                z-index: 1;
                background: rgba(66, 64, 64, 0.9);
                background: rgba(0, 0, 0, 0.2);
            }

            .dep-cover {
                background-size: cover;
                position: relative;

            }
            @media screen and (max-width: 768px) {
                .dep-cover {
                    heifght: inherit;
                    padding: 3em 0;
                }
            }
            .dep-cover .btn {
                padding: 1em 2em;
                opacity: .9;
            }
            .dep-cover.dep-cover_2 {
                height: 600px;
            }
            @media screen and (max-width: 768px) {
                .dep-cover.dep-cover_2 {
                    heifght: inherit;
                    padding: 3em 0;
                }
            }
            .dep-cover .desc {
                top: 50%;
                position: absolute;
                width: 100%;
                margin-top: -80px;
                z-index: 2;
                color: #fff;
            }
            @media screen and (max-width: 768px) {
                .dep-cover .desc {
                    padding-left: 15px;
                    padding-right: 15px;
                }
            }
            .dep-cover, .dep-hero {
                position: relative;
                height: 30rem;
            }
            .dep-cover .desc h2 {
                color: #fff;
                text-transform: uppercase;
                font-size: 60px;
                margin-bottom: 10px;
                font-weight: 300 !important;
            }
            .dep-cover .desc h2 strong {
                font-weight: 700;
            }
            @media screen and (max-width: 768px) {
                .dep-cover .desc h2 {
                    font-size: 40px;
                }
            }
            .dep-cover .desc span {
                display: block;
                margin-bottom: 30px;
                font-size: 28px;
                letter-spacing: 1px;
            }
            .dep-cover .desc span a {
                color: #fff;
            }
            .dep-cover .desc span a:hover, .dep-cover .desc span a:focus {
                color: #fff !important;
            }
            .dep-cover .desc span a:hover.btn, .dep-cover .desc span a:focus.btn {
                border: 2px solid #fff !important;
                background: transparent !important;
            }
            .dep-cover .desc span a.dep-site-name {
                padding-bottom: 2px;
                border-bottom: 1px solid rgba(255, 255, 255, 0.7);
            }
            #fh5co-feature-product {
                padding: 7em 0;
            }
            h1, h2, h3, h4, h5, h6 {
                color: #5a5a5a;
                font-family: "Open Sans", Arial, sans-serif;
                font-weight: 400;
                margin: 0 0 30px 0;
            }
            p, ul, ol {
                margin-bottom: 1.5em;
                font-size: 16px;
                color: #848484;
                font-family: "Open Sans", Arial, sans-serif;
            }

            .feature-text h3 {
                text-transform: uppercase;
                font-size: 14px;
                margin-bottom: 10px;
                font-weight: 700;
                color: #000;
                letter-spacing: .2em;
            }
            .feature-text h3 .number {
                margin-right: 5px;
                color: #6e4b93;
                display: -moz-inline-stack;
                display: inline-block;
                zoom: 1;
                *display: inline;
            }
            .feature-text p {
                font-size: 16px;
            }



            .carousel-wrap {
                margin: 90px auto;
                padding: 0 5%;
                width: 80%;
                position: relative;
            }

            /* fix blank or flashing items on carousel */
            .owl-carousel .item {
                position: relative;
                z-index: 100;
                -webkit-backface-visibility: hidden;
            }

            /* end fix */
            .owl-nav > div {
                margin-top: -26px;
                position: absolute;
                top: 50%;
                color: #cdcbcd;
            }

            .owl-nav i {
                font-size: 52px;
            }

            .owl-nav .owl-prev {
                left: -30px;
            }

            .owl-nav .owl-next {
                right: -30px;
            }
            #committee {
                background: rgba(0, 0, 0, 0.04);
                padding: 1em -1em
            }

        </style>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>


        <div class="dep-hero">
            <div class="dep-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(assets/img/system/department/cover.jpg);">

                <div class="desc animate-box">
                    <p style="font-size: 3rem;color: #ffeded"><strong>Welcome</strong> To <strong>IT Department</strong></p>
                </div>
            </div>
        </div>
        <div id="dep-feature-product" class="dep-section-gray" style="padding-bottom: 1em;">
            <div class="container"style="margin-top: 3rem;">
                <div class="row">
                    <div class="col-md-12 text-center heading-section" >
                        <h1>FFL - IT Department</h1>

                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-12 text-center ">
                        <div class="feature-text">
                            <h3>About Us</h3>
                            <p>Description</p>
                            <h3> <a href="policie" target="_blank" style=" text-decoration: none;">Click here to View the policies</a>.</h3>

                        </div>
                    </div>

                </div>
                <section id="committee" >
                    <div class="team">
                        <div class="container">
                            <div class="row" >
                                <div class="col-md-12 col-md-offset-2 text-center heading-section animate-box"style="margin-top: 2rem;padding: ">
                                    <h2>Our Team  </h2>
                                </div>
                            </div>
                        </div>
                        <div id="carrousel"style="margin-top: -5rem;padding-bottom: 0em;">
                            <div class="container">
                                <div class="carousel-wrap">
                                    <div class="owl-carousel">
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                        <div class="item"><img src="http://placehold.it/150x150"></div>
                                    </div>
                                </div>


                            </div>
                        </div>

                    </div>
                </section>


            </div>
        </div>
        <script>
            $('.owl-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: true,
                navText: [
                    "<i class='fa fa-caret-left'></i>",
                    "<i class='fa fa-caret-right'></i>"
                ],
                autoplay: true,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 5
                    }
                }
            })


            $(document).ready(function () {
                $('.owl-carousel').owlCarousel({
                    // Your options here
                });
            });


        </script>

    </body>
</html>
