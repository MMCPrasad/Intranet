

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
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&display=swap" rel="stylesheet">
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

                -webkit-animation-duration: 1s;
                -moz-animation-duration: 1s;
                -ms-animation-duration: 1s;
                -o-animation-duration: 1s;
                animation-duration: 1s;

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
                animation-delay:.4s;
                -webkit-animation-delay:.4s;
            }
            .animated.animationDelayMed{
                animation-delay:1.2s;
                -webkit-animation-delay:1.2s;
            }
            .animated.animationDelayLong{
                animation-delay:1.6s;
                -webkit-animation-delay:1.6s;
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




        <div class="row" style="padding: 2rem 5rem;">
            <div class="" >
                <div class="card">
                    <div class="row" style="background-color: #EEF6E8;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" style="border-radius: 50%">
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white;; align-items: center;background-color: #72BF44;font-size: 1.5rem;">
                                    Leasing
                                </div>
                                <img  src="assets/img/system/carousel/about/leasing.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                Fintrex Finance offers a wide range of Leasing products that are customized to meet the specific 
                                requirements of our diverse customer base who are seeking to realize their dream of a vehicle. Our 
                                product range includes vehicle leasing facilities, vehicle loans, hire purchase facilities for 2W, 3W 
                                and 4W vehicles for the customers across the island to purchase their dream vehicle, be it brand new, 
                                registered, or unregistered, petrol, hybrid or electric through getting in touch with the Company’s 
                                island-wide network.<br><br>
                                These leasing products coupled with speedy service delivery, the flexibility in personal guarantor 
                                requirement and down payments, and flexible repayment structure based on future cash flows targets 
                                attracting salaried employees, individuals engaged in businesses, SMEs, and corporate clients.<br><br>
                                Our product ‘Smart Cash’ for 4W vehicles enables the customer to acquire brand new, reconditioned 
                                and registered motor cars/vans & SUVs, the highest possible advances repayable up to 5 years.
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style=";background-color: #E9E4EE;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" >
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white; align-items: center;background-color: #6C4891;font-size: 1.5rem;">
                                    Revolving Draft
                                </div>
                                <img src="assets/img/system/carousel/about/draft.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                Fintrex Revolving Draft (FRD) facility enables the customer to access an additional cash reserve for 
                                any requirement. By comprehending the customers’ borrowing needs which vary throughout the year, 
                                FRD facility gives flexible funds to manage cash flow, take advantage of timely bargains, meeting 
                                unexpected emergencies and much more, all with just a one-time application. Customers can make 
                                multiple drawdowns-based requirement within the pre-approved credit limit, and it allows capital 
                                repayments bringing the liability down, during the tenure.
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style="background-color: #EEF6E8;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" style="border-radius: 50%">
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white;; align-items: center;background-color: #72BF44;font-size: 1.5rem;">
                                    Business Loans
                                </div>
                                <img src="assets/img/system/carousel/about/loan.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                We strongly believe in serving the SME sector and therefore, facilitate quick access to financing for 
                                the entrepreneurial SMEs offering them a range of financing options that would suit the cash flows 
                                of their business and help them grow their enterprise. The three types of business loans we provide 
                                including short terms loans, and long-term loans to purchase stocks<br><br></h5>
                            <h4 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;color: #72BF44;">Long-term loan</h4>
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                The long-term loan facility is available to purchase property, vehicles and machinery. While personal 
                                guarantees can be offered as security, it provides a repayment period between 13 months to 60 
                                months along with a grace period based on the business cash flows and nature of projects.<br><br>
                            </h5>
                            <h4 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;color: #72BF44;">Short-term loans</h4>
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                The short-term loans are offered for the working capital requirements of businesses and is provided 
                                with a repayment period of 12 months or below.<br><br>
                            </h5>
                            <h4 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;color: #72BF44;">Trade Finance</h4>
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                Our trade finance facility is available for importers of vehicles and other trading goods including 
                                Letters of Credit facilities and post-import loans for importers by pledging original import documents 
                                for vehicles and pledging the imported goods. We also provide import loans for custom duty 
                                payments, as well as for warehousing facilities and inventory management for pledged goods. The 
                                entire value chain is monitored and handled from port to warehouse.<br><br>
                                This facility provides a flexible repayment period of less than 12 months.
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style=";background-color: #E9E4EE;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" >
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white; align-items: center;background-color: #6C4891;font-size: 1.5rem;">
                                    Fixed Deposits
                                </div>
                                <img src="assets/img/system/carousel/about/fd.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                The Company introduced the “Vishvasa” fixed deposit product to the public in its initiative to expand 
                                the product portfolio of the Company. This product is accompanied by a competitive interest rate 
                                providing people with a higher return incentive for their savings, especially during challenging times.<br><br>
                                We offer Fixed Deposit (FD) investment schemes at competitive interest rates for investments with 
                                subject to CBSL policy rate revisions. Backed by world-class investors and robust governance and risk 
                                management system, we guarantee our clients reliable investment plans to suit their convenience.<br><br>
                                These deposit products have several deposit terms from minimum of 01 month to maximum of 60 
                                months for the customers to choose from, while the interest is payable at maturity or monthly. In 
                                addition, we allow cashback facilities against the fixed deposit of up to 90 percent of the value of the 
                                investment with subject to T&C.<br><br>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style="background-color: #EEF6E8;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" style="border-radius: 50%">
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white;; align-items: center;background-color: #72BF44;font-size: 1.5rem;">
                                    Savings
                                </div>
                                <img src="assets/img/system/carousel/about/saving.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                For inculcating the habit of saving amongst our customers, particularly amongst the entrepreneurs 
                                of the SME sector that represent the future of the nation, we have introduced two savings products; 
                                ‘Vishishta’ savings account for those who are above the age of 18 and ‘Shreshta’ senior citizens’ 
                                savings account. Similarly, we have also introduced a ‘Pravishta’ children’s savings account for 
                                children who are below the age of 18 years. .<br><br>
                                These savings products allow convenient cash deposits, withdrawals, fund transfers through the 
                                island-wide network with a standing order facility and offer competitive interest rates which are 
                                calculated daily with a monthly credit

                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style=";background-color: #E9E4EE;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" >
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white;text-align: justify;text-justify: inter-word; align-items: center;background-color: #6C4891;font-size: 1.5rem;">
                                    Gold Loan
                                </div>
                                <img src="assets/img/system/carousel/about/gl.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                Ran Shakthi Gold Loan facility offers our customers the convenience and highest cash advances 
                                against gold, when they need it the most, with accurate assessment and flexibility in repayment and 
                                redeeming. We guarantee the most accurate assessment with the help of latest technology and quick 
                                service while ensuring maximum security for the assets.<br><br>
                                Continuous increase of gold prices in the Sri Lankan market made local citizens finding it difficult 
                                to make an outright purchase of gold. Therefore, the “Ransakthi Gold Purchasing Loan”, provides 
                                people with the opportunity to buy gold jewellery of their choice from reputed gold jewellers in Sri 
                                Lanka. “Ransakthi Gold Purchasing Loan” scheme was developed to offer customers the opportunity 
                                to invest in gold by paying in installments with minimal pressure on their cash flow. <br><br>
                                Existing customers of Fintrex Finance with a prompt re-payment capacity will also be able to purchase 
                                gold through this product against the leeway available in their facility
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style="background-color: #EEF6E8;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" style="border-radius: 50%">
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white;; align-items: center;background-color: #72BF44;font-size: 1.5rem;">
                                    Money Market Savings
                                </div>
                                <img src="assets/img/system/carousel/about/mms.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                Fintrex Flexy Fix Money Market Savings Account, aimed at Corporate and high net worth 
                                individuals, SMEs who seek a product that offers better fund management capabilities for short 
                                term investments, assuring direct returns. Promising ‘higher returns for shorter period’, Flexy Fix 
                                Money Market Savings provides the flexibility needed to manage short term investments at their own 
                                convenience with higher interest rates, anytime withdrawals and daily interest.

                            </h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block animatable fadeInUp">
                <div class="card">
                    <div class="row" style=";background-color: #E9E4EE;padding: 2rem 2rem;border-radius: 20px;">

                        <div class="col-2" >
                            <div style=" align-items: center;font-family: 'Bebas Neue', sans-serif;">
                                <div class="card"  style="color: white;text-align: justify;text-justify: inter-word; align-items: center;background-color: #6C4891;font-size: 1.5rem;">
                                    Investment Planner
                                </div>
                                <img src="assets/img/system/carousel/about/invest.png" alt="alt"/>

                            </div>
                        </div>
                        <div class="col-1">

                        </div>
                        <div class="col-9" >
                            <h5 style="margin-left: 2rem;font-family: 'Roboto Slab', serif;">
                                Dream Planner is an innovative savings plan, first in the industry - a product designed for a customer 
                                to set aside a fixed amount of savings every month.<br><br>
                                As a fixed monthly installment to achieve a target amount at the end of an agreed target period 
                                ranging from a minimum of 1 year to a maximum of 5 years. 
                            </h5>
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

