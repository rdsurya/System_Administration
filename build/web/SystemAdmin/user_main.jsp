<%-- 
    Document   : user_main
    Created on : Feb 16, 2017, 3:17:16 AM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dBConn.Conn"%>
<% Conn conn = new Conn();%>
<!-- Add Part Start -->
<!-- Add Button Start -->
<h4 style="padding-top: 30px;padding-bottom: 35px; font-weight: bold">
    USER MANAGEMENT
    <span class="pull-right">
        <button id="UM_btnAddNew" class="btn btn-success" data-status="pagado" data-toggle="modal" data-id="1" data-target="#UM_detail" style=" padding-right: 10px;padding-left: 10px;color: white;"><a data-toggle="tooltip" data-placement="top" title="Add Items" id="test"><i class=" fa fa-plus" style=" padding-right: 10px;padding-left: 10px;color: white;"></i></a>ADD User</button>
    </span>
</h4>
<!-- Add Button End -->


<!-- Add Modal Start -->
<div class="modal fade" id="UM_detail" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 50%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Add New User</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form class="form-horizontal" id="addForm">

                    <div class="col-md-12">

                        <div class="row">
                            <hr/><h4>Basic Personal Information</h4><br/>


                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Name</label>
                                    <div class="col-md-8">
                                        <input id="UM_name" type="text" placeholder="Staff Name" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Title</label>
                                    <div class="col-md-8">
                                        <select id="UM_title" class="form-control input-md">
                                            <option value="0">-- Select title --</option>
                                            <%
                                                String sqlTitle = "Select detail_reference_code, description FROM adm_lookup_detail WHERE master_reference_code = '0026'";
                                                ArrayList<ArrayList<String>> dataTitle = conn.getData(sqlTitle);

                                                for (int i = 0; i < dataTitle.size(); i++) {

                                            %><option value="<%=dataTitle.get(i).get(0)%>"><%=dataTitle.get(i).get(1)%></option><%
                                                }
                                            %>

                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div> <!--end of first row--> 

                        <div class="row"> <!--start second row-->

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">IC/ID No</label>
                                    <div class="col-md-8">
                                        <input id="UM_icno"  type="text" placeholder=" Staff IC or ID Number" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Email</label>
                                    <div class="col-md-8">
                                        <input id="UM_email"  type="text" placeholder="satff.email@example.com" class="form-control input-md" maxlength="100">
                                    </div>
                                </div>
                            </div>

                        </div> <!--end second row-->

                    </div> <!--end basic info-->

                    <div class="col-md-12"> <!-- start of user id information -->


                        <div class="row">
                            <hr/><h4>User ID Information</h4><br/>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">User ID</label>
                                    <div class="col-md-8">
                                        <input id="UM_userID"  type="text" placeholder="User ID" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Health Facility</label>
                                    <div class="col-md-8">
                                        <input id="UM_hfc"  type="text" placeholder="User ID" class="form-control input-md">
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Password</label>
                                    <div class="col-md-8">
                                        <input id="UM_password"  type="password" placeholder="User ID" class="form-control input-md" maxlength="10">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Retype Password</label>
                                    <div class="col-md-8">
                                        <input id="UM_password2"  type="password" placeholder="User ID" class="form-control input-md" maxlength="10">
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div> <!-- end of user id information -->

                    <div class="col-md-12"> <!-- start of detail information -->

                        <div class="row">
                            <hr/><h4>Detail Information</h4><br/>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Date of Birth</label>
                                    <div class="col-md-8">
                                        <input id="UM_dob"  type="text" placeholder="DD/MM/YYYY" class="form-control input-md" readonly="true">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Gender</label>
                                    <div class="col-md-8">
                                        <select id="UM_gender" class="form-control input-md">
                                            <option value="0">-- Select gender --</option>
                                            <option value="001">Male</option>
                                            <option value="002">Female</option>
                                            <option value="003">Other</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Occupation</label>
                                    <div class="col-md-8">
                                        <select id="UM_occupation" class="form-control input-md">
                                            <option value="0">-- Select occupation --</option>  
                                            <%
                                                String sqlOccupation = "Select detail_reference_code, description FROM adm_lookup_detail WHERE master_reference_code = '0050'";
                                                ArrayList<ArrayList<String>> dataOccupation = conn.getData(sqlOccupation);

                                                for (int i = 0; i < dataOccupation.size(); i++) {

                                            %><option value="<%=dataOccupation.get(i).get(0)%>"><%=dataOccupation.get(i).get(1)%></option><%
                                                }
                                            %>  
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Nationality</label>
                                    <div class="col-md-8">
                                        <select id="UM_nationality" class="form-control input-md">
                                            <option value="0">-- Select nationality --</option>  
                                            <%
                                                String sqlNationality = "Select detail_reference_code, description FROM adm_lookup_detail WHERE master_reference_code = '0011'";
                                                ArrayList<ArrayList<String>> dataNationality = conn.getData(sqlNationality);

                                                for (int i = 0; i < dataNationality.size(); i++) {

                                            %><option value="<%=dataNationality.get(i).get(0)%>"><%=dataNationality.get(i).get(1)%></option><%
                                                }
                                            %>  
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Office Tel No</label>
                                    <div class="col-md-8">
                                        <input id="UM_officeTel"  type="text" placeholder="Office telephone (Optional)" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Home Tel No</label>
                                    <div class="col-md-8">
                                        <input id="UM_homeTel"  type="text" placeholder="Home telephone number (Optional)" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Mobile Phone</label>
                                    <div class="col-md-8">
                                        <input id="UM_mobile"  type="text" placeholder="Mobile phone number" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Fax No</label>
                                    <div class="col-md-8">
                                        <input id="UM_fax"  type="text" placeholder="Fax number (Optional)" class="form-control input-md" maxlength="30">
                                    </div>
                                </div>
                            </div>

                        </div>


                    </div> <!-- end of detail information -->

                    <div class="col-md-12"> <!-- start of additional information -->

                        <div class="row">
                            <hr/><h4>Additional Information</h4><br/>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">User ID Category</label>
                                    <div class="col-md-8">
                                        <input id="UM_userIDCategory" type="text" placeholder="(Optional)" class="form-control input-md" maxlength="10">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">User Type</label>
                                    <div class="col-md-8">
                                        <input id="UM_userType"  type="text" placeholder="(Optional)" class="form-control input-md" maxlength="10">
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">User Group</label>
                                    <div class="col-md-8">
                                        <input id="UM_userGroup" type="text" placeholder="(Optional)" class="form-control input-md" maxlength="10">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">User Classification</label>
                                    <div class="col-md-8">
                                        <input id="UM_userClass"  type="text" placeholder="(Optional)" class="form-control input-md" maxlength="10">
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">Start Date</label>
                                    <div class="col-md-8">
                                        <input id="UM_startDate" type="text" placeholder="DD/MM/YYYY"  class="form-control input-md" readonly="true">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">End Date</label>
                                    <div class="col-md-8">
                                        <input id="UM_endDate"  type="text" placeholder="DD/MM/YYYY" class="form-control input-md" readonly="true">
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="textinput">User ID Status</label>
                                    <div class="col-md-8">
                                        <select id="UM_userIDStatus" class="form-control input-md">
                                            <option value="">-- Select gender --</option>
                                            <option value="0">Active</option>
                                            <option value="1">Terminated</option>
                                            <option value="2">Suspended</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div><hr/>

                    </div> <!-- end of additional information -->


                </form>
                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="UM_brnAdd">Add</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="reset" id="btnReset" class="btn btn-default btn-block btn-lg" data-dismiss="modal" role="button" >Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Add Modal End -->                         
