<%-- 
    Document   : assignDiscipline_table
    Created on : Feb 15, 2017, 10:18:58 AM
    Author     : user
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<%
    Conn conn = new Conn();
%>

<table  id="THE_assignDisciplineTable"  class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
     <th>Health Facility Code</th>
    <th>Health Facility</th>
     <th>Discipline Code</th>
    <th>Discipline</th>
    <th>Subdiscipline Code</th>
    <th>Subdiscipline</th>
    <th>Status</th>
    <th>Update</th>
    <th>Delete</th>
</thead>
<tbody>

    <%
        String sql ="Select hf.hfc_cd, hf.hfc_name, d.discipline_cd, d.discipline_name, s.subdiscipline_cd, s.subdiscipline_name, hfc_discipline_status "
                + "FROM adm_health_facility hf Join adm_hfc_discipline hd USING (hfc_cd) "
                + "join adm_discipline d Using (discipline_cd) "
                + "join adm_subdiscipline s using (discipline_cd) "
                + "Where s.subdiscipline_cd = hd.subdiscipline_cd";
        
        ArrayList<ArrayList<String>> dataHD = conn.getData(sql);

        int size = dataHD.size();
        for (int i = 0; i < size; i++) {
    %>

    <tr>
<input id="ADT_hidden" type="hidden" value="<%=String.join("|", dataHD.get(i))%>">
<td style="width: 10%"><%= dataHD.get(i).get(0)%></td>
<td><%= dataHD.get(i).get(1)%></td> <!-- hfc --> 
<td style="width: 10%"><%= dataHD.get(i).get(2)%></td>
<td><%= dataHD.get(i).get(3)%></td> <!-- discipline  --> 
<td style="width: 10%"><%= dataHD.get(i).get(4)%></td>
<td><%= dataHD.get(i).get(5)%></td> <!-- subdiscipline  --> 
<td style="width: 5%"><%if(dataHD.get(i).get(6).equals("1"))
                out.print("Inactive"); 
              else
                out.print("Active"); %></td> <!--status --> 

<td style="width: 5% ">

    <!-- Update Part Start -->
    <a id="ADT_btnUpdate" data-toggle="modal" data-target="#ADT_detail" style="cursor: pointer"><i class="fa fa-pencil-square-o" aria-hidden="true" style="display: inline-block;color: #337ab7;"></i></a>
</td>
<td style="width: 5% ">
    <!-- Delete Button Start -->
    <a id="ADT_btnDelete" class="testing" style="cursor: pointer"><i class="fa fa-times" aria-hidden="true" style="display: inline-block;color: #d9534f;" ></i></a>
    <!-- Delete Button End -->
</td>
</tr>



<%
    }
%>

</tbody>
</table>

<!-- Modal Update -->
<div class="modal fade" id="ADT_detail" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Update Page</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form autocomplete="off" class="form-horizontal">

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">System Code</label>
                        <div class="col-md-8">
                            <input id="PT_systemCode" name="textinput" type="text" class="form-control input-md" readonly>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Module Code</label>
                        <div class="col-md-8">
                            <input id="PT_moduleCode"  type="text"  class="form-control input-md" readonly>
                        </div>
                    </div>    

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Page Code</label>
                        <div class="col-md-8">
                            <input id="PT_pageCode" class="form-control" readonly="true"  >
                        </div>
                    </div>
                    
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Page Name</label>
                        <div class="col-md-8">
                            <input id="PT_pageName" class="form-control" maxlength="100">
                        </div>
                    </div>

                    
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Status</label>
                        <div class="col-md-8">
                            <select class="form-control"  id="PT_status">
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
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="ADT_btnUpdateConfirm">Update</button>
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

    $('#pageTable').off('click', '#THE_assignDisciplineTable #ADT_btnUpdate').on('click', '#THE_assignDisciplineTable #ADT_btnUpdate', function (e) {
        e.preventDefault();
        
        //get the row value
        var row = $(this).closest("tr");
        var rowData = row.find("#ADT_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var systemCode = arrayData[0], moduleCode = arrayData[2], pageCode = arrayData[4], pageName = arrayData[5], status = arrayData[6];
        //set value in input on the top
        $('#PT_systemCode').val(systemCode);
        $('#PT_moduleCode').val(moduleCode);
        $('#PT_pageCode').val(pageCode);
        $('#PT_pageName').val(pageName);
        
        if (status === '1')
            $('#PT_status').val(1);
        else
            $('#PT_status').val(0);



        console.log(arrayData);
    });


    $('#ADT_btnUpdateConfirm').on('click', function () {

        var systemCode = $('#PT_systemCode').val();
        var moduleCode = $('#PT_moduleCode').val();
        var pageCode = $('#PT_pageCode').val();
        var pageName = $('#PT_pageName').val();
        var status = $('#PT_status').val();

        if (pageName === "" || pageName === null) {
            alert("Please fill in the page name");
            $('#PT_pageName').focus();

        } else if (status !== '1' && status !== '0') {
            alert("Please choose the status");
            $('#PT_status').focus();

        } else {

            var data = {
                systemCode : systemCode,
                moduleCode : moduleCode,
                pageCode : pageCode,
                pageName : pageName,
                status : status
            };

            $.ajax({
                url: "page_update.jsp",
                type: "post",
                data: data,
                timeout: 10000,
                success: function (datas) {
                    console.log(datas.trim());
                    if (datas.trim() === 'Success') {
                        $('#pageTable').load('page_table.jsp');
                        $(".modal-backdrop").hide();
                        //alert("Update Success");
                        
                        bootbox.alert({
                                    message: "Page information is updated",
                                    title: "Process Result",
                                    backdrop: true
                                });
                        
                    } else if (datas.trim() === 'Failed') {
                        bootbox.alert("Update failed!");

                    }
                },
                error: function (err) {
                    alert("Error update!");
                }

            });
        }



    });

    $('#pageTable').off('click', '#THE_assignDisciplineTable #ADT_btnDelete').on('click', '#THE_assignDisciplineTable #ADT_btnDelete', function (e) {
        e.preventDefault();

        var row = $(this).closest("tr");
        var rowData = row.find("#ADT_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var systemCode = arrayData[0], moduleCode = arrayData[2], pageCode = arrayData[4];
        console.log(arrayData);
        
        bootbox.confirm({
            message: "Are you sure want to delete this item? " + systemCode + "-" + moduleCode + "-" + pageCode,
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
                        moduleCode : moduleCode,
                        systemCode : systemCode,
                        pageCode : pageCode
                    };

                    $.ajax({
                        url: "page_delete.jsp",
                        type: "post",
                        data: data,
                        timeout: 10000, // 10 seconds
                        success: function (datas) {

                            if (datas.trim() === 'Success') {
                                $('#pageTable').load('page_table.jsp');
                                //alert("Delete Success");
                                 bootbox.alert({
                                    message: "A page information is deleted",
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
        $('#THE_assignDisciplineTable').DataTable();

        
    });
</script>




