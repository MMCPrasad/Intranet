

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@1&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>
        <style>

            body {
                position: relative;
            }

            body::before {
                content: "";
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: url('assets/img/system/syst.jpg') center center / cover no-repeat;
                opacity: 0.2; /* Adjust the opacity value as needed */
                z-index: -1; /* Ensure the pseudo-element is behind the content */
            }
            .bckVover, .backcover {
                background-image: url(assets/img/system/carousel/about/cover.png);
                height: 25rem;

            }
            .gradient-text {
                background: linear-gradient(to right, #6C4891, #70A75E); /* Set your gradient colors */
                -webkit-background-clip: text;
                color: transparent;
                display: inline-block; /* Prevent the background from stretching the entire width */
                padding: 2rem 5rem;
                font-size: 1.2rem;
                font-family: 'Merriweather', serif;
            }
            .fade-in {
                opacity: 0;
                transform: translateY(50px); /* Adjust the initial position as needed */
                transition: opacity 1s, transform 1s;
            }

            .fade-in.active {
                opacity: 1;
                transform: translateY(0);
            }
            .dot {
                height: 3rem;
                width: 3rem;
                background-color: #72BF44;
                border-radius: 50%;
                display: inline-block;
                text-align: center;
                justify-content: center;
                font-size: 1.5rem;
                color: purple;
                font-weight: bolder;
            }






            .animatable {

                /* initially hide animatable objects */
                visibility: hidden;

                /* initially pause animatable objects their animations */
                -webkit-animation-play-state: paused;
                -moz-animation-play-state: paused;
                -ms-animation-play-state: paused;
                -o-animation-play-state: paused;
                animation-play-state: paused;
            }

            /* show objects being animated */
            .animated {
                visibility: visible;

                -webkit-animation-fill-mode: both;
                -moz-animation-fill-mode: both;
                -ms-animation-fill-mode: both;
                -o-animation-fill-mode: both;
                animation-fill-mode: both;

                -webkit-animation-duration: 2s;
                -moz-animation-duration: 2s;
                -ms-animation-duration: 2s;
                -o-animation-duration: 2s;
                animation-duration: 2s;

                -webkit-animation-play-state: running;
                -moz-animation-play-state: running;
                -ms-animation-play-state: running;
                -o-animation-play-state: running;
                animation-play-state: running;
            }

            /* CSS Animations (extracted from http://glifo.uiparade.com/) */
            @-webkit-keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -webkit-transform: translateY(-20px);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0);
                }
            }

            @-moz-keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -moz-transform: translateY(-20px);
                }

                100% {
                    opacity: 1;
                    -moz-transform: translateY(0);
                }
            }

            @-o-keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -o-transform: translateY(-20px);
                }

                100% {
                    opacity: 1;
                    -o-transform: translateY(0);
                }
            }

            @keyframes fadeInDown {
                0% {
                    opacity: 0;
                    transform: translateY(-20px);
                }
                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }



            @-webkit-keyframes fadeIn {
                0% {
                    opacity: 0;
                }
                20% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }

            @-moz-keyframes fadeIn {
                0% {
                    opacity: 0;
                }
                20% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }

            @-o-keyframes fadeIn {
                0% {
                    opacity: 0;
                }
                20% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }

            @keyframes fadeIn {
                0% {
                    opacity: 0;
                }
                60% {
                    opacity: 0;
                }
                20% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }
            @-webkit-keyframes bounceInLeft {
                0% {
                    opacity: 0;
                    -webkit-transform: translateX(-2000px);
                }
                60% {
                    -webkit-transform: translateX(20px);
                }

                80% {
                    -webkit-transform: translateX(-5px);
                }

                100% {
                    opacity: 1;
                    -webkit-transform: translateX(0);
                }
            }

            @-moz-keyframes bounceInLeft {
                0% {
                    opacity: 0;
                    -moz-transform: translateX(-2000px);
                }

                60% {
                    -moz-transform: translateX(20px);
                }

                80% {
                    -moz-transform: translateX(-5px);
                }

                100% {
                    opacity: 1;
                    -moz-transform: translateX(0);
                }
            }

            @-o-keyframes bounceInLeft {
                0% {
                    opacity: 0;
                    -o-transform: translateX(-2000px);
                }

                60% {
                    opacity: 1;
                    -o-transform: translateX(20px);
                }

                80% {
                    -o-transform: translateX(-5px);
                }

                100% {
                    opacity: 1;
                    -o-transform: translateX(0);
                }
            }

            @keyframes bounceInLeft {
                0% {
                    opacity: 0;
                    transform: translateX(-2000px);
                }

                60% {
                    transform: translateX(20px);
                }

                80% {
                    transform: translateX(-5px);
                }

                100% {
                    opacity: 1;
                    transform: translateX(0);
                }
            }
            @-webkit-keyframes bounceInRight {
                0% {
                    opacity: 0;
                    -webkit-transform: translateX(2000px);
                }

                60% {
                    -webkit-transform: translateX(-20px);
                }

                80% {
                    -webkit-transform: translateX(5px);
                }

                100% {
                    opacity: 1;
                    -webkit-transform: translateX(0);
                }
            }

            @-moz-keyframes bounceInRight {
                0% {
                    opacity: 0;
                    -moz-transform: translateX(2000px);
                }

                60% {
                    -moz-transform: translateX(-20px);
                }

                80% {
                    -moz-transform: translateX(5px);
                }

                100% {
                    opacity: 1;
                    -moz-transform: translateX(0);
                }
            }

            @-o-keyframes bounceInRight {
                0% {
                    opacity: 0;
                    -o-transform: translateX(2000px);
                }

                60% {
                    -o-transform: translateX(-20px);
                }

                80% {
                    -o-transform: translateX(5px);
                }

                100% {
                    opacity: 1;
                    -o-transform: translateX(0);
                }
            }

            @keyframes bounceInRight {
                0% {
                    opacity: 0;
                    transform: translateX(2000px);
                }

                60% {
                    transform: translateX(-20px);
                }

                80% {
                    transform: translateX(5px);
                }

                100% {
                    opacity: 1;
                    transform: translateX(0);
                }
            }
            @-webkit-keyframes fadeInUp {
                0% {
                    opacity: 0;
                    -webkit-transform: translateY(20px);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0);
                }
            }

            @-moz-keyframes fadeInUp {
                0% {
                    opacity: 0;
                    -moz-transform: translateY(20px);
                }

                100% {
                    opacity: 1;
                    -moz-transform: translateY(0);
                }
            }

            @-o-keyframes fadeInUp {
                0% {
                    opacity: 0;
                    -o-transform: translateY(20px);
                }

                100% {
                    opacity: 1;
                    -o-transform: translateY(0);
                }
            }

            @keyframes fadeInUp {
                0% {
                    opacity: 0;
                    transform: translateY(20px);
                }

                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
            @-webkit-keyframes bounceIn {
                0% {
                    opacity: 0;
                    -webkit-transform: scale(.3);
                }
                50% {
                    -webkit-transform: scale(1.05);
                }

                70% {
                    -webkit-transform: scale(.9);
                }

                100% {
                    opacity: 1;
                    -webkit-transform: scale(1);
                }
            }

            @-moz-keyframes bounceIn {
                0% {
                    opacity: 0;
                    -moz-transform: scale(.3);
                }

                50% {
                    -moz-transform: scale(1.05);
                }

                70% {
                    -moz-transform: scale(.9);
                }

                100% {
                    opacity: 1;
                    -moz-transform: scale(1);
                }
            }

            @-o-keyframes bounceIn {
                0% {
                    opacity: 0;
                    -o-transform: scale(.3);
                }

                50% {
                    -o-transform: scale(1.05);
                }

                70% {
                    -o-transform: scale(.9);
                }

                100% {
                    opacity: 1;
                    -o-transform: scale(1);
                }
            }

            @keyframes bounceIn {
                0% {
                    opacity: 0;
                    transform: scale(.3);
                }

                50% {
                    transform: scale(1.05);
                }

                70% {
                    transform: scale(.9);
                }

                100% {
                    opacity: 1;
                    transform: scale(1);
                }
            }
            @-webkit-keyframes moveUp {
                0% {
                    opacity: 1;
                    -webkit-transform: translateY(40px);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: translateY(0);
                }
            }

            @-moz-keyframes moveUp {
                0% {
                    opacity: 1;
                    -moz-transform: translateY(40px);
                }

                100% {
                    opacity: 1;
                    -moz-transform: translateY(0);
                }
            }

            @-o-keyframes moveUp {
                0% {
                    opacity: 1;
                    -o-transform: translateY(40px);
                }

                100% {
                    opacity: 1;
                    -o-transform: translateY(0);
                }
            }

            @keyframes moveUp {
                0% {
                    opacity: 1;
                    transform: translateY(40px);
                }

                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @-webkit-keyframes fadeBgColor {
                0%{
                    background:none;
                }
                70%{
                    background:none;
                }
                100%{
                    background:#464646;
                }
            }
            @-o-keyframes fadeBgColor {
                0%{
                    background:none;
                }
                70%{
                    background:none;
                }
                100%{
                    background:#464646;
                }
            }
            @keyframes fadeBgColor {
                0%{
                    background:none;
                }
                70%{
                    background:none;
                }
                100%{
                    background:#464646;
                }
            }

            .animated.animationDelay{
                animation-delay:.1s;
                -webkit-animation-delay:.1s;
            }
            .animated.animationDelayMed{
                animation-delay:1s;
                -webkit-animation-delay:1s;
            }
            .animated.animationDelayLong{
                animation-delay:1s;
                -webkit-animation-delay:1s;
            }
            .animated.fadeBgColor {
                -webkit-animation-name: fadeBgColor;
                -moz-animation-name: fadeBgColor;
                -o-animation-name: fadeBgColor;
                animation-name: fadeBgColor;
            }
            .animated.bounceIn {
                -webkit-animation-name: bounceIn;
                -moz-animation-name: bounceIn;
                -o-animation-name: bounceIn;
                animation-name: bounceIn;
            }
            .animated.bounceInRight {
                -webkit-animation-name: bounceInRight;
                -moz-animation-name: bounceInRight;
                -o-animation-name: bounceInRight;
                animation-name: bounceInRight;
            }
            .animated.bounceInLeft {
                -webkit-animation-name: bounceInLeft;
                -moz-animation-name: bounceInLeft;
                -o-animation-name: bounceInLeft;
                animation-name: bounceInLeft;
            }
            .animated.fadeIn {
                -webkit-animation-name: fadeIn;
                -moz-animation-name: fadeIn;
                -o-animation-name: fadeIn;
                animation-name: fadeIn;
            }
            .animated.fadeInDown {
                -webkit-animation-name: fadeInDown;
                -moz-animation-name: fadeInDown;
                -o-animation-name: fadeInDown;
                animation-name: fadeInDown;
            }
            .animated.fadeInUp {
                -webkit-animation-name: fadeInUp;
                -moz-animation-name: fadeInUp;
                -o-animation-name: fadeInUp;
                animation-name: fadeInUp;
            }
            .animated.moveUp {
                -webkit-animation-name: moveUp;
                -moz-animation-name: moveUp;
                -o-animation-name: moveUp;
                animation-name: moveUp;
            }
        </style>

        <div class="bckVover">

            <div class="backcover"  >

            </div>
            <div class="block animatable bounceInRight">
                <div class="desc animate-box text-center " >
                    <p style="font-size: 4rem;margin-right: 5rem;margin-top: -7rem;text-align: right;color: purple"><strong>Fintrex Finance LTD</strong></p>

                </div>
            </div>

        </div>
        <div class="row">
            <p class="gradient-text fade-in" >'Fintrex Finance Ltd' which was established in 2007, has emerged as a strong contender 
                in the financial services sector capturing a sizable market share in its journey of 
                over a decade. Driven by a steadfast commitment to promoting financial inclusion, 
                economic growth and development in Sri Lanka, Fintrex continues to play a significant 
                role in ensuring the financial well-being of communities by supporting businesses 
                and individuals to access financial solutions. Backed by a team of experts with strong 
                financial acumen, Fintrex continues to create value for its customers supporting them 
                in realising their financial aspirations.</p>

        </div>

        <div class="block animatables bounceIns">
            <div class="row" style="padding: 2rem 5rem;">
                <div  class="card" style="padding: 0.5rem 2rem;background-color: transparent;box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);border-radius: 20px;">
                    <div class="feature-text">
                        <h2 style="font-family: 'Abril Fatface', serif;">Vision___________________________________________________</h2>
                        <p style="font-family: 'DM Serif Display', serif; font-size: 1.2rem; color: purple;">Be within the top 5 financial solution providers by creating value to everyone we engage with.</p>
                    </div>
                </div>
            </div>

        </div>
        <div class="block animatables bounceIns">
            <div class="row" style="padding: 1rem 5rem;"> 
                <div  class="card" style="padding: 0.5rem 2rem;background-color: transparent;box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);border-radius: 20px;">
                    <div class="feature-text">
                        <h2 style="font-family: 'Abril Fatface', serif;">Mission___________________________________________________</h2>
                        <p style="font-family: 'DM Serif Display', serif;font-size: 1.2rem;color: purple;">Create Value to:<br>
                            • Our customers by offering services at their convenience through 
                            innovative technology.<br>
                            • Our staff by developing and empowering to offer superior service.<br>
                            • Our shareholders by optimizing returns.<br>
                            • Our society by committing good governance.<br>
                            • Our nation by contributing to their wellbeing.</p>
                    </div>
                </div>

            </div> 
        </div>



        <div class="row d-flex justify-content-center" style="padding: 2rem 5rem;">
            <div class="values">
                <div  class="card" style="padding: 0.5rem 2rem;background-color: transparent;box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);border-radius: 20px; ">
                    <div class="feature-text">
                        <h2 style="font-family: 'Abril Fatface', serif;" >Values_______________________________________________</h2>
                        <div class="block animatables bounceInLefts" style="margin-top: 2rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">F</span>
                                        <h5 style="margin-left: 2rem">Fairness</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We treat people equitably</h5>
                                </div>
                            </div>
                        </div>
                        <div class="block animatable bounceInLefts" style="margin-top: 1rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">I</span>
                                        <h5 style="margin-left: 2rem">Innovation</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We seek creativity in everything we do</h5>
                                </div>
                            </div>
                        </div>
                        <div class="block animatable bounceInLefts" style="margin-top: 1rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">N</span>
                                        <h5 style="margin-left: 2rem">Nurture</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We develop our employees and customers</h5>
                                </div>
                            </div>
                        </div>
                        <div class="block animatable bounceInLefts" style="margin-top: 1rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">T</span>
                                        <h5 style="margin-left: 2rem">Transparent</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We will be open and honest in all our dealings</h5>
                                </div>
                            </div>
                        </div>
                        <div class="block animatable bounceInLefts" style="margin-top: 1rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">R</span>
                                        <h5 style="margin-left: 2rem">Respect</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We treat all individuals with dignity</h5>
                                </div>
                            </div>
                        </div>
                        <div class="block animatable bounceInLefts" style="margin-top: 1rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">E</span>
                                        <h5 style="margin-left: 2rem">Elevate</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We help in uplifting the social wellbeing of our nation</h5>
                                </div>
                            </div>
                        </div>
                        <div class="block animatable bounceInLefts" style="margin-top: 1rem;">
                            <div class="row" style="color: purple;">
                                <div class="col-2" style="border-radius: 50%">
                                    <div style="display: flex; align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                        <span class="dot">X</span>
                                        <h5 style="margin-left: 2rem">Xenial</h5>
                                    </div>
                                </div>
                                <div class="col-10">
                                    <h5 style="padding-top: 0.4rem;margin-left: 2rem;font-family: 'DM Serif Display', serif;">We are sincere to all our stakeholders</h5>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>   
            </div>


        </div>


        <%@include file="jspf/scripts.jspf" %>

        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>


        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var gradientText = document.querySelector(".gradient-text");

                window.addEventListener("scroll", function () {
                    // Adjust the threshold value as needed
                    var threshold = window.innerHeight * 0.8;
                    var gradientTextPosition = gradientText.getBoundingClientRect().top;

                    if (gradientTextPosition < threshold) {
                        gradientText.classList.add("active");
                    } else {
                        gradientText.classList.remove("active");
                    }
                });
            });




// Trigger CSS animations on scroll.
// Detailed explanation can be found at http://www.bram.us/2013/11/20/scroll-animations/

// Looking for a version that also reverses the animation when
// elements scroll below the fold again?
// --> Check https://codepen.io/bramus/pen/vKpjNP

            jQuery(function ($) {

                // Function which adds the 'animated' class to any '.animatable' in view
                var doAnimations = function () {

                    // Calc current offset and get all animatables
                    var offset = $(window).scrollTop() + $(window).height(),
                            $animatables = $('.animatable');

                    // Unbind scroll handler if we have no animatables
                    if ($animatables.length == 0) {
                        $(window).off('scroll', doAnimations);
                    }

                    // Check all animatables and animate them if necessary
                    $animatables.each(function (i) {
                        var $animatable = $(this);
                        if (($animatable.offset().top + $animatable.height() - 20) < offset) {
                            $animatable.removeClass('animatable').addClass('animated');
                        }
                    });

                };

                // Hook doAnimations on scroll, and trigger a scroll
                $(window).on('scroll', doAnimations);
                $(window).trigger('scroll');

            });
        </script>

    </body>
</html>