<!-- Add Part End -->


<script>

    w3IncludeHTML();

    $(document).ready(function () {

        $('#UM_dob').datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd/mm/yy'
        });

        $('#UM_startDate').datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd/mm/yy'
        });

        $('#UM_endDate').datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd/mm/yy'
        });

        function reset() {
            document.getElementById("masterCode").value = "";
            document.getElementById("masterName").value = "";
            document.getElementById("masterSource").value = "";
            document.getElementById("status1").checked = false;
            document.getElementById("status2").checked = false;
        }

        $('#btnReset').on('click', function () {
            reset();
        });

        $('#UM_brnAdd').on('click', function () {

            var masterCode = $('#masterCode').val();
            var masterName = $('#masterName').val();
            var masterSource = $('#masterSource').val();
            var status = $('input[name="status"]:checked').val();

            if (masterCode === "") {
                bootbox.alert("Fill in the Master Code");
                $('#masterCode').focus();

            } else if (masterName === "") {
                bootbox.alert("Complete The Fields");
                $('#masterName').focus();

            } else if (status !== "1" && status !== "0") {
                alert("Select Any Status");
            } else {

                var data = {
                    masterCode: masterCode,
                    masterName: masterName,
                    masterSource: masterSource,
                    status: status
                };

                $.ajax({
                    url: "master_lookup_insert.jsp",
                    type: "post",
                    data: data,
                    timeout: 10000,
                    success: function (datas) {

                        if (datas.trim() === 'Success') {

                            $('#masterTable').load('master_lookup_table_1.jsp');
                            $('#UM_detail').modal('hide');
                            bootbox.alert("New master lookup code is added");
                            reset();

                        } else if (datas.trim() === 'Failed') {

                            bootbox.alert("Insertion failed!");
                            //$('#UM_detail').modal('hide');
                            reset();

                        } else {
                            bootbox.alert(datas.trim());
                            document.getElementById("masterCode").value = "";
                            $('#masterCode').focus();
                        }

                    },
                    error: function (err) {
                        console.log("Ajax Is Not Success");
                    }

                });
            }

        });

        $('#UM_btnAddNew').on('click', function () {

            $.ajax({
                url: 'master_lookup_getMasterCode.jsp',
                type: 'POST',
                timeout: 5000,
                success: function (data) {

                    $('#masterCode').val(data.trim());
                },
                error: function (err) {

                    console.log("Ajax Is Not Success");
                }
            });
        });


    });



</script>

