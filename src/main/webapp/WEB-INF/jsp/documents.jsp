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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <!--<link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300&family=Marvel:wght@700&display=swap" rel="stylesheet">

    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <%@include file="jspf/navbar.jspf" %>

        <div class="container mt-5">
            <ul class="nav nav-tabs" id="myTabs">
                <li class="nav-item">
                    <a class="nav-link active" id="1" data-toggle="tab">Customer Protection Framework - Directions of CBSL</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="2" data-toggle="tab">Documents/ Reference Materials</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="3" data-toggle="tab">Trade Finance related Documents</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="4" data-toggle="tab">Read Me</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="5" data-toggle="tab">HR Portal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="6" data-toggle="tab">Whistleblowing Policy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="7" data-toggle="tab">Insurance Procedure Manual</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="8" data-toggle="tab">Branch Procedure Manual</a>
                </li>
            </ul>

        </div>
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
        <%@include file="jspf/scripts.jspf" %>

        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>


        <script>
            var filter = '';
            filter = '1';
            var dtable;
            $('.nav-link').on('click', function () {
                var tabNumber = $(this).attr('id');

                filter = tabNumber;

                dtable.ajax.reload();
            });

            dtable = $('#tbll').DataTable({
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
                    "url": "policy/manuals",
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

