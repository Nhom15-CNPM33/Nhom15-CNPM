<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<meta http-equiv="refresh" content="15" />
<style>
     .floatedTable {
            float:left;
        }x
        .cen{
        text-align: center;
    }
</style>
<div class="content-header row">
	<div class="content-header-left col-md-6 col-xs-12 mb-1">
		<h2 class="content-header-title">BẾP</h2>
	</div>
</div>

 	<section class="p-t-20" style="padding-top:200px">
 	 <div class="container">
                    <div class="row">
                        <div class="col-md-12 row">
								  <div class="table-responsive table-responsive-data2 col-md-6" id="main">
                                <table class="table table-data2 floatedTable"  id="tbldata">
                                    <thead>
                                        <tr>
                                            <th class="cen">Tên Món</th>
                                            <th class="cen">Khách hàng</th>
                                            <th class="cen">Trạng Thái</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${orderDetails}" var="orderDetail">
                                        <c:if test="${orderDetail.getStatus()==0 }">
                                        
	                                        <tr class="tr-shadow">
	
	                                            <td class="cen">${orderDetail.getFood().getName()}</td>
	
	
	                                            <td class="desc cen">${orderDetail.getOrder().getUser().getFullName()}</td>
	
	
	
	                                            <td>
	                                                <div class="table-data-feature">
	                                                   <a href="javascript:void(0);"
	                                                   onclick="changeStatus(${orderDetail.getId()});"
														class="btn mr-1 mb-1 btn-danger btn-sm block">WAIT
														</a>
	                                                </div>
	                                            </td>
	                                        </tr>
                                        </c:if>                                  
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
		<!-- 					bảng 2  -->
										  <div class="table-responsive table-responsive-data2 col-md-6" id="main">
		
						<table class="table table-data2 floatedTable"  id="tbldata">
                                    <thead>
                                        <tr>
                                            <th class="cen">Tên Món</th>
                                            <th class="cen">Khách hàng</th>
                                            <th class="cen">Trạng Thái</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${orderDetails}" var="orderDetail">
                                        <c:if test="${orderDetail.getStatus()==1 }">
                                        <tr class="tr-shadow">

                                            <td class="cen">${orderDetail.getFood().getName()}</td>


	                                            <td class="desc cen">${orderDetail.getOrder().getUser().getFullName()}</td>



                                            <td>
                                                <div class="table-data-feature">
	                                                   <a href="javascript:void(0);"
	                                                   onclick="changeStatus(${orderDetail.getId()});"
														class="btn mr-1 mb-1 btn-success btn-sm block">PENDING</a>
                                                </div>
                                            </td>
                                        </tr>                                  
                                        </c:if>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                </div>
			</div></div>
		</div>
</section>
	<script type="text/javascript">

function changeStatus(order_id) {
		if(confirm("Bạn muốn chuyển trạng thái của món ăn này?")) {
			$.ajax({
				url : "<c:url value='/admin/orders/change-status' />",
				type : 'POST',
				data: {id: order_id},
				success : function(response) {
					if (response.status === 200) {
						location.reload();
					} else {
						$.unblockUI();
						alert(response.message);
					}
				},
				error : function(error) {
					alert(error);
					$.unblockUI();
				}
			});
		}
	};
	</script>

