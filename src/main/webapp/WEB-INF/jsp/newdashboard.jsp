
<%-- 
    Document   : dashboard
    Created on : Aug 8, 2023, 4:22:07 PM
    Author     : cpm.999cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet </title>
        <%@include file="jspf/header.jspf" %>
        <link href="assets/img/pr/images.png" rel="icon">
        <link href="assets/img/pr/images.png" rel="apple-touch-icon">
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&family=Marvel:wght@700&display=swap" rel="stylesheet">
        <!--        <link rel="stylesheet" href="files/css/bootstrap.css">-->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>


        <style>/* === Google Font Import - Poppins === */


            .cardhead{
                background-color: #343333;
                color:#0ABE9E;
                font-family: "jost";
            }

            .card1{
                background-color: #EEFFFC;
                color: #222222;
                font-family: "jost";
                border-radius: 10px;
                border-color: #EEFFFC;


            }



            section{
                position: relative;
                height: 300px;
                justify-content: center;
                display: flex;
                align-items: center;
            }

            .swiper{
                width: 100vh;

            }

            .card{
                position: relative;
                background: #62d957;
                border-radius: 20px;
                height: 350px;
                margin: 20px 0;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }

            .card::before{
                content: "";
                position: absolute;
                height: 40%;
                width: 100%;
                background: #84649c;
                border-radius: 20px 20px 0 0;
            }

            .card .card-content{
                display: flex;
                flex-direction: column;
                align-items: center;
                padding: 30px;
                position: relative;
                z-index: 100;
            }

            section .card .image{
                height: 32vh;
                width: 27vh;
                border-radius: 20%;
                padding: 3px;
                background: #6c4892;

            }

            section .card .image img{
                height: 100%;
                width: 100%;
                object-fit: cover;
                border-radius: 20%;
                border: 3px solid #3a3a3a;
            }

            .card .media-icons{
                position: absolute;
                top: 15px;
                right: 20px;
                display: flex;
                flex-direction: row;
                align-items: center;

            }

            .card .media-icons i{
                color: #7d2ae8;
                opacity: 0.6;
                margin-top: 10px;
                transition: all 1s ease;
                cursor: pointer;
                margin: 10px;
            }

            .card .media-icons i:hover{
                opacity: 1;
            }

            .card .name-profession{
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-top: 10px;
                color: black;
            }

            .name-profession .name{
                font-size: 20px;
                font-weight: 600;
            }

            .name-profession .profession{
                font-size:15px;
                font-weight: 500;
            }

            .card .rating{
                display: flex;
                align-items: center;
                margin-top: 18px;
            }



            .card .button{
                width: 100%;
                display: flex;
                justify-content: space-around;
                margin-top: 20px;
            }

            .card .button button{
                background: #7d2ae8;
                outline: none;
                border: none;
                color: #fff;
                padding: 8px 22px;
                border-radius: 10px;
                font-size: 14px;
                transition: all 0.3s ease;
                cursor: pointer;
            }

            .button button:hover{
                background: #6616d0;
            }

            .swiper-pagination{
                position: absolute;
                top: 450px;
            }

            .swiper-pagination-bullet{
                height: 7px;
                width: 26px;
                border-radius: 25px;
                background: white;
            }

            .swiper-button-next, .swiper-button-prev{
                opacity: 0.7;
                color: white;
                transition: all 0.3s ease;
            }
            .swiper-button-next:hover, .swiper-button-prev:hover{
                opacity: 1;
                color: white;
            }



            .card1 {
                display: inline-block;
                width: 220px;
                height: 220px;
                margin-right: 20px;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                text-align: center;
                padding: 10px;
                margin-right: 3rem;
            }

            .card img {
                max-width: 100%;
                max-height: 100%;
            }
            .marquee-pause:hover marquee {
                -webkit-animation-play-state: paused;
                animation-play-state: paused;
            }

            .marquee-pause {
                white-space: nowrap; /* Prevents line breaks */
                overflow: hidden; /* Hides overflow content */
                position: relative; /* Needed for absolute positioning */
            }


            @media (max-width: 1024px) {
                .marquee-pause.card1{
                    flex-basis: 25%;
                }
            }

            @media (max-width: 768px) {
                .marquee-pause.card1 {
                    flex-basis: 33.33%;
                }
            }

            @keyframes marquee {
                0% {
                    transform: translateX(0);
                }
                100% {
                    transform: translateX(-100%);
                }
            }

            @media (max-width: 1024px) {
                @keyframes marquee {
                    0% {
                        transform: translateX(0);
                    }
                    100% {
                        transform: translateX(-125%);
                    }
                }
            }

            @media (max-width: 768px) {
                @keyframes marquee {
                    0% {
                        transform: translateX(0);
                    }
                    100% {
                        transform: translateX(-186.65%);
                    }
                }
            }




            #marquee {
                padding: 50px 0px;
                width: 100%;
            }

            #marquee .container {
                overflow: hidden;
                width: 100%;
            }

            #marquee .pic-container {
                display: flex;
                animation: marquee 10s infinite linear;
            }

            #marquee .pic-container .pic {
                flex-basis: 20%;
                flex-shrink: 0;
            }

            #marquee img {
                width: 100%;
                object-fit: cover;
                border: 1px solid rgba(238, 231, 231, 0.9);
            }

            @media (max-width: 1024px) {
                #marquee .pic-container .pic {
                    flex-basis: 25%;
                }
            }

            @media (max-width: 768px) {
                #marquee .pic-container .pic {
                    flex-basis: 33.33%;
                }
            }

            @keyframes marquee {
                0% {
                    transform: translateX(0);
                }
                100% {
                    transform: translateX(-100%);
                }
            }

            @media (max-width: 1024px) {
                @keyframes marquee {
                    0% {
                        transform: translateX(0);
                    }
                    100% {
                        transform: translateX(-125%);
                    }
                }
            }

            @media (max-width: 768px) {
                @keyframes marquee {
                    0% {
                        transform: translateX(0);
                    }
                    100% {
                        transform: translateX(-186.65%);
                    }
                }
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




            .footer-icons ul {
                list-style: none; /* Remove default list styles */
                padding: 0;
            }

            .footer-icons li {
                display: inline-block; /* Display list items in a row */
                margin-right: 10px; /* Add some spacing between icons */
            }

            /* If you want to style the icons themselves, you can do so here */
            .footer-icons i {
                font-size: 24px; /* Adjust the icon size as needed */
            }








            #news-slider{
                margin-top: 80px;
            }
            .post-slide{
                background: #fff;
                margin: 20px 15px 20px;
                border-radius: 15px;
                padding-top: 1px;
                box-shadow: 0px 14px 22px -9px #bbcbd8;
            }
            .post-slide .post-img{
                position: relative;
                overflow: hidden;
                border-radius: 10px;
                margin: -12px 15px 8px 15px;
                margin-left: -10px;
            }
            .post-slide .post-img img{
                width: 100%;
                height: auto;
                transform: scale(1,1);
                transition:transform 0.2s linear;
            }
            .post-slide:hover .post-img img{
                transform: scale(1.1,1.1);
            }
            .post-slide .over-layer{
                width:100%;
                height:100%;
                position: absolute;
                top:0;
                left:0;
                opacity:0;
                background: linear-gradient(-45deg, rgba(6,190,244,0.75) 0%, rgba(45,112,253,0.6) 100%);
                transition:all 0.50s linear;
            }
            .post-slide:hover .over-layer{
                opacity:1;
                text-decoration:none;
            }
            .post-slide .over-layer i{
                position: relative;
                top:45%;
                text-align:center;
                display: block;
                color:#fff;
                font-size:25px;
            }
            .post-slide .post-content{
                background:#fff;
                padding: 2px 20px 40px;
                border-radius: 15px;
            }
            .post-slide .post-title a{
                font-size:15px;
                font-weight:bold;
                color:#333;
                display: inline-block;
                text-transform:uppercase;
                transition: all 0.3s ease 0s;
            }
            .post-slide .post-title a:hover{
                text-decoration: none;
                color:#3498db;
            }
            .post-slide .post-description{
                line-height:24px;
                color:#808080;
                margin-bottom:25px;
            }
            .post-slide .post-date{
                color:#a9a9a9;
                font-size: 14px;
            }
            .post-slide .post-date i{
                font-size:20px;
                margin-right:8px;
                color: #CFDACE;
            }
            .post-slide .read-more{
                padding: 7px 20px;
                float: right;
                font-size: 12px;
                background: #2196F3;
                color: #ffffff;
                box-shadow: 0px 10px 20px -10px #1376c5;
                border-radius: 25px;
                text-transform: uppercase;
            }
            .post-slide .read-more:hover{
                background: #3498db;
                text-decoration:none;
                color:#fff;
            }
            .owl-controls .owl-buttons{
                text-align:center;
                margin-top:20px;
            }
            .owl-controls .owl-buttons .owl-prev{
                background: #fff;
                position: absolute;
                top:-13%;
                left:15px;
                padding: 0 18px 0 15px;
                border-radius: 50px;
                box-shadow: 3px 14px 25px -10px #92b4d0;
                transition: background 0.5s ease 0s;
            }
            .owl-controls .owl-buttons .owl-next{
                background: #fff;
                position: absolute;
                top:-13%;
                right: 15px;
                padding: 0 15px 0 18px;
                border-radius: 50px;
                box-shadow: -3px 14px 25px -10px #92b4d0;
                transition: background 0.5s ease 0s;
            }
            .owl-controls .owl-buttons .owl-prev:after,
            .owl-controls .owl-buttons .owl-next:after{
                content:"\f104";
                font-family: FontAwesome;
                color: #333;
                font-size:30px;
            }
            .owl-controls .owl-buttons .owl-next:after{
                content:"\f105";
            }
            @media only screen and (max-width:1280px) {
                .post-slide .post-content{
                    padding: 0px 15px 25px 15px;
                }
            }
            #news-slider .owl-nav {
                display: none;
            }




            @charset "utf-8";

            /******* Fonts Import Start **********/
            @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap");
            /********* Fonts Face CSS End **********/

            /******* Common Element CSS Start ******/

            .clear {
                clear: both;
            }
            img {
                max-width: 100%;
                border: 0px;
            }
            ul,
            ol {
                list-style: none;
            }
            a {
                text-decoration: none;
                color: inherit;
                outline: none;
                transition: all 0.4s ease-in-out;
                -webkit-transition: all 0.4s ease-in-out;
            }
            a:focus,
            a:active,
            a:visited,
            a:hover {
                text-decoration: none;
                outline: none;
            }
            a:hover {
                color: #e73700;
            }

            button {
                outline: none !important;
            }
            /******* Common Element CSS End *********/

            /* -------- title style ------- */
            .line-title {
                position: relative;
                width: 400px;
            }
            .line-title::before,
            .line-title::after {
                content: "";
                position: absolute;
                bottom: 0;
                left: 0;
                height: 4px;
                border-radius: 2px;
            }
            .line-title::before {
                width: 100%;
                background: #f2f2f2;
            }
            .line-title::after {
                width: 32px;
                background: #e73700;
            }

            /******* Middle section CSS Start ******/
            /* -------- Landing page ------- */
            .game-section {
                padding: 60px 50px;
            }
            .game-section .owl-stage {
                margin: 15px 0;
                display: flex;
                display: -webkit-flex;
            }
            .game-section .item {
                margin: 0 15px 60px;
                width: 320px;
                height: 400px;
                display: flex;
                display: -webkit-flex;
                align-items: flex-end;
                -webkit-align-items: flex-end;
                background: #343434 no-repeat center center / cover;
                border-radius: 16px;
                overflow: hidden;
                position: relative;
                transition: all 0.4s ease-in-out;
                -webkit-transition: all 0.4s ease-in-out;
                cursor: pointer;
            }
            .game-section .item.active {
                width: 500px;
                box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
                -webkit-box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
            }
            .game-section .item:after {
                content: "";
                display: block;
                position: absolute;
                height: 100%;
                width: 100%;
                left: 0;
                top: 0;
                background-image: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 1));
            }
            .game-section .item-desc {
                padding: 0 24px 12px;
                color: #fff;
                position: relative;
                z-index: 1;
                overflow: hidden;
                transform: translateY(calc(100% - 54px));
                -webkit-transform: translateY(calc(100% - 54px));
                transition: all 0.4s ease-in-out;
                -webkit-transition: all 0.4s ease-in-out;
            }
            .game-section .item.active .item-desc {
                transform: none;
                -webkit-transform: none;
            }
            .game-section .item-desc p {
                opacity: 0;
                -webkit-transform: translateY(32px);
                transform: translateY(32px);
                transition: all 0.4s ease-in-out 0.2s;
                -webkit-transition: all 0.4s ease-in-out 0.2s;
            }
            .game-section .item.active .item-desc p {
                opacity: 1;
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
            .game-section .owl-theme.custom-carousel .owl-dots {
                margin-top: -20px;
                position: relative;
                z-index: 5;
            }





            .policy{
                background-image: url('assets/img/system/pol.jpg'); /* Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 350px; /* You can set the height as per your requirements */


            }
            .birthday{
                background-image: url('assets/img/system/birthday.jpg'); /* Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 350px; /* You can set the height as per your requirements */


            }
            .notices{
                background-image: url('assets/img/system/notices.jpg'); /* Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 350px; /* You can set the height as per your requirements */


            }
            .announce{
                background-image: url('assets/img/system/announ.jpg'); /* Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 350px; /* You can set the height as per your requirements */


            }
            .chair{
                background-image: url('assets/img/system/anth.jpg'); /* Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 430px; /* You can set the height as per your requirements */

            }
            .anthem{
                background-image: url('assets/img/system/anth.jpg'); /* Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 430px; /* You can set the height as per your requirements */


            }
            .content {
                background-color: rgba(255, 255, 255, 1); /* Background color with opacity */
                padding: 20px;
                opacity: 1;
            }
            .contents {
                background-color: rgba(126, 158, 125, 1); /* Background color with opacity */
                padding: 10px;
                opacity: 1;

            }

            .content h1, .content p {
                color: black !important; /* Text color */
                opacity: 1.5;
            }





        </style>




        <div class="top" id="news" style="margin-left: 3rem;margin-top: 2rem;background-color: #f0f0f0;padding: 10px;"> 
            <h3 >Latest News</h3>
        </div>
        <section class="game-section" style="margin-top: 7rem;">
            <div class="owl-carousel custom-carousel owl-theme" id="newsrow">
                <div id="imageRow" class="carousel">

                </div>
            </div>

        </section>



        <%@include file="jspf/scripts.jspf" %>

        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
        <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <script>
        </script>


        <script>



            // Function to load images and populate the carousel
            function loadImages() {
                fetch('news/images')
                        .then(response => response.json())
                        .then(images => {
                            let imageRow = document.getElementById('newsrow');
                            imageRow.innerHTML = ''; // Clear existing content

                            // Sort the images array in reverse order (assuming images have a timestamp or some identifier)
                            images = images.reverse();

                            for (let i = 0; i < images.length; i++) {
                                let imageContainer = document.createElement('div');
                                imageContainer.classList.add('item');
                                imageContainer.style.backgroundImage = 'url(news/path/view/' + images[i].path + ')';

                                let itemDesc = document.createElement('div');
                                itemDesc.classList.add('item-desc');
                                itemDesc.style.margin = '80px 0';

                                let h4 = document.createElement('h4');
                                h4.textContent = images[i].heading;

                                let p = document.createElement('p');
                                p.textContent = images[i].para;

                                // Create a "See More" link
                                let seeMoreLink = document.createElement('a');
                                seeMoreLink.textContent = 'See More';
                                seeMoreLink.href = '#';
                                seeMoreLink.classList.add('see-more-link');

                                itemDesc.appendChild(h4);
                                itemDesc.appendChild(p);
                                itemDesc.appendChild(seeMoreLink);
                                imageContainer.appendChild(itemDesc);


                            }

                            // Initialize the Owl Carousel for "newsrow"
                            $("#newsrow").owlCarousel({
                                autoWidth: true,
                                loop: true
                            });

                            // Add click event handler for the items in "newsrow"
                            $("#newsrow .item").click(function () {
                                $("#newsrow .item").not($(this)).removeClass("active");
                                $(this).toggleClass("active");

                                // Attach a click event handler for the "See More" link
                                $(".see-more-link").click(function (event) {
                                    event.preventDefault();

                                    // Get the image path associated with the clicked item
                                    let imagePath = 'news/path/view/' + images[$(this).closest('.item').index()].path;

                                    // Set the modal image source
                                    $('#imageModal #imgList img').attr('src', imagePath);

                                    // Set the max-width and max-height of the image
                                    $('#imageModal #imgList img').css({
                                        'max-width': '150%', // Change this value to your desired width
                                        'max-height': '150%'  // Change this value to your desired height
                                    });

                                    // Open the Bootstrap modal
                                    $('#imageModal').modal('show');
                                });

                            });
                        });
            }

    // Call the loadImages function when the document is ready
            $(document).ready(function () {
                loadImages();
            });



        </script>






    </body>
</html>
