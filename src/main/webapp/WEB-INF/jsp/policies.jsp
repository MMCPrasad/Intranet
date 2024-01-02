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
                                        <a >Policies</a> 
                                    </li>

                                </ol>
                            </nav>
                        </div>
                        <div class="card" >
                            <div class="card-header">
                                <h4>Policies</h4>

                            </div>
                            <div class="card-block p-b-0">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered m-b-0" id="tblemp">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Name</th>                                             
                                                <th>Ent On</th>                                             
                                                <th>Ent By</th>                                             
                                                <th style="width:1px;">Status</th>
                                                <th style="width:1px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="text-right">
                                    <button id="addUserBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add Policy</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="" id="formSection" style="display: none">
                        <div class="card">
                            <div class="card-block p-b-0">
                                <div class="card-header">
                                    <div class="card-header-right">
                                        <ul class="list-unstyled card-option">
                                            <li><i class="feather icon-x cls-card"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body" style=" padding-bottom: 0px;" >
                                    <h5 class="card-title">Policies </h5>

                                    <div class="row g-3 d-flex">
                                        <div class=" col-md-12" id="part1">
                                            <div class="">
                                                <div class="card-body">
                                                    <div id="showemployeeDetailsNew">
                                                        <div class="col-md-12" hidden>
                                                            <label class="col-sm-3 col-form-label allFontByCustomerEdit">Customer id</label>
                                                            <input type="text" class="form-control" required id="cusidForSearchNewUserPage" value=0 >
                                                        </div>

                                                        <div class="row mb-1">
                                                            <label for="inputTime" class="col-sm-4 col-form-label allFontByCustomerEdit">Policy File Name</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="name">
                                                            </div>
                                                        </div>


                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Policy Type</label>
                                                            <div class="col-sm-6">
                                                                <select class="form-control-sm pull-right" id="type">  </select>                                      
                                                            </div>
                                                        </div>
                                                        <div class="row mb-1" id="divHide" style="display: none;">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Policies & Procedure Manuals</label>
                                                            <div class="col-sm-6">
                                                                <select class="form-control-sm pull-right" id="mannual">  </select>                                      
                                                            </div>
                                                        </div>
                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Department </label>
                                                            <div class="col-sm-6">
                                                                <select class="form-control-sm pull-right" id="department">  </select>                                      
                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="col-lg-6 col-12">
                                                        <div class="form-group" style="width: 75rem">
                                                            <label for="file">Upload PDF Here<span class="text-danger">*</span></label>
                                                            <input id="file" type="file" multiple="">
                                                            <div class="card-footer d-flex justify-content-end">
                                                                <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-primary"><i class="icon feather icon-save"></i>Save</button>
                                                            </div>
                                                        </div>



                                                        <div class="col-lg-6 col-12 ">

                                                        </div> 
                                                    </div>

                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div></div>

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
                $.fn.dataTable.ext.errMode = 'none';

                var dtable = $('#tblemp').DataTable({
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
                        "url": "policy/policies",
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
                        {"data": "name"},
                        {"data": "ent_on"},
                        {"data": "ent_by"},
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


                var type = new SlimSelect(
                        {select: '#type',
                            placeholder: "Policy Type",
                            ajax: function (search, callback) {
                                fetch('policy/search-type', {
                                    method: 'POST',
                                    body: new URLSearchParams({search: search || ''})
                                }).then(res => res.json()).then((data) => {
                                    callback(data);
                                });
                            },
                            allowDeselect: true,
                            deselectLabel: '<span class="red">✖</span>'
                        });
                //            $('#time_table').data('select', time_table);


                var mannual = new SlimSelect({
                    select: '#mannual',
                    placeholder: "Procedure Mannuals",
                    ajax: function (search, callback) {
                        fetch('policy/search-manual', {
                            method: 'POST',
                            body: new URLSearchParams({search: search || ''})
                        }).then(res => res.json()).then((data) => {
                            callback(data);
                        });
                    },
                    allowDeselect: true,
                    deselectLabel: '<span class="red">✖</span>'
                });
                var department = new SlimSelect({
                    select: '#department',
                    placeholder: "Department Policy",
                    ajax: function (search, callback) {
                        fetch('policy/search-deppolicy', {
                            method: 'POST',
                            body: new URLSearchParams({search: search || ''})
                        }).then(res => res.json()).then((data) => {
                            callback(data);
                        });
                    },
                    allowDeselect: true,
                    deselectLabel: '<span class="red">✖</span>'
                });



            </script>
            <script>

                $(document).on('click', '.editrec', function () {

                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('policy/details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;

                                $('#name').val(data.name);

                                $('#saveBtn').data('mode', 'update'); // Set the mode to 'update'
                                $('#saveBtn').data('id', id);
                                $('#saveBtn').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSection').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                });
                document.getElementById('saveBtn').addEventListener('click', function () {
                    if ($('#name').val().trim() === '') {
                        Swal.fire("Empty Name!", "Please Enter a Valid Name!", "warning");
                        return;
                    }
                    if ($('#type').val().trim() === '') {
                        Swal.fire("Empty type!", "Please Enter a Valid Type!", "warning");
                        return;
                    }
                    if ($('#subtype').val().trim() === '') {
                        Swal.fire("Empty subtype!", "Please Enter a Valid subtype!", "warning");
                        return;
                    }
                    let mode = $('#saveBtn').data('mode'); // Get the mode (save or update) from the button's data

                    if (mode === 'save') {
                        // Handle the 'save' action
                        let fd = new FormData();
                        let file = document.getElementById('file').files;
                        let name = document.getElementById('name').value;
                        fd.append('name', name);
                        let type = document.getElementById('type').value;
                        fd.append('type', type);
                        let subtype = document.getElementById('department').value;
                        fd.append('subtype', subtype);



                        for (var i = 0; i < file.length; i++) {
                            fd.append('file', file[i]);
                        }
                        fetch('policy/save', {
                            method: 'POST',
                            body: fd
                        }).then(response => {
                            if (!response.ok) {
                                throw new Error(response.statusText);
                            } else {
                                Swal.fire('Successful!', 'Policy has been successfully saved', 'success');
                                clearForm();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                                dtable.ajax.reload();
                            }
                            return response.json();
                        });
                    } else if (mode === 'update') {
                        // Handle the 'update' action
                        let id = $('#saveBtn').data('id');
                        let name = $('#name').val();
                        let type = $('#type').val();
                        let subtype = $('#department').val();
                        let fileInput = document.getElementById('file');
                        let files = fileInput.files;

                        let formData = new FormData();
                        formData.append('id', id);
                        formData.append('name', name);
                        formData.append('type', type);
                        formData.append('subtype', department);

                        for (let i = 0; i < files.length; i++) {
                            formData.append('file', files[i]);
                        }

                        $.ajax({
                            url: 'policy/update', // Replace with the actual update endpoint
                            type: 'POST',
                            data: formData,
                            processData: false,
                            contentType: false,
                            success: function (response) {
                                if (response.status === 200) {
                                    Swal.fire('Successful!', 'Policy details updated successfully', 'success');
                                    clearForm();
                                    $('#formSection').hide();
                                    $('#tableSection').fadeIn();
                                    dtable.ajax.reload();
                                } else {
                                    Swal.fire('Successful!', 'Policy details updated successfully', 'success');
                                    clearForm();
                                    $('#formSection').hide();
                                    $('#tableSection').fadeIn();
                                    dtable.ajax.reload();
                                }
                            },
                            error: function (xhr, status, error) {
                                console.log(xhr);
                                console.log(status);
                                console.log(error);
                                Swal.fire('Error!', 'Failed to update system details', 'error');
                            }
                        });
                    }
                });


                $(document).on('click', '.delrec', function () {
                    let id = $(this).parents('tr').data('id');
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "This Policy Will be Deleted!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, Proceed!',
                        showLoaderOnConfirm: true,
                        preConfirm: () => {
                            return fetch('policy/deactivate-policy', {
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
                                Swal.fire('Successfull!', 'Policy has been Deactivated !', 'success');
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
                        text: "Policy Will be Activated!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, Proceed!',
                        showLoaderOnConfirm: true,
                        preConfirm: () => {
                            return fetch('policy/reactivate-policy', {
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
                                Swal.fire('Successfull!', 'Policy has been Activated !', 'success');
                                dtable.ajax.reload();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                            }
                        }
                    });
                });
                $('#addUserBtn').click(function () {
                    $('#saveBtn').data('mode', 'save');
                    $('#saveBtn').html('<i class="icon feather icon-save"></i>Save');
                    clearForm();
                    $('#tableSection').hide();
                    $('#formSection').fadeIn();
                });
                $('.cls-card').click(function () {
                    $('#formSection').hide();
                    $('#tableSection').fadeIn();
                });
                function clearForm() {
                    $('#formSection').find('input[type!=search]').val('');
                    $('#formSection').find('input[type!=search]').val('');
                    $('#formSection').find('select').each(function () {
                        if ($(this).data('select')) {
                            if ($(this).data('select').ajax) {
                                $(this).data('select').data.data = [];
                            }
                            $(this).data('select').set('');
                        }
                    });
                }









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
