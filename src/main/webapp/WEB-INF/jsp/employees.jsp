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
        </style>
        <div class="tab-pane fade show active profile-overview" id="profile-overview">

            <div class="page-wrapper">
                <div class="page-body">

                    <div class="row" id="tableSection">

                        <div class="card" >
                            <div class="card-header">
                                <h6>Users</h6>

                            </div>
                            <div class="card-block p-b-0">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered m-b-0" id="tblemp">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Name</th>                                             
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
                                    <button id="addUserBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add User</button>
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
                                    <h5 class="card-title">Employee <span>| Basic Details</span></h5>

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
                                                            <label for="inputTime" class="col-sm-4 col-form-label allFontByCustomerEdit">Employee's Name</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="employeeName">
                                                            </div>
                                                        </div>

                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Designation</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="employeeDesignation">
                                                            </div>
                                                        </div>

                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Employee's Telephone</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="employeeTele">
                                                            </div>
                                                        </div>
                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Employee's Extension</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="employeeExtension">
                                                            </div>
                                                        </div>
                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Employee's Mobile</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="employeeMobile">
                                                            </div>
                                                        </div>


                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Employee's Email</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="employeeEmail">
                                                                <input type="text" class="form-control" id="employeeEmailForgenerateID" hidden >
                                                            </div>
                                                        </div>


                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Employee's Birthday</label>
                                                            <div class="col-sm-6">
                                                                <input type="date" id="employeeBirthday" name="date">
                                                            </div>
                                                        </div>

                                                        <div class="row mb-1">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Branch</label>
                                                            <div class="col-sm-6">
                                                                <select class="form-control-sm pull-right" id="branch">  </select>                                      
                                                            </div>
                                                        </div>
                                                        <div class="row mb-1" id="divHide">
                                                            <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Department</label>
                                                            <div class="col-sm-6">
                                                                <select class="form-control-sm pull-right" id="department">  </select>                                      
                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="col-lg-6 col-12 ">
                                                        <div class="card-footer d-flex justify-content-end">
                                                            <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-primary"><i class="icon feather icon-save"></i>Save</button>
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
                        "url": "employee/employees",
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
                        setTableStatus($(row).find('td').eq(1));
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


                var branch = new SlimSelect(
                        {select: '#branch',
                            placeholder: "Branch",
                            ajax: function (search, callback) {
                                fetch('branch/search-branches', {
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


                var department = new SlimSelect({
                    select: '#department',
                    placeholder: "Department",
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
                //            $('#time_table0').data('select', time_table0);

                function onClick()
                {
                    var filter = '';
                    filter = "2";
                    $('#branch').change(function () {

                        if ($(this).val()) {
                            filter = $(this).val();
                            dtable.ajax.reload();
                        }
                    });


                }
            </script>
            <script>
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
                    $('#formSection').find('select').each(function () {
                        if ($(this).data('select')) {
                            if ($(this).data('select').ajax) {
                                $(this).data('select').data.data = [];
                            }
                            $(this).data('select').set('');
                        }
                    });
                }
                $(document).on('click', '.editrec', function () {

                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('employee/update-employee/' + id).then(resp => resp.json())
                            .then((data) => {
                                clearForm();
                                console.log(data.name);
                                $('#employeeName').val(data.name);
                                $('#employeeDesignation').val(data.designation);
                                $('#employeeTelephone').val(data.telephone);
                                $('#employeeExtention').val(data.extention);
                                $('#employeeMobile').val(data.mobile);
                                $('#employeeEmail').val(data.email);
                                $('#employeeBirthday').val(data.dob);
                                $('#branch').val(data.branch);
                                $('#department').val(data.department);
                                $('#saveBtn').data('mode', 'update');
                                $('#saveBtn').html('<i class="icon feather icon-save"></i>Update');
                                $('#saveBtn').data('id', id);
                                $('#formSection').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                });

                $('#saveBtn').click(function () {

                    const formData = new FormData();

                    formData.append('name', $('#employeeName').val().trim());
                    formData.append('designation', $('#employeeDesignation').val().trim());
                    formData.append('telephone', $('#employeeTele').val());
                    formData.append('extention', $('#employeeExtension').val());
                    formData.append('mobile', $('#employeeMobile').val());
                    formData.append('email', $('#employeeEmail').val());
                    formData.append('dob', $('#employeeBirthday').val());
                    formData.append('branch', $('#branch').val());

                    if ($('#branch').val() === '1') {
                        formData.append('department', $('#department').val());
                    }
                    return fetch((($('#saveBtn').data('mode') === 'save') ? 'employee/save-employee' : 'employee/update-employee'), {
                        method: 'POST',
                        body: formData
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        } else {
                            Swal.fire('Successfull!', 'Employee has been successfully saved');
                            clearForm();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();

                        }
                        return response.json();
                    });
                });

                var selectElement = document.getElementById("branch");
                var hideDiv = document.getElementById("divHide");

                hideDiv.style.display = "none";

                selectElement.addEventListener("change", function () {
                    if (selectElement.value === "1") {
                        hideDiv.style.display = "flex";
                    } else {
                        hideDiv.style.display = "none";
                    }
                });

                function showHiddenDiv() {
                    var select = document.getElementById("select_level");
                    var recruit = document.getElementById("recruit");

                    if (select.selectedIndex === 0) { // Check if the first option is selected
                        recruit.style.display = "block"; // Show the hidden div
                    } else {
                        recruit.style.display = "none"; // Hide the hidden div
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
                            return fetch('employee/deactivate-employee', {
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
                            return fetch('employee/reactivate-employee', {
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
