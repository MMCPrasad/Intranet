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
    </head>
    <body>

        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>

        <style>
            .placeholder {
                display: inline-block;
                min-height: 1em;
                vertical-align: middle;
                cursor: pointer;
                background-color: transparent;
                opacity: 1;
            }
        </style>

        <main id="main" class="main">


            <section class="section dashboard">
                <div class="row">

                    <!--1st part of the dashboard -->
                    <div class="col-md-12">
                        <div class="row">

                            <i class="fa-solid fa-down"></i>

                            <div class="col-md-3 col-sm-4 col-lg-2 col-6 custom-col" style="display:none">
                                <div class="card info-card sales-card">



                                </div>
                            </div>

                            <div class="" style="margin-top:-14px;">

                                <div class="card" >
                                    <div class="card-body">
                                        <div class="col-md-12">
                                            <div class="card info-card revenue-card admin-edit-card-desing" style="width:100%; padding: 20px !important;">
                                                <select class="form-control-sm pull-right" style="width: 300px;" id="time_table">
                                                </select>

                                                <!-- Table with stripped rows -->
                                                <div class="table-responsive" id="part21">
                                                    <table class="table table-hover cell-border" id="tbll" style="width:100%;padding-top: 10px;">

                                                        <thead>
                                                            <tr>                                                       
                                                                <th >id</th>
                                                                <th >Employee Name</th>
                                                                <th >Designation</th>
                                                                <th >Telephone No</th>
                                                                <th >Extension</th>
                                                                <th >Mobile No</th>
                                                                <th >Email Address </th>
                                                                <!--<th >department</th>-->
                                                                <!--<th >branch</th>-->
                                                                <!--<th>birthday</th>-->
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
                </div>
                </div>
            </section>
        </main><!-- End #main -->

        <%@include file="jspf/scripts.jspf" %>

        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>


        <script>
            var time_table = new SlimSelect({
                select: '#time_table',
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
            $('#time_table').data('select', time_table);

            var filter = '';
            filter = "2";
            $('#time_table').change(function () {

                if ($(this).val()) {
                    filter = $(this).val();
                    brnchtable.ajax.reload();
                }
            });

            $.fn.dataTable.ext.errMode = 'none';

            var brnchtable = $('#tbll').DataTable({
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
                    {"data": "id", className: "text-right", "visible": false},
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
        </script>
    </body>
</html>

