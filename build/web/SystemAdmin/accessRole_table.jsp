<%-- 
    Document   : accessRole_table
    Created on : Feb 24, 2017, 5:12:55 AM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<%
    Conn conn = new Conn();
%>

<table  id="THE_accessRoleTable"  class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <th>User ID</th>
    <th>Name</th>
    <th>Role</th>
    <th>Discipline</th>
    <th>Subdiscipline</th>
    <th>Status</th>
    <th>Update</th>
    <th>Delete</th>
</thead>
<tbody>

    <%
        //                      0           1           2           3           4                   5               6                   7               8
        String sql = "Select ua.user_id, user_name, ua.role_code, role_name, d.discipline_cd, discipline_name, subdiscipline_cd, subdiscipline_name, ifnull(ua.status, '') "
                + "FROM adm_users u join adm_user_access_role ua using(user_id) "
                + "join adm_role r on ua.role_code = r.role_code or ua.role_code = role_name "
                + "left join adm_discipline d on discipline_code = d.discipline_cd "
                + "left join adm_subdiscipline s on subdiscipline_code = subdiscipline_cd and discipline_code = s.discipline_cd ";
        ArrayList<ArrayList<String>> dataAccess = conn.getData(sql);

        int size = dataAccess.size();
        for (int i = 0; i < size; i++) {
    %>

    <tr>
<input id="ART_hidden" type="hidden" value="<%=String.join("|", dataAccess.get(i))%>">
<td><%= dataAccess.get(i).get(0)%></td> <!--id  -->   
<td><%= dataAccess.get(i).get(1)%></td> <!--name  --> 
<td><%= dataAccess.get(i).get(3)%></td> <!--role --> 
<td><%= dataAccess.get(i).get(5)%></td> <!--discipline   --> 
<td><%= dataAccess.get(i).get(7)%></td> <!--sub  -->
<td><%if(dataAccess.get(i).get(8).equals("1"))
                out.print("Inactive"); 
              else
                out.print("Active"); %></td> <!--status --> 

<td style="width: 5% ">

    <!-- Update Part Start -->
    <a id="ART_btnUpdate" data-toggle="modal" data-target="#ART_detail" style="cursor: pointer"><i class="fa fa-pencil-square-o" aria-hidden="true" style="display: inline-block;color: #337ab7;"></i></a>
</td>
<td style="width: 5% ">
    <!-- Delete Button Start -->
    <a id="ART_btnDelete" class="testing" style="cursor: pointer"><i class="fa fa-times" aria-hidden="true" style="display: inline-block;color: #d9534f;" ></i></a>
    <!-- Delete Button End -->
</td>
</tr>



<%
    }
%>

</tbody>
</table>

<!-- Modal Update -->
<div class="modal fade" id="ART_detail" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Update Subdiscipline</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form autocomplete="off" class="form-horizontal">

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Discipline Code</label>
                        <div class="col-md-8">
                            <input id="ART_disciplineCode" name="textinput" type="text" class="form-control input-md" readonly>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Subdiscipline Code</label>
                        <div class="col-md-8">
                            <input id="ART_subdisciplineCode"  type="text"  class="form-control input-md" readonly>
                        </div>
                    </div>    

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Subdiscipline Name</label>
                        <div class="col-md-8">
                            <input id="ART_subdisciplineName" class="form-control" maxlength="100"  >
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Type</label>
                        <div class="col-md-8">
                            <input id="ART_type" class="form-control" type="text" placeholder="Subdiscipline type (Optional)" maxlength="30" >
                        </div>
                    </div>

                   
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Status</label>
                        <div class="col-md-8">
                            <select class="form-control" name="tstatus" id="ART_status">
                                <option  value="0" >Active</option>
                                <option  value="1" >Inactive</option>
                            </select>
                        </div>
                    </div>
                    
                </form>
                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="ART_btnUpdateConfirm">Update</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="reset"  class="btn btn-default btn-block btn-lg" data-dismiss="modal" role="button">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal Update -->
<!-- Update Part End -->

<!-- Delete Part Start -->


