<%-- 
    Document   : systems
    Created on : Aug 21, 2023, 3:24:58 PM
    Author     : cpm.999cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>
        <link rel = "stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    </head>
    <body>
        <%@include file="jspf/loader.jspf" %>
        <style>


            .card-registration .select-input.form-control[readonly]:not([disabled]) {
                font-size: 1rem;
                line-height: 2.15;
                padding-left: .75em;
                padding-right: .75em;
            }
            .card-registration .select-arrow {
                top: 13px;
            }
            .card{
                width: 90em;
                justify-content: center;
                margin: auto;

            }
            .pagetitle h3 {
                font-size: 28px;
                margin-bottom: 0;
                font-weight: 600;
                color: #31d422;
            }

        </style>
        <div class="tab-pane fade show active profile-overview" id="profile-overview">

            <div class="page-wrapper">
                <div class="page-body">

                    <div class="row" id="tableSection">
                        <div class="pagetitle" style=" padding-left: 5rem; "><h3>Admin Dashboard</h3>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="/Intranet/">Home</a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a href="admincontrol">Admin</a> 
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a >Ideas</a> 
                                    </li>

                                </ol>
                            </nav>
                        </div>
                        <div class="card" >
                            <div class="card-header">
                                <h4>Review Ideas</h4>

                            </div>
                            <div class="card-block p-b-0">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered m-b-0" id="tbll">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>EPF</th>                                             
                                                <th>Employee Name</th>                                             
                                                <th>Idea</th>                                             
                                                <th>Result</th>                                             
                                                <th> Department</th>                                             
                                                <th>Input Date</th>                                             
                                                <th>Last Modified Action</th>                                             
                                                <th>Last Modified Comment</th>                                             
                                                <th>Responsibility</th>                                             
                                                <th>Last Modified Date </th>                                             

                                                <th style="width:1px;">Action</th>
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



        <div class="modal" id="ideaModel">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add a Review</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-hover table-bordered m-b-0" id="ideatbl">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Action</th>                                             
                                    <th>Comment</th>                                             
                                    <th>Responsibility</th>                                             
                                    <th>Modified User</th>                                             
                                    <th>Last Modified Date </th>                                             
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                        <div class="row mb-1" style="margin-top: 3rem;">

                            <div class="col-sm-6">
                                <label for="" class="col-sm-4 ">Responsibility</label>
                                <select class="form-control-sm pull-right" id="ideaRe">  </select>                                      
                            </div>
                            <div class="col-sm-6">
                                <label for="" class="col-sm-4 " >Action</label>
                                <select class="form-control-sm pull-right"  id="ideaAc">  </select>                                      
                            </div>
                        </div>
                        <div class="row mb-1" style="margin-top: 3rem;">
                            <div class="col-lg-6 col-12">
                                <div class="form-group" style="width: 60rem">
                                    <label for="review">Review<span class="text-danger">*</span></label>
                                    <textarea id="review"  type="text" name="review" class="form-control" required autocomplete="off"></textarea>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button id="saveBtn" type="submit" name="save_ideas_btn" class="btn btn-primary btn-sm">Submit</button>
                            <button type="button" id="close_ideas_btn" class="btn btn-warning btn-sm" data-dismiss="modal">Close</button>
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
        <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
        <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>



        <script>
            var cid;

            $('#tbll').on('click', '.editrec', function () {

                $('#ideaModel').modal('show');
                let cid = $(this).parents('tr').data('id');
                fetch('idea/update-idea/' + cid).then(resp => resp.json())
                        .then((data) => {
                            clearForm();
                            var IdeaTable = $('#ideatbl').DataTable({
                                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                                "pageLength": 5,
                                "ordering": true,
                                "autoWidth": false,
                                "processing": true,
                                "serverSide": true,
                                "order": [[0, "desc"]],
                                "searchHighlight": true,
                                "searchDelay": 350,
                                "ajax": {
                                    "url": "idea/ideass",
                                    "contentType": "application/json",
                                    "type": "POST",
                                    "data": function (d) {
                                        d.data = cid;
                                        return JSON.stringify(d);
                                    },
                                    error: function (xhr, error, code) {
                                        console.log(xhr);
                                        console.log(code);
                                    }
                                },
                                "columns": [
                                    {"data": "id", className: "text-right", "visible": false},
                                    {"data": "lastAction"},
                                    {"data": "comment"},
                                    {"data": "responsibility"},
                                    {"data": "modBy"},
                                    {"data": "lastModDate"}
                                ], "language": {
                                    'loadingRecords': '&nbsp;',
                                    'processing': '<div class="loader2"></div>'
                                }

                            });

                            $('#review').val(data.comment);
                            $('#saveBtn').data('mode', 'update');
                            $('#saveBtn').html('<i class="icon feather icon-save"></i>Update');
                            $('#saveBtn').data('id', cid);
                            $('#formSection').fadeIn();
                            $('#tableSection').hide();
                            finishLoadDiv($('#tableSection'));
                        });
            });

            var ideaRe = new SlimSelect({
                select: '#ideaRe',
                placeholder: "~Select~",
                ajax: function (search, callback) {
                    fetch('idea/search-res', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });
            var ideaAc = new SlimSelect({
                select: '#ideaAc',
                placeholder: "~Select~",
                ajax: function (search, callback) {
                    fetch('idea/search-action', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });
            $.fn.dataTable.ext.errMode = 'none';
            var dtable = $('#tbll').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": true,
                "autoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[0, "desc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "idea/ideas",
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
                    {"data": "epf"},
                    {"data": "employee"},
                    {"data": "idea"},
                    {"data": "result"},
                    {"data": "department"},
                    {"data": "inputDate"},
                    {"data": "lastAction"},
                    {"data": "comment"},
                    {"data": "responsibility"},
                    {"data": "lastModDate"}
                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                },
                "createdRow": function (row, data) {
                    let action_td = document.createElement('td');
                    $(action_td).addClass('text-center');
                    $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec" ><i class="icon feather icon-edit f-w-600 f-16 m-r-10 text-c-green"></i></a>');
                    $(row).append(action_td);
                    setTableStatus($(row).find('td').eq(1));
                    $(row).data('id', data['id']);
                }
            });
            $.fn.dataTable.ext.errMode = 'none';
            function clearForm() {
                $('#formSection').find('input[type!=search]').val('');
                $('#formSection').find('textarea[type!=search]').val('');
                $('#formSection').find('select').each(function () {
                    if ($(this).data('select')) {
                        if ($(this).data('select').ajax) {
                            $(this).data('select').data.data = [];
                        }
                        $(this).data('select').set('');
                    }
                });
            }

            $(document).ready(function () {
                // Add click event handler to both close buttons
                $('#close_ideas_btn, .close').click(function () {
                    // Hide the modal with ID "ideaModel"
                    $('#ideaModel').modal('hide');

                    // Optionally, you can use $('#ideaModel').hide(); if you prefer hiding without using modal('hide')

                    // Fade in the element with ID "tableSection"
                    $('#tableSection').fadeIn();
                });
            });





            $('#saveBtn').click(function () {
                const isUpdate = ($('#saveBtn').data('mode') === 'update');
                return fetch(isUpdate ? 'idea/update-idea' : '', {
                    method: 'POST',
                    body: new URLSearchParams({
                        id: $('#saveBtn').data('id'),
                        responsibility: document.getElementById('ideaRe').value,
                        lastAction: document.getElementById('ideaAc').value,
                        comment: document.getElementById('review').value,
                    })
                }).then(response => {
                    if (!response.ok) {
                        throw new Error(response.statusText);
                    } else {
                        Swal.fire('Successfull!', 'Notice has been successfully saved');
                        clearForm();
                        $('#ideaModel').modal('hide');
//                        $('#ideaModel').hide();
                        $('#tableSection').fadeIn();
                        dtable.ajax.reload();
                    }
                    return response.json();
                });
            });
            $.fn.dataTable.Debounce = function (table) {
                var tableId = table.settings()[0].sTableId;
                $('.dataTables_filter input[aria-controls="' + tableId + '"]')
                        .unbind()
                        .bind('input', (delay(function (e) {
                            table.search($(this).val()).draw();
                            return;
                        }, 500)));
            };
            function delay(callback, ms) {
                var timer = 0;
                return function () {
                    var context = this, args = arguments;
                    clearTimeout(timer);
                    timer = setTimeout(function () {
                        callback.apply(context, args);
                    }, ms || 0);
                };
            }

            var debounce = new $.fn.dataTable.Debounce(dtable);




        </script>



    </body>
</html>
