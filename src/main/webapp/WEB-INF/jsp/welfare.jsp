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
        <title>Fintrex - Intranet </title>
        <%@include file="jspf/header.jspf" %>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@200;300;400&family=Marvel:wght@700&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&family=Marvel:wght@700&display=swap" rel="stylesheet">
        <link rel=”stylesheet” href=”css/bootstrap-responsive.css”>
        <!-- Link Swiper's CSS -->
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

        <!-- Fontawesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>


        <link rel="stylesheet" href="files/css/animate.css">

        <link rel="stylesheet" href="files/css/icomoon.css">

        <link rel="stylesheet" href="files/css/bootstrap.css">

        <link rel="stylesheet" href="files/css/superfish.css">

        <link rel="stylesheet" href="files/css/style11.css">



        <script src="js/modernizr-2.6.2.min.js"></script>

        <script src="js/respond.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>


    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/nav.jspf" %>

        <div id="user_documents" class="faq-area area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h2>User Documents</h2>
                        </div>
                    </div>
                </div>
                <div class="row" style="background-color: #daf5d9; padding-bottom: 9px">
                    <div class="col-md-12 col-sm-6 col-xs-12">
                        <!--<h1 class="text-center">User Documents</h1><br>-->
                        <div class="tab-menu">
                            <!--Nav tabs--> 
                            <ul class="nav nav-tabs" role="tablist" style="font-family: myFontB; font-size: small">
                                <li class="active">
                                    <a href="#p-view-a" role="tab" data-toggle="tab">Leasing & Loans UM</a>
                                </li>
                                <li>
                                    <a href="#p-view-b" role="tab" data-toggle="tab">Leasing & Loans PF</a>
                                </li>
                                <li>
                                    <a href="#p-view-c" role="tab" data-toggle="tab">Factoring System </a>
                                </li>

                                <li>
                                    <a href="#p-view-d" role="tab" data-toggle="tab">GL</a>
                                </li>
                                <li>
                                    <a href="#p-view-e" role="tab" data-toggle="tab">Fixed Deposit</a>
                                </li>
                                <li>
                                    <a href="#p-view-f" role="tab" data-toggle="tab">Saving System</a>
                                </li>
                                <li>
                                    <a href="#p-view-g" role="tab" data-toggle="tab">Treasury Management</a>
                                </li>
                            </ul>
                        </div>

                        <div class="tab-content" style="font-family: myFont">
                            <div class="tab-pane active" id="p-view-a">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">User Guide for Leasing, Loan & Hire purchase</h4>
                                        <p>
                                            NetAsset is a web based Asset Financing Software Solution that can accommodate different asset financing transactions, namely, Finance Leases, Operating Leases, Loans and Hire Purchasing. The system brings many innovative and revolutionary features such as inquiry recording, marketing analysis reports, user defined credit score models, unique system diary which ensures tasks are completed, information dashboards, multi-tasking facility and drilling down of reports up to source document level. Unique automated day-end/month-end system checks ensure that schedules match with account balances and exceptions are identified. Audit reports provide insight into all changes in the systems at reference data level as well as transaction data level. The system is linked with the Credit Information Bureau (CRIB) and readily caters to requirements of the Central Bank of Sri Lanka.
                                        </p>
                                        <!--<a class="services-icon" href="user_documents/Leasing_User_Manual.doc">-->
                                        <a class="services-icon" href="user_documents/Leasing_User_Manual.doc">

                                            <i class="fa fa-wordpress">
                                                <h4>Download User Manual</h4>
                                            </i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-b">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">Process flow for Leasing, Loan & Hire purchase</h4>
                                        <p>
                                            This document illustrate basic flow of the Leasing, Loan & Hire purchase
                                        </p>
                                        <a class="services-icon" href="#" onclick="window.open('user_documents/Leasing_process_flow.jpg', 'blank')">
                                            <i class="fa fa-image">
                                                <h4>View Process Flow</h4>
                                            </i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-c">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">User Guide for Factoring System</h4>
                                        <p>
                                            Administration module will cover the maintenance of Reference Information. Common Reference items include the creation of Users, Overall System References such as Currencies and Banks, Geographical areas such as Provinces and Districts, and reference items relating to the Licensee organization Structure such as Branches, Employees and Teams. The items unique to the Factoring process can be set up at the category named 'Factoring' under the Administration module. These items include creating Product Features, Products, Fees, Fee Packages, Collection Routes, Assigning routes to Collection. Factoring module will cover all the factoring related transactions categorized under division wise such as Marketing, credit, Invoicing, Collection. Management Information section consists of all system reports.
                                        </p>
                                        <a class="services-icon" href="user_documents/Factoring_User_Guide.doc">
                                            <i class="fa fa-wordpress">
                                                <h4>Download User Manual</h4>
                                            </i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-d">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">User Guide for Financial Accounting System</h4>
                                        <p>
                                            A web-based solution consisting of General Ledger, Cash Book, and Fixed Assets, Creditor and Debtor Management and Cash Flow planning modules oriented towards service-based industries.
                                        </p>
                                        <a class="services-icon" href="user_documents/Web_Accounts_System_User_Guide.doc">
                                            <i class="fa fa-wordpress">
                                                <h4>Download User Manual</h4>
                                            </i>
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-e">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">User Guide for Fund Management System</h4>
                                        <p>
                                            Fund Management System is an integrated, comprehensive, state-of-the-art software solution for the back office operations of a Fund Manager. This covers all related areas from customer account creation, transaction upload, settlement management, Inventory management up to accounting on an online-real-time basis. Additionally this module also contains a New Savings Product and activities related to it.
                                        </p>
                                        <a class="services-icon" href="user_documents/Fund_Management_System_User_Guide.doc">
                                            <i class="fa fa-wordpress">
                                                <h4>Download User Manual</h4>
                                            </i>
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-f">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">Savings System</h4>
                                        <p>

                                        </p>
                                        <a class="services-icon" href="#">
                                            <i class="fa fa-wordpress">
                                                <h4>Download User Manual</h4>
                                            </i>
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="p-view-g">
                                <div class="tab-inner">
                                    <div class="event-content head-team">
                                        <h4 style="font-family: myFontB">User Guide for Treasury Management System</h4>
                                        <p>
                                            DealNet Treasury Management System is a Web based software solution. The Structured Facilities, Issue of Securities, Banking Facilities and Money Market Facilities are catered for in DealNet as special features which will ease the functions of the Treasury in terms of improved efficiency and saving of time. The system is further equipped with an Investment aspect by facilitating Outrights and Repos. 
                                        </p>
                                        <a class="services-icon" href="user_documents/Treasury_Management_System_User_Guide.doc">
                                            <i class="fa fa-wordpress">
                                                <h4>Download User Manual</h4>
                                            </i>
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <!-- end Row -->
            </div>
        </div>



        <%@include file="jspf/scripts.jspf" %>

        <script type="text/javascript" src="files/js/limselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>



    </body>
</html>

