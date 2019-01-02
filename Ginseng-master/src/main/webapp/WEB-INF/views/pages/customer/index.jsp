<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<style>
input[type=checkbox] {
  transform: scale(3);
}
</style>

<title>Food</title>
 <!-- DATA TABLE-->



 	<section class="p-t-20" style="padding-top:100px">
<!--                 <div class="container"> -->
									<div class="row">
										<c:forEach items="${foods}" var="food" >
											<div class="col-lg-3 col-xs-12 col-md-3 col-sm-3"   >
										            <div class="card">
										                <div class="card-body">
										                    <div class="card-block">
										                        <div class="media row">
										                        	<div class="col-md-4">
												                            	<h4><b>${food.getName() }</b></h4>
												                    </div>   
											                        <div class="col-md-4">
																		<img src="<c:url value="${food.getImage()}" />"
																			style="max-width: 400px; max-height: 150px;" />
																	</div>
																	<div class="col-md-2"></div>
											                        <div class="col-md-2">
											                        	<input class="food_setup" value="${food.getId()}" name="food_id" type="checkbox"  />
											                        </div>
										                        </div>
										                    </div>
										                </div>
										            </div>
										     </div>
									   </c:forEach>
									</div>
<!--                     </div> -->
     </section>