<script type="text/javascript" charset="utf-8">

    $('#subdisciplineTable').off('click', '#THE_subdisciplineTable #ART_btnUpdate').on('click', '#THE_subdisciplineTable #ART_btnUpdate', function (e) {
        e.preventDefault();
        
        //get the row value
        var row = $(this).closest("tr");
        var rowData = row.find("#ART_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var disciplineCode = arrayData[0], subdisciplineCode = arrayData[2], subdisciplineName = arrayData[3], status = arrayData[5], type = arrayData[4];
        //set value in input on the top
        $('#ART_disciplineCode').val(disciplineCode);
        $('#ART_subdisciplineCode').val(subdisciplineCode);
        $('#ART_subdisciplineName').val(subdisciplineName);
        $('#ART_type').val(type);
       
        if (status === '1')
            $('#ART_status').val(1);
        else
            $('#ART_status').val(0);



        console.log(arrayData);
    });


    $('#ART_btnUpdateConfirm').on('click', function () {

        var disciplineCode = $('#ART_disciplineCode').val();
        var subdisciplineCode = $('#ART_subdisciplineCode').val();
        var subdisciplineName = $('#ART_subdisciplineName').val();
        var type = $('#ART_type').val();
        var status = $('#ART_status').val();

        if (subdisciplineName === "" || subdisciplineName === null) {
            alert("Please fill in the name");
            $('#ART_subdisciplineName').focus();

        } else if (status !== '1' && status !== '0') {
            alert("Please choose the status");
            $('#ART_status').focus();

        } else {

            var data = {
                disciplineCode: disciplineCode,
                subdisciplineCode: subdisciplineCode,
                subdisciplineName: subdisciplineName,
                type: type,
                status: status
            };

            $.ajax({
                url: "subdiscipline_update.jsp",
                type: "post",
                data: data,
                timeout: 10000,
                success: function (datas) {
                    console.log(datas.trim());
                    if (datas.trim() === 'Success') {
                        $('#subdisciplineTable').load('subdiscipline_table.jsp');
                        $(".modal-backdrop").hide();
                        //alert("Update Success");
                        
                        bootbox.alert({
                                    message: "Subdiscipline is updated",
                                    title: "Process Result",
                                    backdrop: true
                                });
                        
                    } else if (datas.trim() === 'Failed') {
                        alert("Update failed!");

                    }
                },
                error: function (err) {
                    alert("Error update!");
                }

            });
        }



    });

    $('#subdisciplineTable').off('click', '#THE_subdisciplineTable #ART_btnDelete').on('click', '#THE_subdisciplineTable #ART_btnDelete', function (e) {
        e.preventDefault();

        var row = $(this).closest("tr");
        var rowData = row.find("#ART_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var disciplineCode = arrayData[0], subdisciplineCode = arrayData[2];
        console.log(arrayData);
        
        bootbox.confirm({
            message: "Are you sure want to delete this item? " + disciplineCode + "-" + subdisciplineCode,
            title: "Delete Item?",
            buttons: {
                confirm: {
                    label: 'Yes',
                    className: 'btn-success'
                },
                cancel: {
                    label: 'No',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {

                if (result === true) {
                    
                    var data = {
                        subdisciplineCode: subdisciplineCode,
                        disciplineCode: disciplineCode
                    };

                    $.ajax({
                        url: "subdiscipline_delete.jsp",
                        type: "post",
                        data: data,
                        timeout: 10000, // 10 seconds
                        success: function (datas) {

                            if (datas.trim() === 'Success') {
                                $('#subdisciplineTable').load('subdiscipline_table.jsp');
                                //alert("Delete Success");
                                 bootbox.alert({
                                    message: "A subdiscipline is deleted",
                                    title: "Process Result",
                                    backdrop: true
                                });
                                
                            } else if (datas.trim() === 'Failed') {
                                alert("Delete failed!");
                            }

                        },
                        error: function (err) {
                            alert("Error! Deletion failed!!");
                        }

                    });
                    
                } else {
                    console.log("Process Is Canceled");
                }

            }
        });

       

    });



</script>  


<!-- Delete Part Start -->




<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $('#THE_subdisciplineTable').DataTable();

        
    });
</script>

