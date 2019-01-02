<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<style>
    .menu-sidebar__content {
    background: #f3f3f3;
}
</style>

<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href="#">
            <img src="<c:url value='/static/custom/img/logo.png' />" alt="Ginseng" style="size: 50%"/>
        </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar"  id="sub-header">
            <ul class="list-unstyled navbar__list">
              


				 <li class="li-user-management">
                    <a href="<c:url value='/admin/user-management' />">
                        <i class="far fa-user"></i>Quản lý</a>
                </li>
                

                <li>
                    <a href="map.html">
                        <i class="fa fa-bar-chart"></i>Khách hàng</a>
                </li>
                
                
                   <li>
                    <a href="map.html">
                        <i class="fa fa-bar-chart"></i>Thực đơn</a>
                </li>
                
                
                 
                
              
                 <li>
                    <a href="map.html">
                        <i class="fa fa-bar-chart"></i>Hóa đơn</a>
                </li>
                
                <li>
                    <a href="map.html">
                        <i class="fa fa-bar-chart"></i>Quản lý kho</a>
                </li>
               
               
              
            </ul>
        </nav>
    </div>
</aside>
<!-- END MENU SIDEBAR-->

