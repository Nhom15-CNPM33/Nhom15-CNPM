<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<title>Food</title>
 <!-- DATA TABLE-->

 	<section class="p-t-20" style="padding-top:50px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title-5 m-b-35">data table</h3>
                           
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
                                        <c:forEach items="${foods}" var="food">
                                        <tr class="tr-shadow">

											<td class="cen"></td>
												
                                            <td class="cen">${food.getName()}</td>

                                            <td class="cen">
                                                <span class="block-email">${food.getName()}</span>
                                            </td>

                                            <td class="desc cen">${food.getName()}</td>
                                            
                                            <td class="cen">
													<img src="<c:url value="${food.getImage()}" />"
														style="max-width: 80px; max-height: 80px;" />

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