<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- <META HTTP-EQUIV="Refresh" CONTENT="10"> -->

<style>
    .cen{
        text-align: center;
    }
    .error-hightlight{
        border: solid 1px red;
    }
</style>
<title>Users management</title>
 <!-- DATA TABLE-->

 	<section class="p-t-20" style="padding-top:50px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">data table</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md ">
                                        <select class="js-select2 selectRole" name="property" onchange="filter()">
                                            <option value="0">All Roles</option>
                                            <c:forEach items="${roles}" var="role">
                                                <option value="${role.getId()}">${role.getName()}</option>
                                            </c:forEach>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters</button>
                                </div>
                                <div class="table-data__tool-right">
                        
                                    <button class="au-btn au-btn-icon au-btn--green au-btn--small" id="btnAdd">
                                        <i class="zmdi zmdi-plus"></i>Add User</button>

                                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2 selectExport" name="type" onchange="exportFile()">
                                            <option selected="selected">Export</option>
                                            <option value="1">Excel</option>
                                            <option value="2">PNG</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive table-responsive-data2" id="main">
                                <table class="table table-data2"  id="tbldata">
                                    <thead>
                                        <tr>
                                            <th class="cen"></th>
                                            <th class="cen">Username</th>
                                            <th class="cen">email</th>
                                            <th class="cen">Fullname</th>
                                            <th class="cen">Role</th>
                                            <th class="cen">Phone</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${users}" var="user">
                                        <tr class="tr-shadow">
                                            <td>
                                                <label class="au-checkbox">
                                                    <input type="checkbox" value=${user.getId()} class="user-id">
                                                    <span class="au-checkmark"></span>
                                                </label>
                                            </td>

                                            <td class="cen">${user.getUserName()}</td>

                                            <td class="cen">
                                                <span class="block-email">${user.getEmail()}</span>
                                            </td>

                                            <td class="desc cen">${user.getFullName()}</td>

                                            <td class="cen">
                                                <span class="status--process">${user.getRole().getName()}</span>
                                            </td>

                                            <td class="cen">${user.getPhone()}</td>

                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                                                        <i class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>                                  
                                        <tr class="spacer"></tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END DATA TABLE--> 

            

<div class="modal fade" id="modal-add">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add user account</h4>
            </div>
            <div class="modal-body">
                    <form action="<c:url value='/admin/action-add-user' />" method="POST" role="form">
                            <div class="row">
                                
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                    <label><b>Username</b></label>
                                    <input type="text" name="username" id="texttUsername" class="form-control" required >
                                    <span style="color:red;font-size: 11px" id="errUsername"></span>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                    <label><b>Password</b></label>
                                    <input type="text" name="password" id="input" class="form-control"  required value="1234">
                                </div>

                                <br>

                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                    <label><b>Role</b></label>
                                    <select name="role_id" id="input" class="form-control" required>
                                        <c:forEach items="${roles}" var="role">
                                            <c:if test="${role.getName() != 'SUPER_ADMIN'}">
                                                <option value="${role.getId()}">${role.getName()}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select> 
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                    <label><b>Phone number</b></label>
                                     <input type="text" name="phone" id="input" class="form-control" required>
                                </div>

                                <br>

                                
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                    <label><b>Email</b></label>
                                    <input type="email" name="email" id="input" class="form-control" placeholder="email@exampl.com" required>
                                </div>
                                
                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                    <label><b>Fullname</b></label>
                                    <input type="text" name="fullname" id="input" class="form-control" required>
                                </div>
                                
                                <br>
                            </div>
                            <br>
                            
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-right">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add this user</button> 
                            </div>    
                    </form>     
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $('.li-user-management').addClass('active');
    });
    
    $("#btnAdd").click(function () { 
        $("#modal-add").modal();
    });

    $("#texttUsername").focusout(function() { 
        var username=$('#texttUsername').val();
       $.ajax({
           type: "POST",
           url:  "<c:url value='/admin/check-username' />",
           data: {username:username},
           success: function (response) {
               if(response.status=='500'){
                    $(":submit").attr("disabled", true);
                    $("#texttUsername").addClass('error-hightlight');
                    $("#errUsername").text("  *Username is already taken");
               }else{
                    $(":submit").removeAttr("disabled");
                    $("#texttUsername").removeClass('error-hightlight');
                    $("#errUsername").text("");
               }
           }
       });
        
    });
    
    function filter() {
        var role_id =$(".selectRole").val();
        var urlFromData="admin/user-management-filter";
        $.ajax({
            type: "POST",
            url: "<c:url value='/' />"+urlFromData,
            data:{
                role_id : role_id
            },
            success: function (response) {
                $("#main").html("");
                $("#main").html(response);
            }
        });
    }

    function exportFile() {
    	var op=$(".selectExport").val();
    	if(op==1){
    		javascript:xport.toCSV("tbldata","users");
    	}else{
    		alert("Feature is bulding !\nWait for us.");
    	}
    		
    }

   
</script>


                   