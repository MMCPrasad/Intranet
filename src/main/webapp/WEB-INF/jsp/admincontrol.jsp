<%-- 
    Document   : admincontrol
    Created on : Aug 28, 2023, 8:39:56 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">        
        <link href="assets/css/style_kasun.css" rel="stylesheet">
        <title>Fintrex - Intranet</title>
        <link rel="icon" href="files/images/logo1.ico" type="images/x-icon">

    </head>
    <body>
        <%@include file="jspf/nav.jspf" %>
        <style>
            .pagetitle {
                margin-bottom: 10px;
                margin-top: -37px;
                margin-bottom: -59px;
            }

            .pagetitle h1 {
                font-size: 28px;
                margin-bottom: 0;
                font-weight: 600;
                color: #31d422;
            }
            .placeholder {
                display: inline-block;
                min-height: 1em;
                vertical-align: middle;
                cursor: pointer;
                background-color: transparent;
                opacity: 2;
                /* color: #0077ff; */
                font-weight: 600;
                font-size: 12px;
            }

            .allFontByCustomerEdit{
                font-size: 14px;
                color:#464242;
                font-weight: 600;
            }


            .allFontToComplaintViewPage{

                font-size: 14px;
                color: #020202;
                font-weight: 800;

            }



        </style>





        <section class="section">

            <div class="row">
                <style>
                    body {
                        background-color: #f9f9fa
                    }

                </style>


                <div class="row" style="justify-content: center;">
                    <div class="pagetitle" style=" padding-left: 5rem;padding-top: 4rem "><h1>Admin Dashboard</h1>
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/Intranet/">Home</a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a >Admin</a> 
                                </li>

                            </ol>
                        </nav>
                    </div>

                    <div class="row d-flex align-items-center justify-content-center" id="sysss" style="margin-top: 3rem;">

                    </div>


                </div>


            </div>
            <div class="row" >

            </div>
        </section>
        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <%@include file="jspf/scripts.jspf" %>
        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
        <script>
        </script>

        <script>
            fetch('admin/page-access')
                    .then(res => res.json())
                    .then(data => {
                        console.log(data);

                        for (var i = 0; i < data.length; i++) {
                            var card = '<div class="col-6 "style="width: 25rem;margin-top: 1rem;"><div class="card" style="height: 12rem"><div class="card-body"><h5 class="card-header">' + data[i].name + '</h5> <p class="card-text">Update ' + data[i].name + ',Please go through below button</p><button data-url="' + data[i].url + '" class="btn btn-primary updateButton" style="position: absolute;bottom: 1rem">Update ' + data[i].name + '</button></div></div></div>';
                            $('#sysss').append(card);
                        }

                        // Add click event listener to the buttons
                        $('.updateButton').click(function () {
                            var url = $(this).data('url');
                            window.location.href = url;
                        });
                    });




        </script>

    </body>
</html>
