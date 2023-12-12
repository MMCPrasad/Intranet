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
                                    <table class="table table-hover table-bordered m-b-0" id="tbll">
                                        <thead>
                                            <tr>
                                                <!--<th>Id</th>-->
                                                <th>Name</th>
                                                <!--<th>User</th>
                                                    <th>User Type</th>
                                                    <th>ModBy</th>
                                                    <th>ModOn</th>-->
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
                                                        <input type="text" class="form-control" id="employeeBirthday">
                                                    </div>
                                                </div>

                                                <div class="row mb-1">
                                                    <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Branch</label>
                                                    <div class="col-sm-6">
                                                        <select class="form-control-sm pull-right" id="time_table">  </select>                                      
                                                    </div>
                                                </div>
                                                <div class="row mb-1" id="divHide">
                                                    <label for="" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Department</label>
                                                    <div class="col-sm-6">
                                                        <select class="form-control-sm pull-right" id="time_table0">  </select>                                      
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="card-footer">
                                                <div class="text-right">
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


        <input type="text" id="inputString" placeholder="Enter your string">
        <button id="sendBtn">Send</button>
        <br>

        <input type="file" id="file">
        <button id="sendBtn">Send</button>

        <script>

            var selectElement = document.getElementById("time_table");
            var hideDiv = document.getElementById("divHide");

            hideDiv.style.display = "none";

            selectElement.addEventListener("change", function () {
                if (selectElement.value === "1") {
                    hideDiv.style.display = "block";
                } else {
                    hideDiv.style.display = "none";
                }
            });



            document.getElementById('sendBtn').addEventListener('click', function () {
                let inputString = document.getElementById('inputString').value; // Get the input string from an input field

                let fd = new FormData();
                fd.append("data", inputString); // Append the input string to the FormData object

                fetch('dataUpload', {
                    method: 'POST',
                    body: fd
                }).then((res) => res.text()).then((res) => {
                    console.log(res);
                });
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

            document.getElementById('sendBtn').addEventListener('click', function () {
                let fd = new FormData();

                let files = document.getElementById('file').files;
                fd.append("file", files[0]);


                fetch('fileUpload', {
                    method: 'POST',
                    body: fd
                }).then((res) => res.text()).then((res) => {
                    console.log(res);
                });


            });

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


        </script>
        <script>

            var selectElement = document.getElementById("time_table");
            var hideDiv = document.getElementById("divHide");

            hideDiv.style.display = "none";

            selectElement.addEventListener("change", function ()
            {
                if (selectElement.value === "1") {
                    hideDiv.style.display = "block";
                } else {
                    hideDiv.style.display = "none";
                }
            }
            );



            var filter = '';
            filter = "2";
            $('#time_table').change(function () {

                if ($(this).val()) {
                    filter = $(this).val();
                    dtable.ajax.reload();
                }
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
                    //                    {"data": "username", "visible": false},
                    {"data": "name"},
                    {"data": "designation", "visible": false},
                    {"data": "telephone", "visible": false},
                    {"data": "extension", "visible": false},
                    {"data": "mobile", "visible": false},
                    {"data": "email", "visible": false},
                    {"data": "department", "visible": false},
                    {"data": "branch", "visible": false},
                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                }
            });
        </script>



    </body>
</html>
