<%-- 
    Document   : admin_system
    Created on : 19 Oct 2023, 2:46:25 pm
    Author     : L580
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fintrex - Intranet</title>
        <%@include file="jspf/header.jspf" %>
    </head>
    <body>
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
        </style>
        <div class="tab-pane fade show active profile-overview" id="profile-overview">

            <div class="page-wrapper">
                <div class="page-body">

                    <div class="row" id="tableSection">

                        <div class="card" >
                            <div class="card-header">
                                <h4>Birthday Wishes</h4>

                            </div>
                            <div class="card-block p-b-0">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered m-b-0" id="tbll">
                                        <thead>
                                            <tr>
                                                <th>id</th>
                                                <th>BirthDay</th>
                                                <th>Name</th>                                             
                                                <th>Wish</th>                                             
                                                <th style="width:1px;">Status</th>
                                                <th style="width:1px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--                            <div class="card-footer">
                                                            <div class="text-right">
                                                                <button id="addSytemsBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add Promotions</button>
                                                            </div>
                                                        </div>-->
                        </div>

                    </div>


                    <div class="" id="formSection" style="display: none">
                        <div class="card">
                            <div class="card-header">
                                <!-- Your card header content here -->
                            </div>
                            <div class="card-block p-b-0">
                                <!-- Your form content here -->

                                <div class="col-lg-6 col-12">
                                    <div class="form-group" style="width: 75rem">
                                        <label for="name">Heading<span class="text-danger">*</span></label>
                                        <input id="name" type="text" name="name" class="form-control"  required autocomplete="off">
                                    </div>
                                </div>

                                <div class="col-lg-6 col-12">
                                    <div class="form-group" style="width: 75rem">
                                        <label for="paragraph">Paragraph<span class="text-danger">*</span></label>
                                        <textarea id="para" type="text" name="paragraph" class="form-control" required autocomplete="off"></textarea>
                                    </div>
                                </div>

                            </div>

                            <!-- Card Footer -->
                            <div class="card-footer d-flex justify-content-end"> <!-- Align items to the end (right) -->
                                <button id="closeFormBtn" class="btn btn-sm waves-effect waves-light btn-secondary">Close</button>
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






            <script>
                $(document).on('click', '#closeFormBtn', function () {
                    $('#formSection').hide();
                    $('#tableSection').fadeIn();
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
                        "url": "birthday/wishes",
                        "contentType": "application/json",
                        "type": "POST",
                        "data": function (d) {
                            return JSON.stringify(d);
                        },
                        error: function (xhr, error, code) {
                            console.log(xhr);
                        }
                    },
                    "columns": [
                        {"data": "id", className: "text-right", "visible": false},
                        {"data": "birthday"},
                        {"data": "name"},
                        {"data": "wish"},
                        {"data": "status"}
                    ], "language": {
                        'loadingRecords': '&nbsp;',
                        'processing': '<div class="loader2"></div>'
                    },
                    "createdRow": function (row, data) {
                        let action_td = document.createElement('td');
                        $(action_td).addClass('text-center');
                        if (data['status'] === 'deactivate') {
                            $(action_td).append('<a href="javascript:void(0)" class="rerec"><i class="feather icon-refresh-cw f-w-600 f-16 text-c-blue"></i></a>');
                        } else {
                            $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="icon feather icon-edit f-w-600 f-16 m-r-10 text-c-green"></i></a><a href="javascript:void(0)" class="delrec"><i class="feather icon-trash-2 f-w-600 f-16 text-danger"></i></a>');
                        }

                        $(row).append(action_td);
                        setTableStatus($(row).find('td').eq(3));
                        $(row).data('id', data['id']);
                    }
                });
                function setTableStatus(td) {
                    if ($(td).html().trim().startsWith('active')) {
                        $(td).html('<label class="label label-success" style="white-space: nowrap">Active</label>');
                    } else if ($(td).html() === 'deactivate') {
                        $(td).html('<label class="label label-danger" style="white-space: nowrap">Deactivated</label>');
                    }
                }




                $(document).on('click', '.delrec', function () {
                    let id = $(this).parents('tr').data('id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "This Notice Will be Deleted!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, Proceed!',
                        showLoaderOnConfirm: true,
                        preConfirm: () => {
                            return fetch('birthday/deactivate-wish', {
                                method: 'POST',
                                body: new URLSearchParams({
                                    id: id
                                })
                            }).then(response => {
                                if (!response.ok) {
                                    throw new Error(response.statusText);
                                }
                                return response.json();
                            }).catch(error => {
                                Swal.showValidationMessage('Request failed:' + error);
                            });
                        },
                        allowOutsideClick: () => !Swal.isLoading()

                    }).then((result) => {
                        if (result.value) {
                            if (result.value.status !== 200) {
                                Swal.fire('Error!', result.value.msg, 'error');
                            } else {
                                Swal.fire('Successfull!', 'System has been Deactivated !', 'success');
                                dtable.ajax.reload();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                            }
                        }
                    });
                });
                $(document).on('click', '.rerec', function () {
                    let id = $(this).parents('tr').data('id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "System Will be Activated!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, Proceed!',
                        showLoaderOnConfirm: true,
                        preConfirm: () => {
                            return fetch('birthday/reactivate-wish', {
                                method: 'POST',
                                body: new URLSearchParams({
                                    id: id
                                })
                            }).then(response => {
                                if (!response.ok) {
                                    throw new Error(response.statusText);
                                }
                                return response.json();
                            }).catch(error => {
                                Swal.showValidationMessage('Request failed:' + error);
                            });
                        },
                        allowOutsideClick: () => !Swal.isLoading()

                    }).then((result) => {
                        if (result.value) {
                            if (result.value.status !== 200) {
                                Swal.fire('Error!', result.value.msg, 'error');
                            } else {
                                Swal.fire('Successfull!', 'System has been Activated !', 'success');
                                dtable.ajax.reload();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                            }
                        }
                    });
                });
                $(document).on('click', '.editrec', function () {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('birthday/details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;

                                console.log(data.heading);
                                $('#name').val(data.name);
                                $('#para').val(data.wish);
//                                $('#saveBtn').data('mode', 'update'); // Set the mode to 'update'
//                                $('#saveBtn').data('id', id);
//                                $('#saveBtn').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSection').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
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
