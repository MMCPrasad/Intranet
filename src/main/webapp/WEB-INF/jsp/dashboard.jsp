
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
        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>
        <link href="assets/img/pr/images.png" rel="icon">
        <link href="assets/img/pr/images.png" rel="apple-touch-icon">
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&family=Marvel:wght@700&display=swap" rel="stylesheet">
        <!--        <link rel="stylesheet" href="files/css/bootstrap.css">-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Goldman&display=swap" rel="stylesheet
              <link rel="preconnect" href="https://fonts.googleapis.com">



        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Crimson+Text&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kalnia&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,500;1,500&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">

    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>


        <style>/* === Google Font Import - Poppins === */
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
                background: url('assets/img/system/12345.jpg') center center / cover no-repeat;
                opacity: 0.6; /* Adjust the opacity value as needed */
                z-index: -1; /* Ensure the pseudo-element is behind the content */
            }


            .card-notice {
                position: relative;
                margin: 50px auto 10px;
                max-width: 60rem;
                max-height: 30rem;
                overflow: hidden;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);

            }

            .card-notice::before {
                content: "";
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                background-image: url('assets/img/system/notice.jpg');
                background-size: cover;
                opacity: 0.3; /* Adjust the opacity for the background image */
                z-index: -1; /* Ensure the background overlay is behind other content */
                border-radius: 10px; /* Add border radius */
            }





            .news-item {
                cursor: pointer;
            }

            /* For WebKit browsers (Chrome, Safari) */
            #newsContainer::-webkit-scrollbar {
                height: 1px;
                width: 8px; /* Set the width of the scrollbar */
            }

            #newsContainer::-webkit-scrollbar-thumb {
                background-color: #a6a4a4; /* Set the color of the scrollbar thumb */
                border-radius: 6px; /* Set the border radius of the scrollbar thumb */
            }

            #newsContainer::-webkit-scrollbar-track {
                background-color: #f1f1f1; /* Set the color of the scrollbar track */
            }

            /* For Firefox */
            #newsContainer {
                scrollbar-width: thin; /* Set the width of the scrollbar */
                scrollbar-color: #888 #f1f1f1; /* Set the color of the scrollbar thumb and track */
            }
            #newsContainer ::-webkit-scrollbar-thumb:hover {
                background-color: #949191; /* Change the color for the hover effect */
            }




            /* Set the style for the whole scrollbar */
            #announce ::-webkit-scrollbar {
                width: 8px; /* You can adjust the width as needed */
                height: 1px;
            }

            /* Set the style for the track (the area where the thumb doesn't cover) */
            #announce ::-webkit-scrollbar-track {
                background-color: #f1f1f1; /* Change the color as per your design */
            }

            /* Set the style for the scrollbar thumb (the draggable part) */
            #announce ::-webkit-scrollbar-thumb {
                background-color: #a6a4a4; /* Change the color as per your design */
                border-radius: 6px; /* You can adjust the border-radius for a rounded look */
            }
            #announce ::-webkit-scrollbar-thumb:hover {
                background-color: #949191; /* Change the color for the hover effect */
            }


            #bday ::-webkit-scrollbar {
                height: 1px;
                width: 8px; /* You can adjust the width as needed */
            }

            /* Set the style for the track (the area where the thumb doesn't cover) */
            #bday ::-webkit-scrollbar-track {
                background-color: #f1f1f1; /* Change the color as per your design */
            }

            /* Set the style for the scrollbar thumb (the draggable part) */
            #bday ::-webkit-scrollbar-thumb {
                background-color: #a6a4a4; /* Change the color as per your design */
                border-radius: 6px; /* You can adjust the border-radius for a rounded look */
            }

            /* Change the color of the scrollbar thumb on hover */
            #bday ::-webkit-scrollbar-thumb:hover {
                background-color: #949191; /* Change the color for the hover effect */
            }


            /* Define a class for the custom scrollbar styles */
            .custom-scrollbar {
                scrollbar-width: thin;
                scrollbar-color: #a6a4a4 #f1f1f1;
            }

            /* Set the style for the scrollbar thumb (the draggable part) in Firefox */
            .custom-scrollbar {
                overflow-y: auto;
                max-height: 200px;
                padding-left: 10px;
                padding-top: 10px;
            }

            /* Set the style for the scrollbar thumb (the draggable part) in Chrome and Safari */
            .custom-scrollbar::-webkit-scrollbar {
                width: 8px;
            }

            .custom-scrollbar::-webkit-scrollbar-thumb {
                background-color: #a6a4a4;
                border-radius: 6px;
            }

            .custom-scrollbar::-webkit-scrollbar-track {
                background-color: #f1f1f1;
            }

            .custom-scrollbar::-webkit-scrollbar-thumb:hover {
                background-color: #949191;
            }






            #details {
                position: relative;
            }

            #details{
                background: url('assets/img/system/12345.jpg') center center / cover no-repeat;


            }



            .cards {
                background-color: #f0f1f5;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
                transition: transform 0.3s;
            }

            .cards:hover {
                transform: scale(1.05);
            }



            /* Modal Styling */
            .modal-content {
                border-radius: 15px;
            }

            /* Table Styling */
            .table {
                width: 100%;
                border-collapse: collapse;
            }

            .table th, .table td {
                padding: 10px;
                border: 1px solid #ddd;
            }

            .table th {
                background-color: #3498db;
                color: #fff;
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
                Replace 'your-image.jpg' with your image file path */
                background-size: cover;
                background-position: center;
                position: relative;
                height: 550px; /* You can set the height as per your requirements */


            }

            .content {
                background-color: #e9d5eb; /* Background color with opacity */
                padding: 20px;
                opacity: 1;
                border-radius: 15px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.6); /* Adding a drop shadow */
                transition: transform 0.5s ease; /* Adding a smooth transition for the transform property */
            }

            .content:hover {
                transform: scale(1.02); /* Increasing the scale on hover */
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.8); /* Changing the box shadow on hover */
                background-color: #DAC0DC; /* Changing the background color on hover */
            }


            .contents {
                background-color: #5ba35d; /* Background color with opacity */
                padding: 10px;
                opacity: 1;
                border-radius: 5px;
                font-family: 'Goldman', sans-serif;

            }

            .content h1, .content p {
                color: black !important; /* Text color */
                opacity: 1.5;
            }
            /* Style the card without a border by default */
            .col .cards {
                border: 2px solid transparent; /* Set the border to transparent */
                border-radius: 10px; /* Make the card edges round */
                padding: 10px;
                transition: border-color 0.3s, color 0.3s;
            }

            /* Style the border on hover */
            .col .cards:hover {
                border-color: purple; /* Change border color to purple on hover */
                color: purple; /* Change text color to purple on hover */

            }

            /* Other styles remain the same */


            /* Style the popup */
            .col .cards:hover .popup {
                display: block;
                position: absolute;
                background-color: purple;
                color: white;
                padding: 5px;
                border-radius: 5px;
                top: -30px;
                left: 50%;
                transform: translateX(-50%);
                z-index: 1;
            }

            /* Hide the popup by default */
            .col .cards .popup {
                display: none;
            }
            .col .cards .txt {
                text-align: center; /* Center-align the text */
            }



            .news-item {
                transition: color 0.2s; /* Smooth transition for color change */
                cursor: pointer; /* Change cursor to pointer on hover */
                border-bottom: 1px solid #6c4892; /* Add a purple horizontal line at the bottom of the news item */
            }

            .news-item:hover {
                color: #6c4892; /* Change text color to purple on hover */
            }


            #tbl3 th, #tbl3 td {
                text-decoration: none;
                border: solid #ffffff;
                border-width: 1px; /* Adjust the value to your desired border size */
                color: purple;
            }
            #tbl4 th, #tbl4 td {
                text-decoration: none;
                border: solid #ffffff;
                border-width: 1px; /* Adjust the value to your desired border size */

            }

            .placeholder {
                display: inline-block;
                min-height: 1em;
                vertical-align: middle;
                cursor: pointer;
                background-color: transparent;
                opacity: 1;
            }

            #announce {
                text-decoration: none;
                color: black;
                transition: color 0.1s, font-weight 0.1s;

            }
            #announce a {
                text-decoration: none;
                color: black;
                transition: color 0.1s, font-weight 0.1s;
                font-family: 'Exo 2';
                font-weight: 700;
                font-size: 0.9rem;
            }

            #announce a:hover {
                color: purple;


            }

            #bday{
                font-family: 'Exo 2';
                font-weight: 700;
                font-size: 1rem;


            }

            #empModel,#brnchModel,#dptModel {
                font-family: 'Public Sans', sans-serif;
            }






            @charset "utf-8";

            /******* Fonts Import Start **********/
            @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap");
            /********* Fonts Face CSS End **********/

            /******* Common Element CSS Start ******/

            .clear {
                clear: both;
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
            h1 {
                margin-bottom: 18px;
                padding-bottom: 16px;

                line-height: 28px;
                font-weight: 700;
                position: relative;
                text-transform: capitalize;
            }
            h3 {
                margin: 0 0 10px;
                font-size: 28px;
                line-height: 36px;
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
                padding: 20px 65px;
            }
            .game-section .owl-stage {
                margin: 15px 0;
                display: flex;
                display: -webkit-flex;
            }
            .game-section .item {
                margin: 0 15px 60px;
                width: 320px;
                height: 280px;
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
            /******** Middle section CSS End *******/

            /***** responsive css Start ******/

            @media (min-width: 992px) and (max-width: 1199px) {
                h2 {
                    margin-bottom: 32px;
                }
                h3 {
                    margin: 0 0 8px;
                    font-size: 24px;
                    line-height: 32px;
                }

                /* -------- Landing page ------- */
                .game-section {
                    padding: 50px 30px;
                }
                .game-section .item {
                    margin: 0 12px 60px;
                    width: 260px;
                    height: 360px;
                }
                .game-section .item.active {
                    width: 400px;
                }
                .game-section .item-desc {
                    transform: translateY(calc(100% - 46px));
                    -webkit-transform: translateY(calc(100% - 46px));
                }
            }

            @media (min-width: 768px) and (max-width: 991px) {
                h2 {
                    margin-bottom: 32px;
                }
                h3 {
                    margin: 0 0 8px;
                    font-size: 24px;
                    line-height: 32px;
                }
                .line-title {
                    width: 330px;
                }

                /* -------- Landing page ------- */
                .game-section {
                    padding: 50px 30px 40px;
                }
                .game-section .item {
                    margin: 0 12px 60px;
                    width: 240px;
                    height: 330px;
                }
                .game-section .item.active {
                    width: 360px;
                }
                .game-section .item-desc {
                    transform: translateY(calc(100% - 42px));
                    -webkit-transform: translateY(calc(100% - 42px));
                }
            }

            @media (max-width: 767px) {

                h2 {
                    margin-bottom: 20px;
                }
                h3 {
                    margin: 0 0 8px;
                    font-size: 19px;
                    line-height: 24px;
                }
                .line-title {
                    width: 250px;
                }

                /* -------- Landing page ------- */
                .game-section {
                    padding: 30px 15px 20px;
                }
                .game-section .item {
                    margin: 0 10px 40px;
                    width: 200px;
                    height: 280px;
                }
                .game-section .item.active {
                    width: 270px;
                    box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
                    -webkit-box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
                }
                .game-section .item-desc {
                    padding: 0 14px 5px;
                    transform: translateY(calc(100% - 42px));
                    -webkit-transform: translateY(calc(100% - 42px));
                }
            }



            .custom-btn {
                width: 200px; /* Set your desired width */
                height: 50px; /* Set your desired height */
            }


            .highlight-row {
                background-color: greenyellow; /* Set your desired highlight color */
            }
            /* Custom styles for the DataTable with the ID "emp" */
            /* Custom styles for odd rows in the DataTable with the ID "emp" */
            #emp tr.odd {
                background-color: #e3f3fc;
                font-size: 0.9rem;
            }

            /* Custom styles for even rows in the DataTable with the ID "emp" */
            #emp tr.even {
                background-color: #f2f7fa;
                font-size: 0.9rem;
            }
            #dprttable tr.odd {
                background-color: #e3f3fc;
                font-size: 0.9rem;
            }

            /* Custom styles for even rows in the DataTable with the ID "emp" */
            #dprttable tr.even {
                background-color: #f2f7fa;
                font-size: 0.9rem;
            }
            #brnc tr.odd {
                background-color: #e3f3fc;
                font-size: 0.9rem;
            }

            /* Custom styles for even rows in the DataTable with the ID "emp" */
            #brnc tr.even {
                background-color: #f2f7fa;
                font-size: 0.9rem;
            }

            #forms {
                max-height: 200px; /* Adjust the maximum height as needed */
                overflow-y: auto; /* Enable vertical scrolling */
            }

            /* Media query for screens below 1400px */
            @media (max-width: 1400px) {
                .row-card {
                    flex-wrap: wrap; /* Allow cards to wrap to next line */
                }

                .col {
                    width: 50%; /* Each column takes half of the row */
                    padding: 0.5rem; /* Add some spacing between columns */
                }

                .cards {
                    height: auto; /* Allow cards to adjust height based on content */
                }

                .txt p {
                    font-size: 16px !important;
                    text-align: center !important;
                }

                .col-3, .col-10 {
                    flex: 0 0 40%; /* Adjust column width within cards */
                }

                .modal-dialog {
                    max-width: 90%; /* Adjust modal width for smaller screens */
                }

                /* Adjust modal content for smaller screens */
                .modal-body .row {
                    flex-direction: column;
                }

                /* Ensure images and videos are responsive */
                img, video {
                    max-width: 100%;
                    height: auto;
                }

            }


        </style>


        <div class="containers">
            <div class="row-card">
                <div class="row"style="padding-top: 1rem;padding-left: 2rem;padding-right 2rem;padding-right: 2rem;height: 2rem;">
                    <div class="col">
                        <a href="#" style="text-decoration: none; color: black;" data-toggle="modal" data-target="#ceoModel">
                            <div class="cards" style="background-color: #f0f1f5;  height: 5rem">
                                <div class="row " >
                                    <!--                                    <div class="col-2 d-flex align-items-center">
                                                                            <img src="assets/img/system/carousel/ceo.png" width="40px" height="40px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1rem;">CEO's Message</p>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <!-- Bootstrap Modal -->
                    <div class="modal fade" id="ceoModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">CEO's Message</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col">

                                            <div class="row">
                                                <div class="text-left">
                                                    <div class="col text-left" style="padding-left: 9px; padding-top: 2px">
                                                        <img src="assets/img/system/mgt/Jayathilake_ceo.jpg" width="30%">
                                                    </div>
                                                    <div class="row col text-left myfont">
                                                        <a style="font-size: 1rem; font-weight: 600; color: #000">Mr. Jayathilake Bandara</a><br>
                                                        <a style="font-size: 1rem; font-weight: 600; color: #000">General Manager / CEO</a>
                                                    </div>

                                                </div>  
                                            </div>
                                            <div class="row">
                                                <div class="ceo_msg_div">
                                                    <div id="ceo_msg" class="ceo_msg_div col-lg-12 responsive-img text-left custom-scrollbar" style="max-height: 200px; overflow-y: auto; padding-left: 10px; padding-top: 10px">
                                                        <h5 style="padding-top: 2px">Dear Fintrex Family,</h5>
                                                        <h6>Hope all of you and your families are safe, take care</h6>
                                                        <h6>I am writing this message to refresh all of you on the importance of discipline, adhering to our company policies, procedures, ethical self-conduct and good governance.</h6>

                                                        <div id="read_more_content" class="responsive-img" style="height: auto; overflow-y: hidden;">
                                                            <h6> A disciplined workforce is always considered as the backbone of any organization. At Fintrex, we consider these attributes as fundamental requirement of all of us. In order to maintain a disciplined workforce and an environment, we have a well-formulated Code of Conducts, Terms, and Conditions stated in the Letter of Appointment and the Disciplinary Policy uploaded into the Intranet, etc. Please ensure to read them, be familiar and live by the best practices. It will uphold you and the company on our journey to be within Top 5 Finance companies within next 5 years.</h6>

                                                            <h6>This note is raised as few of our staff members has been found guilty and severely warned during past few weeks over misconducts, procedure violations, misappropriation of funds etc etc. Please note that Management will not tolerate any misconduct of staff and such wrongful actions will be viewed very seriously, and dealt with a Zero tolerance policy. The disciplinary actions will be taken against such staff, including termination of employment.</h6>

                                                            <h6>Hence you all are kindly requested to conduct yourselves professionally with the highest standards within the company and in the society at large, since you are the brand ambassadors of Fintrex Finance.</h6>

                                                            <h6>I wish all of you good health and success.</h6>

                                                            <h6>Warm regards,</h6>

                                                            <h5>Jayathilake Bandara</h5>

                                                            <h5>General Manager / CEO</h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col">
                                            <video id="yourVideoElementId" width="100%" height="100%" controls>
                                                <source src="assets/img/system/carousel/roadBillion.mp4" type="video/mp4">
                                            </video>
                                        </div>
                                        <hr>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col">
                        <a href="view_policies" style="text-decoration: none; color: black;">
                            <div class="cards" style="background-color: #f0f1f5;height: 5rem">
                                <div class="row " >
                                    <!--                                    <div class="col">
                                                                            <img src="assets/img/system/carousel/policy.png" width="40px" height="40px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1.2rem;">Policy</p>
                                    </div>

                                </div>
                            </div>
                        </a>

                    </div>
                    <div class="col">
                        <a href="#" id="view_dele" style="text-decoration: none; color: black;">
                            <div class="cards" style="background-color: #f0f1f5;height: 5rem">
                                <div class="row">
                                    <!--                                    <div class="col-2">
                                                                            <img src="assets/img/system/carousel/delegation.png" width="50px" height="50px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1rem;">Delegation Authority</p>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>



                    <div class="col">
                        <a href="#" id="view_alco" style="text-decoration: none; color: black;">
                            <div class="cards" style="background-color: #f0f1f5;height: 5rem">
                                <div class="row ">
                                    <!--                                    <div class="col-3">
                                                                            <img src="assets/img/system/carousel/alco.png" width="40px" height="40px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1rem;">Alco Rates</p>
                                    </div>

                                </div>
                            </div>
                        </a>

                    </div>
                    <div class="col">
                        <a href="#"id="ideas-link" style="text-decoration: none; color: black;">
                            <div class="cards" style="background-color: #f0f1f5;height: 5rem">
                                <div class="row " >
                                    <!--                                    <div class="col-3">
                                                                            <img src="assets/img/system/carousel/idea.png" width="40px" height="40px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1.2rem;text-align: center;">Ideas</p>
                                    </div>

                                </div>
                            </div>
                        </a>

                    </div>
                    <div class="col">
                        <a href="#" id="whistleblowing-link" style="text-decoration: none; color: black;">

                            <div class="cards"style="background-color: #f0f1f5;height: 5rem">
                                <div class="row">
                                    <!--                                    <div class="col-2">
                                                                            <img src="assets/img/system/carousel/whis.png" width="30px" height="30px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1rem;">Whistleblowing Policy</p>
                                    </div>

                                </div>
                            </div>
                        </a>

                    </div>
                    <div class="col">
                        <a href="#" id="select-link" style="text-decoration: none; color: black;">

                            <div class="cards"style="background-color: #f0f1f5;height: 5rem">
                                <div class="row " >
                                    <!--                                    <div class="col">
                                                                            <img src="assets/img/system/carousel/whis.png" width="40px" height="40px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1rem;">FD,FS,F&M</p>
                                    </div>

                                </div>
                            </div>
                        </a>

                    </div>
                    <div class="col">
                        <a href="#" id="incident-link" style="text-decoration: none; color: black;">

                            <div class="cards"style="background-color: #f0f1f5;height: 5rem">
                                <div class="row " >
                                    <!--                                    <div class="col">
                                                                            <img src="assets/img/system/carousel/inci.png" width="40px" height="40px" alt="alt" />
                                                                        </div>-->

                                    <div class="txt" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1rem;text-align: center;">Incident</p>
                                    </div>

                                </div>
                            </div>
                        </a>

                    </div>


                </div>
            </div>    
        </div>




        <div class="row" style="display: flex; justify-content: space-between;margin-top: 5rem;background-color: #f3f3f3;padding: 40px 40px;" id="details">


            <section id="news" style="flex: 1;" class="news" >
                <div class="col-md-12 col-sm-12 col-xs-12" >
                    <div class="content" style="width: 105%; padding-top: 10px; height: 650px;">
                        <div class="contents" >
                            <div class="section-headline text-center">
                                <h4 style="color: #662D87!important; opacity: 1">News</h4>
                            </div>
                        </div>
                        <div class="cardss" >
                            <div class="row" id="newsContainer">
                                <!-- News items will be dynamically added here -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="modal fade" id="newsModal" tabindex="-1" role="dialog" aria-labelledby="newsModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="newsModalLabel">News Title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p class="description"></p>
                            <div class="image-container"><!-- Container for images --></div>
                        </div>
                    </div>
                </div>
            </div>







            <section id="announce" style="flex: 1;" class="announce">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="content" style="width: 105%; padding-top: 10px; height: 650px;">
                        <div class="contents">
                            <div class="section-headline text-center">
                                <h4 style="color: #662D87 !important; opacity: 1">Announcement</h4>
                            </div>
                        </div>
                        <div style="max-height: 35rem; overflow-y: scroll;">
                            <table class="table table-hover cell-border" id="tbl3" style="width: 100%; padding-top: 10px; height: 170px">
                                <thead>
                                    <tr>

                                    </tr>
                                </thead>
                                <tbody style="font-size: 13px;">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>





            <section id="tele" style="flex: 1; " class="tele">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="content"  style="width:105%;padding-top: 10px;height:650px">
                        <div class="contents" >
                            <div class="section-headline text-center">
                                <h4 style="color: #662D87!important;opacity: 1">Telephone</h4>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center" style="margin-top: 1rem;">
                            <div class="cards" style="width: 65%;background-color: #E5D4E7;"data-toggle="modal" data-target="#empModel">

                                <div class="row"  >
                                    <div class="txt text-center" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1.2rem;">Search Employee</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row d-flex justify-content-center" style="margin-top: 1rem;">
                            <div class="cards" style="width:65%;background-color: #E5D4E7;"data-toggle="modal" data-target="#dptModel">
                                <div class="row d-flex justify-content-center" style="margin-top: 10px;" >
                                    <img src="assets/img/system/carousel/office.png" style="width: 70%;" alt="alt" />
                                </div>
                                <div class="row"  >
                                    <div class="txt text-center" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1.2rem;">Departments</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row d-flex justify-content-center" style="margin-top: 1rem;">
                            <div class="cards" style="width:65%;background-color: #E5D4E7;"data-toggle="modal" data-target="#brnchModel">
                                <div class="row d-flex justify-content-center" style="margin-top: 10px;" >
                                    <img src="assets/img/system/carousel/branch.png" style="width: 65%;" alt="alt" />
                                </div>
                                <div class="row d-flex justify-content-center"  >
                                    <div class="txt text-center" style="margin-top: 5px; font-family: 'Exo 2', sans-serif; font-weight: 1000">
                                        <p style="font-size: 1.2rem;">Branches</p>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>
            </section>  
            <div class="modal" id="empModel">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Employee's Contact Details</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div id="datatable" class="col-lg-10 offset-lg-1 col-xl-12 offset-xl-0 col-12" style="margin-top: 5px;">

                                <div class="card-block p-b-0">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="emp">
                                            <thead>
                                                <tr>
                                                    <th>Employee Name</th>
                                                    <th >Designation</th>
                                                    <th >Branch</th>
                                                    <th >Telephone No</th>
                                                    <th >Extension</th>
                                                    <th >Email Address </th>
                                                    <th >Mobile No</th>
                                                    <!--<th >department</th>-->
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal" id="brnchModel">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Employee's Contact Details</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div id="datatable" class="col-lg-10 offset-lg-1 col-xl-12 offset-xl-0 col-12" style="margin-top: 5px;">


                                <div class="row">
                                    <div style="margin-top: -12px;">
                                        <select class="form-control-sm pull-right" style="width: 300px;" id="brnch">

                                        </select>
                                    </div>
                                </div>


                                <div class="card-block p-b-0">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="brnc">
                                            <thead>
                                                <tr>
                                                    <th>Employee Name</th>
                                                    <th >Designation</th>
                                                    <th >Telephone No</th>
                                                    <th >Extension</th>
                                                    <th >Email Address </th>
                                                    <th >Mobile No</th>
                                                    <!--<th >department</th>-->
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal" id="dptModel">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Employee's Contact Details</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div id="dpttable" class="col-lg-10 offset-lg-1 col-xl-12 offset-xl-0 col-12" style="margin-top: 5px;">

                                <div class="row">
                                    <div style="margin-top: -12px;">
                                        <select class="form-control-sm pull-right" style="width: 300px;" id="dptmnt">

                                        </select>
                                    </div>
                                </div>


                                <div class="card-block p-b-0">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="dprttable">
                                            <thead>
                                                <tr>                                                       
                                                    <!--                                                        <th >id</th>-->
                                                    <th >Employee Name</th>
                                                    <th >Designation</th>
                                                    <th >Telephone No</th>
                                                    <th >Extension</th>
                                                    <th >Email Address </th>
                                                    <th >Mobile No</th>
                                                    <!--<th >department</th>-->

                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <section id="bday" style="flex: 1; " class="bday">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="content" style="width: 105%; padding-top: 10px; height: 650px; overflow: hidden;">
                        <div class="contents">
                            <div class="section-headline text-center">
                                <h4 style="color: #662D87!important; opacity: 1">Birthdays</h4>
                            </div>
                        </div>
                        <div style="max-height: 35rem; overflow-y: scroll;">
                            <table class="table table-hover cell-border" id="tbl4" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <!-- Add table headers here -->
                                    </tr>
                                </thead>
                                <tbody style="font-size: 13px;">
                                    <!-- Add table rows and data here -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>



        </div> 
        <!--        <div class="row">
                    <div class="card-notice">
                        <div class="section-headline text-center">
                            <h2 style="color: #662D87!important; opacity: 1; font-family: 'Goldman', sans-serif;">Forms</h2>
                            <div class="forms" id="forms"></div>
                        </div>
                    </div>
        
                </div>-->
        <div class="row">
            <section class="game-section">
                <h1 class="line-title">Promotions</h1>
                <div class="owl-carousel custom-carousel owl-theme" id="promo">
                    <div class="item active" style="background-image: url('');">
                        <div class="item-desc">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                </div>
            </section>
        </div>



        <div id="contact" class="contact-area" style="margin-top: 1rem">
            <div class="contact-inner area-padding">
                <div class="contact-overly"></div>
                <div class="container" style="font-family: myFontB">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h1>Contact us</h1>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 1rem">
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="fa fa-mobile"></i>
                                    <p style="font-size: smaller">
                                        General : 0117 977 977 <br>
                                        <span>Monday-Friday (8.30 am-5pm)</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="fa fa-envelope-o"></i>
                                    <p style="font-size: smaller"> 
                                        Email: info@fintrexfinance.com<br>
                                        <span><a title="Fintrex Finance Limited Official Page"  onclick="window.open('http://fintrexfinance.com/home', '_blank')" href="">Web: www.fintrexfinance.com</a></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="contact-icon text-center">
                                <div class="single-icon">
                                    <i class="fa fa-map-marker"></i>
                                    <p style="font-size: smaller">
                                        Location: No 851, <br>Dr. Danister De Silva Mawatha (Baseline Road),<br>Colombo 14.<br>
                                        <!--<span>Sri Lanka.</span>-->
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row"style="margin-top: 1rem">

                        <!-- Start Google Map -->
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <!-- Start Map -->

                            <iframe src="https://www.google.com/maps/d/embed?mid=1Y5YIrb0tLpbp9CfKRigZOHYRPIH3VQGG" width="450" height="250" frameborder="0" style="border:0" allowfullscreen=""></iframe>
                            <!-- End Map -->
                        </div>
                        <!-- End Google Map -->
                        <div class="col-md-6 col-sm-6 col-xs-6" style="padding-left: 6rem">
                            <div class="" style="font-family: myFontB; font-size: smaller">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-4 col-xs-12">
                                            <div class="footer-content">
                                                <div class="footer-head">
                                                    <div class="footer-logo">
                                                        <h2 style="color: #6c4892"><span>FINTREX Finance</span> </h2>

                                                    </div>

                                                    <p>The future road map for Fintrex is to embrace technology in order to improve efficiencies and cater to the emerging business transaction trends and expectations of modern clients.</p>


                                                </div>
                                            </div>
                                        </div>  
                                        <div class="col-md-6 col-sm-4 col-xs-12" >
                                            <div class="footer-content">
                                                <div class="footer-head" style="margin-left: 5rem;">
                                                    <h4 style="font-family: myFontB">INFORMATION</h4>
                                                    <p>
                                                    </p>
                                                    <div class="footer-contacts">
                                                        <p><span>Tel:</span> 0117 977 977</p>
                                                        <p><span>Email:</span> info@fintrexfinance.com</p>
                                                        <p><span>Working Hours:</span> 8.30 am-5pm</p>

                                                        <div class="footer-icons">
                                                            <div class="row">
                                                                <ul>
                                                                    <li>
                                                                        <a title="Google" onclick="window.open('https://www.google.com/search?sxsrf=ALeKk025HUTDREQ_xXp2m2ejt1zgG4UPwg:1591073088834&q=fintrex+finance&spell=1&sa=X&ved=2ahUKEwjK2ZWSqeLpAhXvxzgGHYVLBU4QBSgAegQIChAl&biw=1366&bih=657', '')">
                                                                            <i class="fa fa-google"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a onclick="window.open('https://www.linkedin.com/company/melsta-regal-finance-ltd', '')" title="Linked In">
                                                                            <i class="fa fa-linkedin-square"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a title="Facebook" onclick="window.open('https://www.facebook.com/fintrexfinancelimited/', '')">
                                                                            <i class="fa fa-facebook"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>  


                                    </div>
                                </div>
                            </div>                                  
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-area-bottom" style="background-color: #daf5d9">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="copyright text-center">
                            <p>
                                <br> &copy; Copyright <strong>Fintrex</strong>. All Rights Reserved <br>
                            </p>
                        </div>
                        <div class="credits">

                            <!--All <a href="https://bootstrapmade.com/">gfsafdgadd</a>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <div class="modal fade" id="ideas-modal" tabindex="-1" role="document">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">    
                        <div class="col-sm-12">
                            <h5 class="text-center col-md-11" style="font-weight: 600; font-family: myFontB; padding-left: 60px">Drop Your Great Ideas Here</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
                        </div>
                    </div>
                    <div class="modal-body table-responsive" style="font-size: 12px; font-family: myFont">
                        <div class="row" style="font-family: myFont">
                            <div class="col-lg-3" style="font-size: 12px;">
                                <input id="idea_epfpc" onkeyup=""  class="form-control" type="number" placeholder="Enter your EPF" style="font-size: 12px;">
                                <div class="bbb"style="margin-top:0.5rem;margin-bottom: 0.5rem;"><button id="savec" type="button" class="btn btn-outline-secondary">Search</button></div>
                            </div>
                            <div class="col-lg-4">
                                <h4 id="emp_namepc" style="font-size: 12px; font-weight: 600; font-family: myFont"></h4>
                            </div>
                            <div class="col-lg-4">
                                <h4 id="departmentpc" style="font-size: 12px; font-weight: 600; font-family: myFont"></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <textarea id="ideas-fieldc" class="form-control" placeholder="Describe Your Ideas Here" style="height: 100px; font-size: 12px;"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                &nbsp;
                                <select class="form-control-sm pull-left" style="width: 300px;" id="ideaResult">

                                </select>
                            </div>

                        </div>
                        <h4 id="save_msgpc" class="text-center" style="font-weight: 600; font-size: medium"></h4>
                    </div>
                    <div class="modal-footer">
                        <button id="save_ideas_btn" type="submit" name="save_ideas_btn" class="btn btn-primary btn-sm">Submit</button>
                        <button type="button" id="close_ideas_btn" class="btn btn-warning btn-sm" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--add policy modal-->
        <div class="modal fade" id="add_pol_modal" tabindex="-1" role="document">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">    
                        <div class="col-sm-12">
                            <h5 class="text-center col-md-11" style="font-weight: 600; font-family: myFontB; padding-left: 60px">Whistleblowing Notice</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
                        </div>
                    </div>
                    <div class="modal-body table-responsive" style="font-size: 12px;  font-family: myFont">
                        <div class="row" style="font-family: myFont">
                            <div class="col-lg-3" style="font-size: 12px;">
                                <input id="idea_epfwh" onkeyup=""  class="form-control" type="number" placeholder="Enter your EPF" style="font-size: 12px;">
                                <div class="bbb"style="margin-top:0.5rem;margin-bottom: 0.5rem;"><button id="savew" type="button" class="btn btn-outline-secondary">Search</button></div>
                            </div>
                            <div class="col-lg-4">
                                <h4 id="emp_namewi" style="font-size: 12px; font-weight: 600; font-family: myFont"></h4>
                            </div>
                            <div class="col-lg-4">
                                <h4 id="departmentwi" style="font-size: 12px; font-weight: 600; font-family: myFont"></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                &nbsp;
                                <!--<h4 style="font-size: small; font-weight: 600; font-family: myFontB">Describe Your Idea Here</h4>-->
                                <textarea id="whistle_field" class="form-control" placeholder="Describe Here" style="height: 100px; font-size: 12px;">
                                    
                                </textarea>
                            </div>

                        </div>



                        <h4 id="save_whistle" class="text-center" style="font-weight: 600; font-size: medium"></h4>
                    </div>

                    <div class="modal-footer">
                        <button id="save_whistle_btn" type="submit" name="save_policy_btn" class="btn btn-primary btn-sm">Submit</button>
                        <button type="button" id="close_btnp" class="btn btn-warning btn-sm" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div class="modal fade" id="add_inc_modal" tabindex="-1" role="document">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">    
                        <div class="col-sm-12">
                            <h5 class="text-center col-md-11" style="font-weight: 600; font-family: myFontB; padding-left: 60px">Incident</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> 
                        </div>
                    </div>
                    <div class="modal-body table-responsive" style="font-size: 12px;  font-family: myFont">
                        <div class="row" style="font-family: myFont">
                            <div class="col-lg-3" style="font-size: 12px;">
                                <input id="idea_epfi" onkeyup=""  class="form-control" type="number" placeholder="Enter your EPF" style="font-size: 12px;">
                                <div class="bbb"style="margin-top:0.5rem;margin-bottom: 0.5rem;"><button id="savei" type="button" class="btn btn-outline-secondary">Search</button></div>
                            </div>
                            <div class="col-lg-4">
                                <h4 id="emp_namei" style="font-size: 12px; font-weight: 600; font-family: myFont"></h4>
                            </div>
                            <div class="col-lg-4">
                                <h4 id="departmenti" style="font-size: 12px; font-weight: 600; font-family: myFont"></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                &nbsp;
                                <!--<h4 style="font-size: small; font-weight: 600; font-family: myFontB">Describe Your Idea Here</h4>-->
                                <textarea id="inc_field" class="form-control" placeholder="Describe Here" style="height: 100px; font-size: 12px;">
                                    
                                </textarea>
                            </div>

                        </div>



                        <h4 id="saveinc" class="text-center" style="font-weight: 600; font-size: medium"></h4>
                    </div>

                    <div class="modal-footer">
                        <button id="save_inc_btn" type="submit" name="save_policy_btn" class="btn btn-primary btn-sm">Submit</button>
                        <button type="button" id="close_btnp" class="btn btn-warning btn-sm" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div class="modal fade" id="select_modal" tabindex="-1" role="document">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">

                    <div class="modal-body table-responsive" style="font-size: 12px;  font-family: myFont">

                        <div class="row" style="font-family: myFont">
                            <div class="col">
                                <a href="deposits" class="btn btn-secondary btn-lg active custom-btn" role="button" aria-pressed="true">Deposit Rates</a>
                            </div>
                            <div class="col">
                                <a href="fina_statement" class="btn btn-secondary btn-lg active custom-btn" role="button" aria-pressed="true">Financial Statements</a>
                            </div>
                            <div class="col">
                                <a href="form_mandates" class="btn btn-secondary btn-lg active custom-btn" role="button" aria-pressed="true">Forms & Mandates</a>
                            </div>
                        </div>





                        <h4 id="save_msgp" class="text-center" style="font-weight: 600; font-size: medium"></h4>
                    </div>


                </div>

            </div>
        </div>


        <div class="modal fade" id="promoModal" tabindex="-1" role="dialog" aria-labelledby="promoModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="promoModalLabel"></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="modalImage" class="img-fluid" alt="Image">
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <img src="" class="img-fluid" alt="Lightbox Image" style="width: auto;height: auto;">
                    </div>
                </div>
            </div>
        </div>





        <div class="modal fade" id="bdaymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="modalTitle"></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="modalContent">
                            <div class="row">
                                <div style="background-image: url('assets/img/system/birthday1.jpg'); background-size: cover; height: 500px; position: relative; text-align: center;">
                                    <div style="font-family: 'Kalnia', serif;position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color: white;">
                                        <h4 style="margin-top: 15rem;">Today  is a SPECIAL DAY for us Since it's your BIRTHDAY.....</h4>
                                        <h5>Hi <span id="callNameText"></span>,</h5>
                                        <p>On this Special Day<br>May all your Dreams come true.</p>
                                        <p>We wish you a long life filled with Health, Wealth, and Happiness!</p>
                                        <p>Best Wishes,<br>From Fintrex Family</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="background-color: #f0f1f5">
                                <div class="row" style="font-family: myFont;margin-top: 1rem">
                                    <h4>Wish Him/Her Here!!!</h4>
                                    <div class="col-lg-3" style="font-size: 12px;">
                                        <input id="name" class="form-control" type="text" placeholder="Enter your Name" style="font-size: 12px;">
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        &nbsp;
                                        <!--<h4 style="font-size: small; font-weight: 600; font-family: myFontB">Describe Your Idea Here</h4>-->
                                        <input id="wishes" class="form-control" placeholder="Drop You Wish Here" style="height: 50px; font-size: 12px;">


                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button id="save_wish_btn" type="submit" name="save_policy_btn" class="btn btn-primary btn-sm">Wish</button>
                                    <button type="button" id="close_btnp" class="btn btn-warning btn-sm" data-dismiss="modal">Close</button>
                                </div>

                            </div>

                            <div class="row" style="font-family: myFont;margin-top: 1rem">
                                <h4>Warm Wishes From Fintrex Family</h4>
                                <div class="row d-flex align-items-center justify-content-center" id="sysss" style="margin-top: 3rem;">

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div></div>
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
            fetch('form/form-load')
                    .then(response => response.json())
                    .then(data => {
                        const listContainer = document.getElementById('forms');
                        const ul = document.createElement('ul');
                        data.forEach(item => {
                            const li = document.createElement('li');
                            const a = document.createElement('a');
                            a.textContent = item.name + ' - ' + item.subtype + ' Department ';
                            a.href = item.link;
                            a.target = "_blank";
                            // Set inline styles for the <li> element
                            a.style.fontSize = '1.2rem';
                            a.style.fontFamily = "Roboto Slab, serif";
                            // Add more inline styles as needed
                            li.appendChild(a);
                            ul.appendChild(li);
                        });
                        listContainer.appendChild(ul);
                    })
                    .catch(error => console.error('Error fetching list:', error));






            function LoadPromo() {
                fetch('promotion/images')
                        .then(response => response.json())
                        .then(images => {
                            let promoCarousel = $("#promo");
                            promoCarousel.empty(); // Clear existing content

                            // Sort the images array in reverse order (assuming images have a timestamp or some identifier)
                            images = images.reverse();
                            for (let i = 0; i < images.length; i++) {
                                let itemContainer = $("<div>").addClass("item");
                                // You can customize the content and style as needed
                                let imageUrl = 'promotion/path/view/' + images[i].path;
                                let itemDesc = $("<div>").addClass("item-desc");
                                // Create the title element and add margin-top
                                let title = $("<h3>").text(images[i].heading).css("margin-top", "10px");
                                let description = $("<p>").text(images[i].para);
                                // Add "See More" hyperlink
                                let seeMoreLink = $("<a>").text("See More").attr("href", "#").addClass("see-more-link");
                                description.append(seeMoreLink);
                                itemDesc.append(title, description);
                                itemContainer.css("background-image", "url(" + imageUrl + ")");
                                itemContainer.append(itemDesc);
                                promoCarousel.append(itemContainer);
                            }

                            promoCarousel.owlCarousel({
                                autoWidth: true,
                                loop: true,
                                nav: true,
                                navText: [
                                    "<i class='fa fa-caret-left'></i>",
                                    "<i class='fa fa-caret-right'></i>"
                                ],
                                autoplay: true,
                                autoplayHoverPause: true,
                                autoplayTimeout: 2000, // Set the autoplay speed to 5 seconds (adjust the value as needed)
                                responsive: {
                                    0: {
                                        items: 1
                                    },
                                    600: {
                                        items: 3
                                    },
                                    1000: {
                                        items: 7
                                    }
                                }
                            });
                            // Add click event for "See More" links
                            $(".see-more-link").click(function (e) {
                                e.preventDefault();
                                let imagePath = $(this).closest(".item").css("background-image").replace(/url\(['"]?(.*?)['"]?\)/i, "$1");
                                let imageHeading = $(this).closest(".item").find("h3").text();
                                openModal(imagePath, imageHeading);
                            });
                        });
            }

            function openModal(imagePath, imageHeading) {
                // Set the image source in the modal
                $("#modalImage").attr("src", imagePath);
                // Set the modal title with the image heading
                $("#promoModalLabel").text(imageHeading);
                // Open the Bootstrap modal
                $("#promoModal").modal("show");
            }

            // Call the LoadPromo function when the document is ready
            $(document).ready(function () {
                LoadPromo();
            });
            // Additional code for item click handling
            $(document).ready(function () {
                // Use event delegation to handle dynamically added elements
                $(".custom-carousel").on("click", ".item", function () {
                    $(".custom-carousel .item").not($(this)).removeClass("active");
                    $(this).toggleClass("active");
                });
            });
            document.getElementById('savec').addEventListener('click', function () {
                var epf = document.getElementById('idea_epfpc').value;
                $.post('idea/get-epf', {epf: epf}, function (data) {
                    for (var i = 0; i < data.length; i++) {
                        document.getElementById("emp_namepc").innerHTML = data[i].callname;
                        document.getElementById("departmentpc").innerHTML = data[i].department;
                    }
                }
                );
            });
            // Variables to store employee name and department
            document.getElementById('savew').addEventListener('click', function () {
                var epf = document.getElementById('idea_epfwh').value;

                $.post('idea/get-epf', {epf: epf}, function (data) {
                    for (var i = 0; i < data.length; i++) {
                        // Assign name and department
                        var employeeName = data[i].callname;
                        var department = data[i].department;

                        // Update UI with name and department
                        document.getElementById("emp_namewi").innerHTML = employeeName;
                        document.getElementById("departmentwi").innerHTML = department;
                    }
                });
            });
            document.getElementById('savei').addEventListener('click', function () {
                var epf = document.getElementById('idea_epfi').value;

                $.post('idea/get-epf', {epf: epf}, function (data) {
                    for (var i = 0; i < data.length; i++) {
                        // Assign name and department
                        var employeeName = data[i].callname;
                        var department = data[i].department;

                        // Update UI with name and department
                        document.getElementById("emp_namei").innerHTML = employeeName;
                        document.getElementById("departmenti").innerHTML = department;
                    }
                });
            });

            document.getElementById('save_whistle_btn').addEventListener('click', function () {
                // Retrieve whistle description
                var whistleDescription = document.getElementById('whistle_field').value;

                // Retrieve employee name and department from UI
                var employeeName = document.getElementById('emp_namewi').innerText;
                var department = document.getElementById('departmentwi').innerText;

                // Send data to server
                $.ajax({
                    type: 'POST',
                    url: 'whistle/submitWhistle',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        employeeName: employeeName,
                        department: department,
                        whistleDescription: whistleDescription
                    }),
                    success: function (response) {
                        alert(response);
                    }
                });
            });
            document.getElementById('save_inc_btn').addEventListener('click', function () {
                // Retrieve whistle description
                var incDescription = document.getElementById('inc_field').value;

                // Retrieve employee name and department from UI
                var employeeName = document.getElementById('emp_namei').innerText;
                var department = document.getElementById('departmenti').innerText;

                // Send data to server
                $.ajax({
                    type: 'POST',
                    url: 'incident/submitInc',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        employeeName: employeeName,
                        department: department,
                        incDescription: incDescription
                    }),
                    success: function (response) {
                        alert(response);
                    }
                });
            });


            //        document.getElementById('save_whistle').addEventListener('click', function () {
            //            //                console.log();
            //            var epf = document.getElementById('idea_epfwh').value;
            //            $.post('idea/get-epf', {epf: epf}, function (data) {
            //                for (var i = 0; i < data.length; i++) {
            //                    document.getElementById("emp_namewi").innerHTML = data[i].callname;
            //                    document.getElementById("departmentwi").innerHTML = data[i].department;
            //                }
            //            }
            //            );
            //        });
            $('#save_ideas_btn').click(function () {
                const formData = new FormData();
                formData.append('epf', $('#idea_epfpc').val().trim());
                formData.append('employee', $('#emp_namepc').text().trim());
                formData.append('department', $('#departmentpc').text());
                formData.append('idea', $('#ideas-fieldc').val());
                formData.append('result', $('#ideaResult').val());
                return fetch('idea/save-idea', {
                    method: 'POST',
                    body: formData
                }).then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    } else {
                        Swal.fire('Successful!', 'Employee has been successfully saved');
                        clearForms();
                        $('#ideas-modal').modal('hide');
                    }
                    return response.json();
                });
            });
            function clearForms() {
                $('#ideas-modal').find('input[type!=search]').val('');
                $('#ideas-modal').find('input[type!=search]').val('');
                $('#ideas-modal').find('select').each(function () {
                    if ($(this).data('select')) {
                        if ($(this).data('select').ajax) {
                            $(this).data('select').data.data = [];
                        }
                        $(this).data('select').set('');
                    }
                });
            }


            $(document).ready(function () {
                $('#ceoModel').on('hidden.bs.modal', function () {
                    var video = document.getElementById('yourVideoElementId'); // replace 'yourVideoElementId' with the actual ID of your video element
                    video.pause();
                });
            });
            window.onload = function () {
                toggleReadMore();
            };
            function toggleReadMore() {
                var readMoreContent = document.getElementById("read_more_content");
                var ceoMsg = document.getElementById("ceo_msg");

                if (readMoreContent.style.overflowY === "hidden") {
                    readMoreContent.style.overflowY = "auto";
                    ceoMsg.classList.add("custom-scrollbar");
                } else {
                    readMoreContent.style.overflowY = "hidden";
                    ceoMsg.classList.remove("custom-scrollbar");
                    ceoMsg.style.height = "125px";
                }
            }




            var ideaResult = new SlimSelect({
                select: '#ideaResult',
                placeholder: "~Select~",
                ajax: function (search, callback) {
                    fetch('idea/search-result', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });
            var brnch = new SlimSelect({
                select: '#brnch',
                placeholder: "Branch",
                ajax: function (search, callback) {
                    fetch('branch/search-branch', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });
            $('#brnch').data('select', brnch);
            var filter = '';
            filter = "2";
            $('#brnch').change(function () {

                if ($(this).val()) {
                    filter = $(this).val();
                    brnchtable.ajax.reload();
                }
            });
            $.fn.dataTable.ext.errMode = 'none';
            var brnchtable = $('#brnc').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": false,
                "autoWidth": false,
                "bFilter": false,
                "bPaginate": false,
                "bLengthChange": false,
                "bAutoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[0, "desc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "branch/emp",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        d.filter = filter;
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }

                },
                "columns": [
                    //                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "callname"},
                    {"data": "desig"},
                    {"data": "officeTelNo"},
                    {"data": "extNo"},
                    {"data": "email"},
                    {"data": "officeMobileNo"},
                    {"data": "brnch", "visible": false}
                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                }
            });
            var emptable = $('#emp').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": false,
                "autoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[0, "desc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "branch/search-emp",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        d.filter = filter;
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }

                },
                "columns": [
                    //                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "callname"},
                    {"data": "desig"},
                    {"data": "brnch"},
                    {"data": "officeTelNo"},
                    {"data": "extNo"},
                    {"data": "email"},
                    {"data": "officeMobileNo"},
                    {"data": "brnch", "visible": false}
                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                },
                "rowCallback": function (row, data, index) {
                    // Apply alternating row colors
                    $(row).toggleClass('odd', index % 2 === 0);
                    $(row).toggleClass('even', index % 2 !== 0);
                }

            });
            var dptmnt = new SlimSelect({
                select: '#dptmnt',
                placeholder: "Department",
                ajax: function (search, callback) {
                    fetch('department/search-department', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });
            var dprtble = $('#dprttable').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": false,
                "autoWidth": false,
                "bFilter": false,
                "bPaginate": false,
                "bLengthChange": false,
                "bAutoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[0, "desc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "department/dep",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        d.filter = filter;
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }

                },
                "columns": [
                    //                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "callname"},
                    {"data": "desig"},
                    {"data": "officeTelNo"},
                    {"data": "extNo"},
                    {"data": "email"},
                    {"data": "officeMobileNo"},
                    {"data": "deprt", "visible": false}

                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                }
            });
            $('#dptmnt').data('select', dptmnt);
            var filter = '';
            filter = "1";
            $('#dptmnt').change(function () {

                if ($(this).val()) {
                    filter = $(this).val();
                    dprtble.ajax.reload();
                }
            });
            $.fn.dataTable.ext.errMode = 'none';
            $(document).ready(function () {
                // Select the link by its ID
                var link = $('#whistleblowing-link');
                // Select the modal by its ID
                var modal = $('#add_pol_modal');
                // Add a click event handler to the link
                link.click(function (event) {
                    event.preventDefault(); // Prevent the default link behavior

                    // Show the modal
                    modal.modal('show');
                });
            });
            $(document).ready(function () {
                // Select the link by its ID
                var link = $('#incident-link');
                // Select the modal by its ID
                var modal = $('#add_inc_modal');
                // Add a click event handler to the link
                link.click(function (event) {
                    event.preventDefault(); // Prevent the default link behavior

                    // Show the modal
                    modal.modal('show');
                });
            });
            $(document).ready(function () {
                // Select the link by its ID
                var link = $('#select-link');
                // Select the modal by its ID
                var modal = $('#select_modal');
                // Add a click event handler to the link
                link.click(function (event) {
                    event.preventDefault(); // Prevent the default link behavior

                    // Show the modal
                    modal.modal('show');
                });
            });
            $(document).ready(function () {
                // Select the link by its ID
                var link = $('#ideas-link');
                // Select the modal by its ID
                var modal = $('#ideas-modal');
                // Add a click event handler to the link
                link.click(function (event) {
                    event.preventDefault(); // Prevent the default link behavior

                    // Show the modal
                    modal.modal('show');
                });
            });
            //Function to hide the <thead> element on page load
            window.addEventListener('load', function () {
                var table = document.getElementById("tbl3");
                if (table) {
                    var thead = table.querySelector("thead");
                    if (thead) {
                        thead.style.display = "none";
                    }
                }
            });
            // Function to hide the <thead> element on page load
            window.addEventListener('load', function () {
                var table = document.getElementById("tbl4");
                if (table) {
                    var thead = table.querySelector("thead");
                    if (thead) {
                        thead.style.display = "none";
                    }
                }
            });
            $(document).ready(function () {
                $("#news-slider").owlCarousel({
                    items: 6,
                    itemsDesktop: [1199, 5],
                    itemsDesktopSmall: [980, 2],
                    itemsMobile: [600, 1],
                    navigation: true,
                    navigationText: ["", ""],
                    pagination: true,
                    autoPlay: true
                });
            });
            $(document).ready(function () {
                $("#pol_submit_div").click(function () {
                    $("#add_pol_modal").modal('show');
                });
            });
            document.getElementById("view_dele").addEventListener("click", function (event) {
                event.preventDefault(); // Prevent the default behavior of following the link

                // Add code here to open the file when the link is clicked.
                // Replace 'your_file_path' with the actual path to the file you want to open.
                window.open('files/dele.pdf', '_blank');
            });
            document.getElementById("view_alco").addEventListener("click", function (event) {
                event.preventDefault(); // Prevent the default behavior of following the link

                // Add code here to open the file when the link is clicked.
                // Replace 'your_file_path' with the actual path to the file you want to open.
                window.open('files/alco.pdf', '_blank');
            });
            // Function to load images and populate the carousel
            function loadNews() {
                fetch('news/images')
                        .then(response => response.json())
                        .then(newsData => {
                            newsData.sort((a, b) => b.id - a.id);
                            const newsContainer = document.getElementById('newsContainer');
                            newsContainer.innerHTML = ''; // Clear existing content

                            newsData.forEach(newsItem => {
                                const col10 = document.createElement('div');
                                col10.classList.add('col-10');
                                col10.classList.add('news-item'); // Add a class for easier event handling

                                col10.addEventListener('click', function () {
                                    fetch('news/' + newsItem.id)
                                            .then(response => response.json())
                                            .then(resp => resp.data)
                                            .then(newsDetail => {
                                                const modal = $('#newsModal');
                                                modal.find('.modal-title').text(newsItem.heading); // Set modal title to the heading
                                                modal.find('.modal-title').css('font-family', "'Libre Baskerville', serif"); // Set font-family for modal title

                                                // Set the modal description
                                                const description = modal.find('.modal-body .description');
                                                description.text(newsDetail.para); // Set the description text using newsDetail.para
                                                description.css('font-family', "'Crimson Text', serif"); // Set font-family for modal body text
                                                description.css('font-size', '1rem');
                                                description.css('text-align', 'center');

                                                // Set the modal image source
                                                const imageContainer = modal.find('.modal-body .image-container');
                                                imageContainer.empty(); // Clear existing images

                                                for (let i = 0; i < newsDetail.images.length; i++) {
                                                    const imageData = newsDetail.images[i];
                                                    const image = document.createElement('img');
                                                    const imageUrl = 'news/path/newsss/' + imageData.path;
                                                    image.src = imageUrl;
                                                    image.style.width = '30%'; // Set the initial width for the thumbnail
                                                    imageContainer.append(image);
                                                    // Add lightbox functionality
                                                    image.addEventListener('click', function () {
                                                        // Show the modal
                                                        const imageModal = $('#imageModal');
                                                        imageModal.modal('show');

                                                        // Get the modal body and image element
                                                        const modalBody = imageModal.find('.modal-body');
                                                        const modalImage = modalBody.find('img');

                                                        // Set the source of the lightbox image
                                                        modalImage.attr('src', imageUrl);

                                                        // Set the width for the modal (adjust the value as needed)
                                                        imageModal.find('.modal-dialog').css('max-width', '60%'); // Set your desired width, e.g., '80%'
                                                    });


                                                }


                                                modal.modal('show');
                                            });
                                });
                                const txtDiv = document.createElement('div');
                                txtDiv.classList.add('txt');
                                txtDiv.style.marginTop = '5px';
                                txtDiv.style.marginLeft = '5px';
                                txtDiv.style.fontFamily = "'Exo 2', sans-serif";
                                const h4 = document.createElement('h4');
                                h4.style.fontSize = '0.9rem';
                                h4.style.fontWeight = '700';
                                h4.textContent = newsItem.heading; // Set the heading to the newsItem's heading

                                const p = document.createElement('p');
                                p.textContent = newsItem.content;
                                p.style.wordSpacing = '0.2em'; // Adjust the word spacing as needed
                                p.style.whiteSpace = 'pre-wrap';

                                txtDiv.appendChild(h4);
                                txtDiv.appendChild(p);
                                col10.appendChild(txtDiv);
                                newsContainer.style.maxHeight = '35rem'; // Set a fixed height for the news container
                                newsContainer.style.overflowY = 'auto'; // Enable vertical scrolling if the content exceeds the container height

                                newsContainer.appendChild(col10);
                            });
                        });
            }

            // Call the loadNews function when the document is ready
            $(document).ready(function () {
                loadNews();
            });
            var announcements = $('#tbl3').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": false,
                "autoWidth": false,
                "bFilter": false,
                "bPaginate": false,
                "bLengthChange": false,
                "bAutoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[1, "asc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "announcement/announcement-table",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        d.filter = filter;
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }
                },
                "columns": [
                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "name"},
                    {"data": "date"},
                    {"data": "path", "visible": false},
                ],
                "columnDefs": [
                    {
                        "targets": [1, 2], // Indexes of the columns you want to modify (1 and 2 in this case)
                        "render": function (data, type, row) {
                            if (type === 'display') {
                                // Apply the CSS style to remove underline and set the font color to purple
                                return '<span style="text-decoration: none; color: purple;">' + data + '</span>';
                            }
                            return data;
                        }
                    }
                ],
                "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>',
                    "info": '', // Hide the table information by setting it to an empty string
                },
                "createdRow": function (row, data) {
                    $(row).find('td').first().html('<a target="_blank" href="announcement/path/view/' + data['path'] + '#embedded=true&toolbar=0&navpanes=0">' + data['name'] + '</a>');
                }
            });
            var selectedCallName;
            $.fn.dataTable.ext.errMode = 'none';
            var dtable1 = $('#tbl4').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": true,
                "autoWidth": false,
                "bFilter": false,
                "bPaginate": false,
                "bLengthChange": false,
                "bAutoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[2, "asc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "birthday/dob",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        // Handle error if needed
                    }
                },
                "columns": [
                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "callName"},
                    {"data": "dob", "width": "3rem"},
                    {"data": "branch"}
                ],
                "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>',
                    "info": '' // Hide the table information by setting it to an empty string
                },
                "rowCallback": function (row, data) {
                    var today = new Date();
                    var dobDate = new Date(data.dob);
                    // Check if the dob month and date are equal to the current system month and date
                    if (dobDate.getMonth() === today.getMonth() && dobDate.getDate() === today.getDate()) {
                        // Make the row clickable
                        $(row).on('click', function () {
                            // Store the selected callName
                            selectedCallName = data.callName;
                            // Open the modal when a row is clicked
                            $('#bdaymodal').modal('show');
                            // Populate modal content with row data
                            $('#modalTitle').html("HAPPY BIRTHDAY " + data.callName);
                            $('#modalTitle').css('font-family', "'Playfair Display', serif");


                            $('#callNameText').html(data.callName);
                            // Set the initial value of the name input
                            $('#callNameText').val(data.callName);
                            // Load and display relevant wishes for the selected callName
                            loadAndDisplayWishes(selectedCallName);
                        });
                    } else {
                        // Disable click event for non-matching dob dates
                        $(row).off('click');
                        $(row).css('cursor', 'not-allowed');
                    }
                }
            });
            function loadAndDisplayWishes(callName) {
                fetch('birthday/wishess', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({data: callName}),
                }
                )
                        .then(response => response.json())
                        .then(data => {
                            console.log('Received data:', data);
                            if (data && Array.isArray(data) && data.length > 0) {
                                var wishesData = data;
                                // Check if wishesData is an array of objects
                                if (wishesData.every(obj => typeof obj === 'object' && obj !== null)) {
                                    // Clear previous wishes
                                    $('#sysss').empty();

                                    // Create a new row
                                    var row = $('<div class="row" style="margin-top: -1rem;"></div>');

                                    // Display relevant wishes
                                    wishesData.forEach(wish => {
                                        console.log('Individual wish:', wish);
                                        var card = `<div class="col-4" style="width: 20rem;">` +
                                                `<div class="card" >` +
                                                `<div class="card-body">` +
                                                `<h5 class="card-header">From:` + wish.name + `</h5>` +
                                                `<p class="card-text" style="margin-left: 1rem;">` + wish.wish + `</p>` +
                                                ` </div></div></div>`;
                                        row.append(card);
                                    });

                                    // Append the row to the container
                                    $('#sysss').append(row);
                                } else {
                                    console.error('Invalid or missing data structure: Expected an array of objects.', wishesData);
                                }
                            } else {
                                console.error('Invalid or missing data structure: Expected a non-empty array.', data);
                            }
                        })
                        .catch(error => {
                            console.error('An error occurred:', error);
                        });
            }

            $('#save_wish_btn').click(function ()
            {
                const formData = new FormData();
                // Append values to the FormData
                formData.append('birthday', $('#callNameText').val()); // Use the entered name as the birthday
                formData.append('name', $('#name').val());
                formData.append('wish', $('#wishes').val());
                //            formData.append('userId', data.id); // Assuming 'userId' is the column where you store the user ID

                return fetch('birthday/save-wish', {
                    method: 'POST',
                    body: formData
                }).then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    } else {
                        Swal.fire('Successful!', 'Wish has been successfully saved');
                        clearFormss();
                        $('#bdaymodal').modal('hide');
                    }
                    return response.json();
                });
            });
            function clearFormss()
            {
                $('#bdaymodal').find('input[type!=search]').val('');
                $('#bdaymodal').find('input[type!=search]').val('');
                $('#bdaymodal').find('select').each(function () {
                    if ($(this).data('select')) {
                        if ($(this).data('select').ajax) {
                            $(this).data('select').data.data = [];
                        }
                        $(this).data('select').set('');
                    }
                });
            }








            var filter = '';
            filter = "2";
            $('#dtable1').change(function ()
            {
                if ($(this).val()) {
                    filter = $(this).val();
                    dtable.ajax.reload();
                }
            }
            );
            $.fn.dataTable.ext.errMode = 'none';







        </script>






    </body>
</html>