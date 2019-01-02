<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section class="p-t-20" style="padding-top:300px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                       <form action="<c:url value='/admin/foods/action-add-food' />" method="POST" role="form" enctype="multipart/form-data">
                        
                          <div class="form-body">
									<div class="form-group row">
										<label class="col-md-3 label-control" for="name">Tên
											món(*)</label>
										<div class="col-md-9">
											<input type="text" name="name" placeholder="Tên món ăn"
 												class="form-control" /> 
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-md-3 label-control" for="unit_price">Giá tiền
										(*)</label>
										<div class="col-md-9">
											<input type="text"  name="unit_price" placeholder="Giá tiền"
											class="form-control" /> 
										</div>
									</div>
									
									
									<div class="form-group row">
										<label class="col-md-3 label-control" for="image">Image
											Food(*)</label>
										<div class="col-md-9">
											<input type="file" accept="image/*" name="file" id="file" name="file" onchange="changeFile()" /><br />
										</div>
									</div>
		
					 
							
								</div>
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-right">
                                <button type="submit" class="btn btn-primary">Add this user</button> 
                            </div> 
		
						</form>
                        </div>
                    </div>
                </div>
            </section>







<!-- <section class="p-t-20" style="padding-top:50px"> -->
<!--      <div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-xs-12"> -->
<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4 class="card-title" id="horz-layout-card-center">Thêm món ăn</h4> -->
<!-- 						<a class="heading-elements-toggle"><i -->
<!-- 							class="fa fa-ellipsis-v font-medium-3"></i></a> -->
<!-- 					</div> -->
<!-- 					<div class="card-body collapse in"> -->
<!-- 						<div class="card-block"> -->
						
<%-- 							<form:form method="POST" modelAttribute="food" --%>
<%-- 								accept-charset="UTF-8" action="action-add-food" --%>
<%-- 								cssClass="form form-horizontal" enctype="multipart/form-data"> --%>
<!-- 								<div class="form-body"> -->
<!-- 									<div class="form-group row"> -->
<!-- 										<label class="col-md-3 label-control" for="name">Tên -->
<!-- 											món(*)</label> -->
<!-- 										<div class="col-md-9"> -->
<%-- 											<input path="name" placeholder="Tên món ăn" --%>
<%-- <%-- 												cssClass="form-control" /> --%> 
<%-- <%-- 											<form:errors path="name" cssClass="error" /> --%> 
<%-- 										</div> --%>
<!-- 									</div> -->
									
<!-- 									<div class="form-group row"> -->
<!-- 										<label class="col-md-3 label-control" for="unit_price">Giá tiền -->
<!-- 										(*)</label> -->
<!-- 										<div class="col-md-9"> -->
<%-- 											<input path="unit_price" placeholder="Giá tiền" --%>
<%-- <%-- 												cssClass="form-control" /> --%> 
<%-- <%-- 											<form:errors path="unit_price" cssClass="error" /> --%> 
<%-- 										</div> --%>
<!-- 									</div> -->
									
									
<!-- 									<div class="form-group row"> -->
<!-- 										<label class="col-md-3 label-control" for="image">Image -->
<!-- 											Food(*)</label> -->
<!-- 										<div class="col-md-9"> -->
<!-- 											<input type="file" accept="image/*" name="file" id="file" name="file" onchange="changeFile()" /><br /> -->
<!-- 										</div> -->
<!-- 									</div> -->
		
<!-- 								</div> -->
<!-- 								<div class="form-actions center"> -->
<%-- 									<button onclick="location.href='<c:url value='/admin/foods' />'" --%>
<!-- 										type="button" class="btn btn-warning mr-1"> -->
<!-- 										<i class="ft-arrow-left"></i> Quay lại -->
<!-- 									</button> -->
<!-- 									<button type="submit" class="btn btn-primary"> -->
<!-- 										<i class="ft-save"></i> Lưu lại -->
<!-- 									</button> -->
<!-- 								</div> -->
<%-- 							</form:form> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- </div> -->
<!-- </section> -->
<!-- <script type="text/javascript"> -->
	
	

<!-- </script> -->
