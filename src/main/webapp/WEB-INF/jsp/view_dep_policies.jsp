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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dosis&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@500&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@600&display=swap" rel="stylesheet">
        <title>Fintrex - Intranet </title>
        <%@include file="jspf/header.jspf" %>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <link rel="stylesheet" href="files/css/style11.css">

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Shippori+Mincho:wght@700&display=swap" rel="stylesheet">


    </head>
    <body>

        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/nav_pol.jspf" %>

        <style>


            .row {
                display: flex;
                justify-content: space-between;
                margin-bottom: 20px;
            }

            .column {
                flex: 1;
            }

            .card {
                width: 100%;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin-bottom: 20px;
            }

            .vertical-line {
                border-left: 1px solid #ddd;
                height: 100%;
                margin: 0 10px;
            }


            .placeholder {
                display: inline-block;
                min-height: 1em;
                vertical-align: middle;
                cursor: pointer;
                background-color: transparent;
                opacity: 1;
            }
            .card-bodys{
                width: 100%;

            }

            .container {
                margin-top: 20px;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
            }

            .table th, .table td {
                padding: 10px;
                border: 1px solid #ddd;
            }







            .table {
                background-color: #fff;
                font-size: 2rem;
            }

            th, td {
                text-align: center;
                font-family: 'Cinzel', serif;
                font-size: 1rem;

            }

            .btn-primary {
                background-color: #007bff;
                border-color: #007bff;
            }

            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }

            .form-control {
                border-radius: 5px;
            }

            .select2-container--default .select2-selection--single {
                border-radius: 5px;
            }
            .card-header{
                color: #095F7B;
                font-family: 'Dosis', sans-serif;
                font-size: 1.5rem;
                background-color: #cccccc;
            }



            .scroll{
                color:#fff;
                margin-top:100px;
            }

            #toTopBtn {
                position: fixed;
                bottom: 26px;
                right: 39px;
                z-index: 98;
                padding: 21px;
                background-color: hsla(5,76%,62%,.8);

            }

            .js .cd-top--fade-out {
                opacity: 1;
            }

            .js .cd-top--is-visible {
                visibility: visible;
                opacity: 1;
            }

            .js .cd-top {
                visibility: hidden;
                opacity: 0;
                transition: opacity .3s,visibility .3s,background-color .3s;
            }

            .cd-top {
                position: fixed;
                bottom: 20px;
                bottom: var(--cd-back-to-top-margin);
                right: 20px;
                right: var(--cd-back-to-top-margin);
                display: inline-block;
                height: 40px;
                height: var(--cd-back-to-top-size);
                width: 40px;
                width: var(--cd-back-to-top-size);
                box-shadow: 0 0 10px rgba(0,0,0,.05) !important;
                background: url(https://res.cloudinary.com/dxfq3iotg/image/upload/v1571057658/cd-top-arrow.svg) no-repeat center 50%;
                background-color: hsla(5,76%,62%,.8);
                background-color: hsla(var(--cd-color-3-h),var(--cd-color-3-s),var(--cd-color-3-l),0.8);
            }

            .height{
                height:3000px;
            }









            .tabset > input[type="radio"] {
                position: absolute;
                left: -200vw;
            }

            .tabset .tab-panel {
                display: none;
            }

            .tabset > input:first-child:checked ~ .tab-panels > .tab-panel:first-child,
            .tabset > input:nth-child(3):checked ~ .tab-panels > .tab-panel:nth-child(2),
            .tabset > input:nth-child(5):checked ~ .tab-panels > .tab-panel:nth-child(3),
            .tabset > input:nth-child(7):checked ~ .tab-panels > .tab-panel:nth-child(4),
            .tabset > input:nth-child(9):checked ~ .tab-panels > .tab-panel:nth-child(5),
            .tabset > input:nth-child(11):checked ~ .tab-panels > .tab-panel:nth-child(6) {
                display: block;
            }

            /*
             Styling
            */
            body {
                font: 16px/1.5em "Overpass", "Open Sans", Helvetica, sans-serif;

                font-weight: 300;
            }

            .tabset > label {
                position: relative;
                display: inline-block;
                padding: 15px 15px 25px;
                border: 1px solid transparent;
                border-bottom: 0;
                cursor: pointer;
                font-weight: 600;
            }

            .tabset > label::after {
                content: "";
                position: absolute;
                left: 15px;
                bottom: 10px;
                width: 22px;
                height: 4px;
                background: #8d8d8d;
            }

            input:focus-visible + label {
                outline: 2px solid rgba(0,102,204,1);
                border-radius: 3px;
            }

            .tabset > label:hover,
            .tabset > input:focus + label,
            .tabset > input:checked + label {
                color: #6c4892;
            }

            .tabset > label:hover::after,
            .tabset > input:focus + label::after,
            .tabset > input:checked + label::after {
                background: #6c4892;
            }

            .tabset > input:checked + label {
                border-color: #ccc;
                border-bottom: 1px solid #fff;
                margin-bottom: -1px;
            }

            .tab-panel {
                padding: 30px 0;
                border-top: 1px solid #ccc;
            }

            /*
             Demo purposes only
            */
            *,
            *:before,
            *:after {
                box-sizing: border-box;
            }



            .tabset {
                max-width: 90em;
                padding: 5rem;


            }
            .tabset


            .wrapper {
                margin: 15px auto;
                max-width: 1100px;
            }

            .container-calendar {
                background: #ffffff;
                padding: 15px;
                max-width: 475px;
                margin: 0 auto;
                overflow: auto;
            }

            .button-container-calendar button {
                cursor: pointer;
                display: inline-block;
                zoom: 1;
                background: #00a2b7;
                color: #fff;
                border: 1px solid #0aa2b5;
                border-radius: 4px;
                padding: 5px 10px;
            }

            .table-calendar {
                border-collapse: collapse;
                width: 100%;
            }

            .table-calendar td, .table-calendar th {
                padding: 5px;
                border: 1px solid #e2e2e2;
                text-align: center;
                vertical-align: top;
            }

            .date-picker.selected {
                font-weight: bold;
                outline: 1px dashed #00BCD4;
            }

            .date-picker.selected span {
                border-bottom: 2px solid currentColor;
            }

            /* sunday */
            .date-picker:nth-child(1) {
                color: red;
            }

            /* friday */
            .date-picker:nth-child(6) {
                color: green;
            }

            #monthAndYear {
                text-align: center;
                margin-top: 0;
            }

            .button-container-calendar {
                position: relative;
                margin-bottom: 1em;
                overflow: hidden;
                clear: both;
            }

            #previous {
                float: left;
            }

            #next {
                float: right;
            }

            .footer-container-calendar {
                margin-top: 1em;
                border-top: 1px solid #dadada;
                padding: 10px 0;
            }

            .footer-container-calendar select {
                cursor: pointer;
                display: inline-block;
                zoom: 1;
                background: #ffffff;
                color: #585858;
                border: 1px solid #bfc5c5;
                border-radius: 3px;
                padding: 5px 1em;
            }

            .fh5co-cover, .fh5co-hero {
                position: relative;

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
            .owl-carousels .item {
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
            h2 {
                margin-bottom: 48px;
                padding-bottom: 16px;
                font-size: 20px;
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
            #fh5co-event-section {
                padding: 60px 50px;
            }
            #fh5co-event-section .owl-stage {
                margin: 15px 0;
                display: flex;
                display: -webkit-flex;
            }
            #fh5co-event-section .item {
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
            #fh5co-event-section .item.active {
                width: 500px;
                box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
                -webkit-box-shadow: 12px 40px 40px rgba(0, 0, 0, 0.25);
            }
            #fh5co-event-section .item:after {
                content: "";
                display: block;
                position: absolute;
                height: 100%;
                width: 100%;
                left: 0;
                top: 0;
                background-image: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 1));
            }
            #fh5co-event-section .item-desc {
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
            #fh5co-event-section .item.active .item-desc {
                transform: none;
                -webkit-transform: none;
            }
            #fh5co-event-section .item-desc p {
                opacity: 0;
                -webkit-transform: translateY(32px);
                transform: translateY(32px);
                transition: all 0.4s ease-in-out 0.2s;
                -webkit-transition: all 0.4s ease-in-out 0.2s;
            }
            #fh5co-event-section .item.active .item-desc p {
                opacity: 1;
                -webkit-transform: translateY(0);
                transform: translateY(0);
            }
            #fh5co-event-section .owl-theme.custom-carousel .owl-dots {
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
                #fh5co-event-section {
                    padding: 50px 30px;
                }
                #fh5co-event-section .item {
                    margin: 0 12px 60px;
                    width: 260px;
                    height: 360px;
                }
                #fh5co-event-section .item.active {
                    width: 400px;
                }
                #fh5co-event-section .item-desc {
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
                #fh5co-event-section {
                    padding: 50px 30px 40px;
                }
                #fh5co-event-section .item {
                    margin: 0 12px 60px;
                    width: 240px;
                    height: 330px;
                }
                #fh5co-event-section .item.active {
                    width: 360px;
                }
                #fh5co-event-section .item-desc {
                    transform: translateY(calc(100% - 42px));
                    -webkit-transform: translateY(calc(100% - 42px));
                }
            }

            @media (max-width: 767px) {
                body {
                    font-size: 14px;
                }
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
                #fh5co-event-section {
                    padding: 30px 15px 20px;
                }
                #fh5co-event-section .item {
                    margin: 0 10px 40px;
                    width: 200px;
                    height: 280px;
                }
                #fh5co-event-section .item.active {
                    width: 270px;
                    box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
                    -webkit-box-shadow: 6px 10px 10px rgba(0, 0, 0, 0.25);
                }
                #fh5co-event-section .item-desc {
                    padding: 0 14px 5px;
                    transform: translateY(calc(100% - 42px));
                    -webkit-transform: translateY(calc(100% - 42px));
                }
                #fh5co-feature-product {
                    padding: 2em;
                }
            }





            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                padding-top: 100px;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0, 0, 0);
                background-color: rgba(0, 0, 0, 0.9);
            }

            .modal-content {
                margin: auto;
                display: block;
                width: 80%;
                max-width: 600px;
            }

            .close {
                position: absolute;
                top: 15px;
                right: 35px;
                color: white;
                font-size: 40px;
                font-weight: bold;
                cursor: pointer;
            }



            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
            }

            .notice-board {
                width: 100%;
                max-width: 1000px;
                margin: 20px auto;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                padding: 20px;
            }

            .notice {
                margin-bottom: 20px;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #f9f9f9;
            }

            .notice h2 {
                margin: 0;
                font-size: 20px;
            }

            .notice p {
                margin: 0;
            }

            .button {
                display: inline-block;
                padding: 10px 20px;
                background-color: #007bff;
                color: #fff;
                text-decoration: none;
                border-radius: 5px;
                cursor: pointer;
            }

            /* Modal Styles */
            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.4);
            }

            .modal-content {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background-color: #fff;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .close {
                position: absolute;
                top: 10px;
                right: 10px;
                cursor: pointer;
            }







            .btn {
                -webkit-transition: 0.3s;
                -o-transition: 0.3s;
                transition: 0.3s;
            }

            .btn {
                text-transform: uppercase;
                letter-spacing: 2px;
                -webkit-transition: 0.3s;
                -o-transition: 0.3s;
                transition: 0.3s;
            }
            .btn.btn-primary {
                background: #6e4b93;
                color: #fff;
                border: none !important;
                border: 2px solid transparent !important;
            }
            .btn.btn-primary:hover, .btn.btn-primary:active, .btn.btn-primary:focus {
                box-shadow: none;
                background: #6e4b93;
                color: #fff !important;
            }
            .btn:hover, .btn:active, .btn:focus {
                background: #393e46 !important;
                color: #fff;
                outline: none !important;
            }
            .btn.btn-default:hover, .btn.btn-default:focus, .btn.btn-default:active {
                border-color: transparent;
            }
            a {

                -webkit-transition: 1s, ease;
                -o-transition: 1s, ease;
                transition: 1s, ease;
            }
            a:hover {
                text-decoration: none !important;
                color: #43eb34 !important;
            }


            /* Set the color of carousel controls to black */
            .carousel-control-prev-icon,
            .carousel-control-next-icon {
                background-color: black;
            }

            /* Set the color of carousel controls arrows to white */
            .carousel-control-prev-icon::before,
            .carousel-control-next-icon::before {
                color: white;
            }




            .colorful-card {
                /* Add your preferred background color */
                color: black; /* Add your preferred text color */
                border-radius: 10px; /* Add rounded corners */
                padding: 20px; /* Add padding for better spacing */
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
            }
        </style>


        <div id="fh5co-wrapper">
            <div id="fh5co-page">

                <div class="fh5co-hero">
                    <div class="fh5co-overlay"></div>
                    <div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" id="backgroundImage" style="position: relative;">
                        <div class="desc animate-box" style="position: absolute; bottom: 0; left: 50%; transform: translateX(-50%);">
                            <p style="font-size: 3rem; color: #fff; font-family: 'Cinzel', serif; letter-spacing: 0.1em; text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.9); display: inline-block;"><strong>Fintrex</strong> Finance LTD <strong></strong></p>
                        </div>
                    </div>
                </div>

                <div id="fh5co-feature-product" class="fh5co-section-gray" style="padding-bottom: 1em;">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center heading-section">
                                <h3 id="welcomeHeading">Welcome To Department.</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <div class="feature-text">
                                    <h3 style="font-family: 'Barlow Condensed', sans-serif; font-weight: bold;letter-spacing: .15em;">ABOUT US</h3>

                                    <p id="aboutUsParagraph"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>





                <div class="row">
                    <div class="row" style="padding: 2rem 5rem 0.1rem 5rem;">
                        <div class="column">
                            <div class="card">
                                <div class="card-bodys">
                                    <div class="card-header">
                                        <div class="top" style="background-color: #cccccc;padding: 10px ">
                                            <h4>FINTREX FINANCE DEPARTMENT PROCEDURE MANUALS & POLICIES</h4>
                                        </div>
                                    </div>
                                    <div class="col-md-12"style="backgr">
                                        <div class="card info-card revenue-card admin-edit-card-desing" style="width:100%; ">
                                            <!--                                    <select class="form-control-sm pull-right" style="width: 30rem;" id="time_table">
                                                                                </select>-->

                                            <!-- Table with stripped rows -->
                                            <div class="table-responsive" id="part21">
                                                <table class="table table-hover cell-border" id="tbll" style="width:100%;padding-top: 10px;">
                                                    <thead>
                                                        <tr>                                                       

                                                        </tr>
                                                    </thead>
                                                    <tbody style="font-size:13px;">
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>




                </div>


                <section id="committee">
                    <div id="fh5co-content-section" style="padding-bottom: 0em; margin-top: 1rem;">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 col-md-offset-2 text-center heading-section animate-box"
                                     style="padding-bottom: 1em;">
                                    <h3 style="font-family: 'Shippori Mincho', serif; font-weight: bold; letter-spacing: .15em; text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.6);">TEAM MEMBERS</h3>
                                </div>
                            </div>
                        </div>
                        <section id="owl-2" >
                            <div class="owl-carousel owl-theme">

                            </div>
                        </section>
                    </div>
                    <hr style="margin-left:5rem;margin-right: 5rem;border: 2px solid #79c14e;">
                </section>


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
<script src="files/js/owl.carousel.min.js"></script>       
<script src="files/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

