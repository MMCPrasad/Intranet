<%-- 
    Document   : fina_statement
    Created on : 29 Nov 2023, 1:24:04 pm
    Author     : L580
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
        <%@include file="jspf/header.jspf" %>
        <!--<link href="files/css/depo.css" rel="stylesheet" type="text/css"/>-->
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>

        <%@include file="jspf/navbar.jspf" %>
        <style>
            .a,ul,li{
                text-decoration: none;
            }
            .no-margin-top{
                font-size: 3rem;
            }

            .info-cont ul{
                margin: 0px;
                padding: 5px 20px;
            }
            .info-cont ul li{
                margin-bottom: 15px;
                list-style: none;
            }
            .info-cont ul li a{
                color: #333;
            }
            .info-cont ul li a:hover{
                color: #6c4892;
                text-decoration: none;
            }
            .info-cont .file-download-list li:after{
                content: "\f019"; /* FontAwesome Unicode */
                font-family: FontAwesome;
                display: inline-block;
                margin-left: 0.6em; /* same as padding-left set on li */
                width: 1.3em; /* same as padding-left set on li */
                color: #ff3333;
            }
            .info-cont ul li:before {
                content: "\f0da"; /* FontAwesome Unicode */
                font-family: FontAwesome;
                display: inline-block;
                margin-left: -1.3em; /* same as padding-left set on li */
                width: 1.3em; /* same as padding-left set on li */
            }

            .info-cont .no-list-style{
                padding: 5px 5px;
            }
            .info-cont .no-list-style li:before{
                content: " "; /* FontAwesome Unicode */
            }
            .file-download li a {
                text-decoration: none;
            }
            #tbl3 tbody tr {
                text-decoration: none;
            }

            .info-cont ul li a {
                color: black; /* Set the color to black */
                text-decoration: none; /* Remove underline */
            }

            .info-cont ul li a:hover {
                color: #6c4892;
                text-decoration: none; /* Keep the same hover effect without underline */
            }

            .file-download li a {
                text-decoration: none; /* Remove underline for links inside .file-download */
            }

            #tbl3 tbody tr a,
            #tbl4 tbody tr a {
                text-decoration: none; /* Remove underline for links inside the tables */
                color: black;
                font-size: 1.1rem;
            }

        </style>
        <div class="row info-cont" > 
            <h1 class="no-margin-top" style="display: flex;justify-content: center">Forms & Mandates</h1>
            <div class="row" style="display: flex;justify-content: center;">
                <img class="img-responsive" style="height: 60%;width: 80%;" src="assets/img/system/carousel/about/mandate.jpg" alt=""/> 
                <div class="row" style="margin-left: 5rem;"> 

                    <ul class="file-download">
                        <div class="table-responsive" id="part21">
                            <table class="table table-hover cell-border" id="tbl3" style="width:100%;padding-top: 10px;">
                                <thead>
                                    <tr>                                                       

                                    </tr>
                                </thead>
                                <tbody style="font-size:13px;">
                                </tbody>

                            </table>
                        </div>
                    </ul>



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

            window.addEventListener('load', function () {
                var table = document.getElementById("tbl3");
                if (table) {
                    var thead = table.querySelector("thead");
                    if (thead) {
                        thead.style.display = "none";
                    }
                }
            });
            window.addEventListener('load', function () {
                var table = document.getElementById("tbl4");
                if (table) {
                    var thead = table.querySelector("thead");
                    if (thead) {
                        thead.style.display = "none";
                    }
                }
            });
        </script>
        <script>


            var dtable2 = $('#tbl3').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": false, // Disable sorting
                "autoWidth": false,
                "bFilter": false,
                "bPaginate": false,
                "bLengthChange": false,
                "bAutoWidth": false,
                "processing": true,
                "serverSide": true,
                "searchHighlight": true,
                "searchDelay": 350,
                "info": false,
                "ajax": {
                    "url": "mandate/mandate-table",
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
                    {"data": "path", "data": "name", className: ""}
                ],
                "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                },
                "createdRow": function (row, data) {
                    var link = '<a target="_blank" href="form/path/view/' + data['path'] + '">' + data['name'] + '</a>';
                    $(row).find('td').first().html(link);
                    $(row).find('td').first().css('text-decoration', 'none');
                }

            });


        </script>
    </body>

</html>
