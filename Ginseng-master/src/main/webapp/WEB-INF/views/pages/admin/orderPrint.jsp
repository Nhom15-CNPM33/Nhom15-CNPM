<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xuất hoá đơn </title>
<style>

</style>
<script src="<c:url value='/static/js/jquery.min.js' />" type="text/javascript"></script>
</head>
<body>
	<!-- Begin form print-->
 <div style="margin-top: 0px" >
	 <div class="print-header" style="width: 94%; font-family: Tahoma">
            <h4 style="font-family: Tahoma; font-size: 14px;">Phiếu thanh toán</h4>
            <p style="font-family: Tahoma; font-size: 14px;">${order.getRestaurant().getName()}</p>
            <h2 style="text-align: center; font-weight: bold; margin-top: -10px">${order.getBranch().getName()}</h2>
            <%-- <p style="text-align: center">${order.getBranch().getAddressFullText()}</p> --%>
            <div style="width: 100%; background: black; height: 2px; float: left"></div>
            <div style="font-family: Tahoma; font-size: 14px;"><span style="width: 100px">Bàn:</span> ${order.getTable().getName()}</div>
            <div style="font-family: Tahoma; font-size: 14px;"><span style="width: 100px">Hóa đơn:</span> #${order.getId()} </div>
            <div style="font-family: Tahoma; font-size: 14px;"><span style="width: 100px">Ngày giờ:</span>  ${order.getDatetimeFormatVN(order.getCreatedAt())}</div>
            <div style="font-family: Tahoma; font-size: 14px;"><span style="width: 100px">Nhân viên:</span> ${order.getEmployee().getFullName()}</div>
            <div style="font-family: Tahoma; font-size: 14px;"><span style="width: 100px">Khách hàng:</span> ${customerName}</div>

        </div>
        
        <div class="print-content"  style="width: 94%">
            <table class="table" style="margin: 0px; margin-right: 10px; margin-bottom: 20px;">
                <tr class="top-table">
                    <th style="font-size: 13px; width: 50px ; text-align: left; width: 20px;">SL</th>
                    <th colspan="2" style="font-size: 13px; width:140px; text-align: left;">Tên hàng</th>
                    <th style="font-size: 13px; text-align: left; width: 120px;">Đơn giá</th>
                    <th style="font-size: 13px">Thành tiền</th>
                </tr>
                <tbody>
               
                       <!--  <tr style="border: none; margin-bottom: -10px; height: 15px !important;">
                            <td colspan="4" style=" border: none; ">
                                <span style="font-size: 13px; font-family: Tahoma; height: 15px !important; margin-top: -5px; margin-bottom: -20px; display: block;">Dồi trường xào chua ngọt</span>
                            </td>
                        </tr> -->
                        <c:forEach items="${orderDetails}" var="orderDetail">
                        	 <tr style="margin-top: -10px; height: 10px">
                        	 <td style=" margin-top: -10px; height: 10px; line-height: 10px;font-size: 13px; font-family: Tahoma ; width: 50px ; text-align: left;">${orderDetail.getQuantity()}</td>
                            <td colspan="4" style="width:140px; text-align: left; font-size: 13px; font-family: Tahoma; height: 15px !important; margin-top: 25px; display: block;">
                               ${orderDetail.getFoodName()}
                            </td>
                            <td style=" margin-top: -10px; height: 10px; line-height: 10px;font-size: 13px; font-family: Tahoma; width: 40px;">x</td>
                            <td style=" margin-top: -10px; height: 10px; line-height: 10px;font-size: 13px; font-family: Tahoma; width: 120px;">${orderDetail.amountToCurrencyString(orderDetail.getPrice())}</td>
                            <c:choose>
                            		<c:when test="${orderDetail.isGift()}">
                            			<td style=" margin-top: -10px; height: 10px; line-height: 10px;font-size: 13px; font-family: Tahoma">Món tặng</td>
                            		</c:when>
                            		<c:otherwise>
                            			<td style=" margin-top: -10px; height: 10px; line-height: 10px;font-size: 13px; font-family: Tahoma">${orderDetail.amountToCurrencyString(orderDetail.getTotalAmount())}</td>
                            		</c:otherwise>
                            </c:choose>
                            
                        	 </tr>
                        </c:forEach>
                </tbody>
                
                
            </table>
        </div>
        
         <div class="print-footer" style="width: 94%; border-top: 2px solid darkslategray; margin-top: 10px; padding-top: 5px; margin-right: 10px">
            <div style="font-size: 14px; font-family: Tahoma">Tổng Cộng : <span>${order.amountToCurrencyString(order.getAmount())}</span></div>
            <div style="font-size: 13px; font-family: Tahoma">Giảm giá: <span>${order.amountToCurrencyString(order.getDiscountAmount())}</span></div>
            <div style="font-size: 13px; font-family: Tahoma">VAT: <span>${order.amountToCurrencyString(order.getVATAmount())}</span></div>
            <div style="font-size: 13px; font-family: Tahoma">Thanh Toán : <span>${order.amountToCurrencyString(order.getTotalAmount())}</span></div>
        </div>
        <div class="print-footer">
           <div>Tên công ty: <span>..............................................................</span></div>
           <span>................................................................................</span>
           <div>SĐT: <span>..............................................................</span></div>
           <div>Mã số thuế: <span>..............................................................</span></div>
           <div>Địa chỉ: <span>..............................................................</span></div>
           <span>................................................................................</span>
           <div>Email: <span>..............................................................</span></div>
       </div>
        <p style="margin-top: 20px; text-align: center; font-size: 16px; font-family: Tahoma; width: 94%; margin-right: 10px">
            CHÂN THÀNH CÁM ƠN QUÝ KHÁCH<br>
            ĐT: ${order.getBranch().getPhoneNumber()}<br>

        </p>
        
        
</div>
<!-- End form print -->
<script type="text/javascript">
$(function(){
	window.print();
});
</script>
</body>
</html>