<script>
    fetch('department/covers')
            .then(response => response.json())
            .then(data => {
                if (Array.isArray(data) && data.length > 0) {
                    const firstElement = data[0];

                    const backgroundImageElement = document.getElementById('backgroundImage');
                    backgroundImageElement.style.backgroundImage = 'url(department/path/aboutus/' + firstElement.path + ')';
                    backgroundImageElement.style.height = '70vh'; // Adjust the height value as needed
                    backgroundImageElement.style.backgroundSize = 'cover';
                    backgroundImageElement.style.backgroundPosition = 'center'; // Added for cover effect
                    backgroundImageElement.style.backgroundRepeat = 'no-repeat'; // Added for cover effect

                    console.log(firstElement.path)

                    const welcomeHeadingElement = document.getElementById('welcomeHeading');
                    welcomeHeadingElement.style.fontFamily = "'Playfair Display', serif";
                    welcomeHeadingElement.style.fontSize = "2.2rem";
                    welcomeHeadingElement.style.letterSpacing = "0.05em";
                    welcomeHeadingElement.style.textShadow = '1px 1px 4px rgba(0, 0, 0, 0.3)';
                    welcomeHeadingElement.innerText = 'Welcome To ' + firstElement.subtype + ' Department.';

                    const aboutUsParagraphElement = document.getElementById('aboutUsParagraph');
                    aboutUsParagraphElement.style.fontFamily = "'Barlow Condensed', sans-serif";
                    aboutUsParagraphElement.style.fontSize = "1.3rem";
                    aboutUsParagraphElement.innerText = firstElement.about_us;

                } else {
                    console.error('Error: Empty or invalid data received.');
                }
            })
            .catch(error => console.error('Error:', error));


