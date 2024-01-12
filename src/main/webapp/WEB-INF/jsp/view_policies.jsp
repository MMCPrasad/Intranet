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
    </head>
    <body>

        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>

        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

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
        </style>


        <div class="row">
            <div class="row" style="padding: 2rem 5rem 0.1rem 5rem;">
                <div class="column">
                    <div class="card">
                        <div class="card-bodys">
                            <div class="card-header">
                                <div class="top" style="background-color: #cccccc;padding: 10px ">
                                    <h4>FINTREX FINANCE GENEREL POLICIES</h4>
                                </div>


                            </div>
                            <div class="col-md-12">
                                <div class="card info-card revenue-card admin-edit-card-desing" style="width:100%; padding: 20px !important;">
                                    <select class="form-control-sm pull-right" style="width: 30rem;" id="genpol">
                                    </select>

                                    <!-- Table with stripped rows -->
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-bodys">
                            <div class="card-header">
                                <div class="top" style="background-color: #cccccc;padding: 10px ">
                                    <h4>FINTREX FINANCE GENEREL PROCEDURE</h4>
                                </div>


                            </div>
                            <div class="col-md-12">
                                <div class="card info-card revenue-card admin-edit-card-desing" style="width:100%; padding: 20px !important;">

                                    <select class="form-control-sm pull-right" style="width: 30rem;" id="genpro">
                                    </select>
                                    <!-- Table with stripped rows -->
                                    <div class="table-responsive" id="part21">
                                        <table class="table table-hover cell-border" id="tbl4" style="width:100%;padding-top: 10px;">
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

            <hr style="margin-top: -0.5rem;margin-left:5rem;margin-right: 5rem;border: 2px solid #79c14e;">


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
    var genpol = new SlimSelect({
        select: '#genpol',
        placeholder: "Choose Department",
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
    $('#genpol').data('select', genpol);
    var filterx = '';
    filterx = "2";
    $('#genpol').change(function () {
        if ($(this).val()) {
            filterx = $(this).val();
            dtable2.ajax.reload();
        }
    });



    var genpro = new SlimSelect({
        select: '#genpro',
        placeholder: "Choose Department",
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
    $('#genpro').data('select', genpro);
    var filter = '';
    filter = "2";
    $('#genpro').change(function () {

        if ($(this).val()) {
            filter = $(this).val();
            dtable3.ajax.reload();
        }
    });

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
        "order": [[0, "desc"]],
        "searchHighlight": true,
        "searchDelay": 350,
        "ajax": {
            "url": "policy/generel-policy",
            "contentType": "application/json",
            "type": "POST",
            "data": function (d) {
                d.filter = filterx;
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
        ], "language": {
            'loadingRecords': '&nbsp;',
            'processing': '<div class="loader2"></div>'
        }, "createdRow": function (row, data) {
            $(row).find('td').first().html('<a target="_blank" href="policy/path/view/' + data['path'] + '#embedded=true&toolbar=0&navpanes=0">' + data['name'] + '</a>');
        }
    });
    var dtable3 = $('#tbl4').DataTable({
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
        "order": [[0, "desc"]],
        "searchHighlight": true,
        "searchDelay": 350,
        "ajax": {
            "url": "policy/generel-procedure",
            "contentType": "application/json",
            "type": "POST",
            "data": function (c) {
                c.filter = filter;
                return JSON.stringify(c);
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
        ], "language": {
            'loadingRecords': '&nbsp;',
            'processing': '<div class="loader2"></div>'
        }, "createdRow": function (row, data) {
            $(row).find('td').first().html('<a target="_blank" href="policy/path/view/' + data['path'] + '#embedded=true&toolbar=0&navpanes=0">' + data['name'] + '</a>');
        }
    });
</script>
</body>
</html>
