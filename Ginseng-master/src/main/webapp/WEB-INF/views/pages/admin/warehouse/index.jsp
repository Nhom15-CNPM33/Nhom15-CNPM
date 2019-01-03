<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<title>Warehouse</title>
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
                                            <th class="cen">Tên nguyên liệu</th>
                                            <th class="cen">Số lượng</th>
                                            <th class="cen">Trạng thái</th>
                                            <th class="cen">Ngày khởi tạo</th>
                                            <th class="cen">Người khởi tạo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${warehouse}" var="warehouse">
                                        <tr class="tr-shadow">
                                        
                                        	<td class="cen"></td>
                                                                                
											<td class="cen">${warehouse.getMaterial().getName()}</td>
												
                                            <td class="cen">${warehouse.getAmount()}</td>

                                            <td class="cen">${warehouse.getStatus()}</td>

                                            <td class="desc cen">${warehouse.getCreatedAt()}</td>
                                            
                                            
                                            <td class="cen">${warehouse.getEmloyee().getFullName()}</td>
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