</script>
<script>





    function loadCommitteeMembers() {
        fetch('department/image')
                .then(response => response.json())
                .then(membersData => {
                    const carousel = document.querySelector('#owl-2 .owl-carousel');
                    carousel.innerHTML = '';

                    membersData.forEach(member => {
                        // Create a card for each committee member
                        const card = document.createElement('div');
                        card.classList.add('card1-img-top');

                        // Create an image element
                        const image = document.createElement('img');
                        image.classList.add('card1-img-top');
                        image.src = `department/path/view/` + member.path;
                        image.alt = 'Committee Member Image';
                        image.style.width = '16rem';
                        image.style.height = '16rem';

                        // Append the image to the card
                        card.appendChild(image);

                        // Create a text container
                        const textContainer = document.createElement('div');
                        textContainer.classList.add('txt');
                        textContainer.style.marginTop = '1rem';
                        textContainer.style.textAlign = 'center';
                        textContainer.style.fontSize = '1rem';

                        // Add the member's name
                        const nameHeading = document.createElement('h4');
                        nameHeading.textContent = member.name;
                        textContainer.appendChild(nameHeading);

                        // Add the member's position
                        const positionHeading = document.createElement('h5');
                        positionHeading.textContent = member.designation;
                        positionHeading.style.marginTop = '0.5rem';
                        positionHeading.style.fontSize = '1.2rem';
                        textContainer.appendChild(positionHeading);

                        // Append the text container to the card
                        card.appendChild(textContainer);

                        // Append the card to the carousel
                        carousel.appendChild(card);
                    });

                    // Initialize Owl Carousel after loading members
                    initOwlCarousel();
                });
    }

    function initOwlCarousel() {
        const owlCarousel = $('#owl-2 .owl-carousel');
        owlCarousel.owlCarousel({
            items: 5,
            margin: 16,
            stagePadding: 32,
            loop: true,
            autoplay: true,
            autoplaySpeed: 2000,
            navSpeed: 2500,
            dots: false,
            dotsEach: true,
            nav: true,
            navText: ['', ''],
            autoplayTimeout: 2500,
            autoplayHoverPause: true, // Pause on hover
            animateOut: 'slideOutDown',
            animateIn: 'flipInX',
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
        });

        // Stop the carousel on hover
        owlCarousel.hover(
                function () {
                    owlCarousel.trigger('stop.owl.autoplay');
                },
                function () {
                    owlCarousel.trigger('play.owl.autoplay');
                }
        );
    }

// Embedded CSS Styles
    const styles = `
   .card1-img-top {
       display: flex;
       flex-direction: column;
       align-items: center;
       text-align: center;
   }

   
   .txt {
       margin-top: 1rem;
       text-align: center;
       font-size: 1rem;
   }

   h4 {
       margin-bottom: 0.5rem;
   }

   h5 {
       margin-top: -1.5rem;
       font-size: 1.2rem;
   }
`;

// Create a style element and append it to the document head
    const styleElement = document.createElement('style');
    styleElement.innerHTML = styles;
    document.head.appendChild(styleElement);


    // Call the function to load committee members
    loadCommitteeMembers();
    function openModal(modalId) {
        var modal = document.getElementById(modalId);
        modal.style.display = "block";
    }

    function closeModal(modalId) {
        var modal = document.getElementById(modalId);
        modal.style.display = "none";
    }

    // Close the modal when clicking outside of the modal content
    window.onclick = function (event) {
        if (event.target.className === "modal") {
            event.target.style.display = "none";
        }
    };
    $(document).ready(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 20) {
                $('#toTopBtn').fadeIn();
            } else {
                $('#toTopBtn').fadeOut();
            }
        });
        $('#toTopBtn').click(function () {
            $("html, body").animate({
                scrollTop: 0
            }, 1000);
            return false;
        });
    });




</script>
<script>
    // Function to hide the <thead> element on page load
    window.addEventListener('load', function () {
        var table = document.getElementById("tbll");
        if (table) {
            var thead = table.querySelector("thead");
            if (thead) {
                thead.style.display = "none";
            }
        }
    });
</script>
<script>

    var dtable = $('#tbll').DataTable({
        "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
        "pageLength": 5,
        "ordering": false, // Disable sorting
        "autoWidth": false,
        "bFilter": true, // Enable searching
        "dom": 'lrtip', // Display processing, length, and search elements
        "bPaginate": true, // Enable pagination
        "bLengthChange": false,
        "bAutoWidth": false,
        "processing": true,
        "serverSide": true,
        "order": [[0, "desc"]],
        "searchHighlight": true,
        "searchDelay": 350,
        "ajax": {
            "url": "policy/department",
            "contentType": "application/json",
            "type": "POST",
            "data": function (d) {
                return JSON.stringify(d);
            },
            error: function (xhr, error, code) {
                console.log(xhr);
                console.log(code);
            }
        },
        "columns": [
            {"data": "id", className: "text-right", "visible": false},
            {"data": "path", "visible": false},
            {"data": "name"}
        ],
        "language": {
            'loadingRecords': '&nbsp;',
            'processing': '<div class="loader2"></div>'
        },
        "createdRow": function (row, data) {
            $(row).find('td').first().html('<a target="_blank" href="policy/path/view/' + data['path'] + '#embedded=true&toolbar=0&navpanes=0">' + data['name'] + '</a>');
        }
    });





</script>
</body>
</html>
