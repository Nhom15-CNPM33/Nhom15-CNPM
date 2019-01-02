<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	
 	<!-- Fontfaces CSS-->
    <link href="<c:url value='/static/admin/css/font-face.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/font-awesome-4.7/css/font-awesome.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/font-awesome-5/css/fontawesome-all.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/mdi-font/css/material-design-iconic-font.min.css' />" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<c:url value='/static/admin/vendor/bootstrap-4.1/bootstrap.min.css' />" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<c:url value='/static/admin/vendor/animsition/animsition.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/wow/animate.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/css-hamburgers/hamburgers.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/slick/slick.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/select2/select2.min.css' />" rel="stylesheet" media="all">
    <link href="<c:url value='/static/admin/vendor/perfect-scrollbar/perfect-scrollbar.css' />" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<c:url value='/static/admin/css/theme.css' />" rel="stylesheet" media="all">  


    <link rel="icon" href="<c:url value='/static/custom/img/logo.png'  />" >
    <title>CMSoft</title>
    
</head>
<body class="animsition">
        <tiles:insertAttribute name="more" />
        <div class="page-wrapper">
            <div>
                <tiles:insertAttribute name="navbar-left" />
                <!-- PAGE CONTAINER-->
                <div class="page-container">
                    <tiles:insertAttribute name="header" />
                    <tiles:insertAttribute name="body" />
                    
                    <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Le Trung Phong. All rights reserved</p>
                                </div>
                            </div>
                    </div>
                </div>
                
            </div>
        </div>
	


    <!-- Jquery JS-->
    <script src="<c:url value='/static/admin/vendor/jquery-3.2.1.min.js' />"></script>
    <!-- Bootstrap JS-->
    <script src="<c:url value='/static/admin/vendor/bootstrap-4.1/popper.min.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/bootstrap-4.1/bootstrap.min.js' />"></script>
    <!-- Vendor JS       -->
    <script src="<c:url value='/static/admin/vendor/slick/slick.min.js' />">
    </script>
    <script src="<c:url value='/static/admin/vendor/wow/wow.min.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/animsition/animsition.min.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js' />">
    </script>
    <script src="<c:url value='/static/admin/vendor/counter-up/jquery.waypoints.min.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/counter-up/jquery.counterup.min.js' />">
    </script>
    <script src="<c:url value='/static/admin/vendor/circle-progress/circle-progress.min.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/perfect-scrollbar/perfect-scrollbar.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/chartjs/Chart.bundle.min.js' />"></script>
    <script src="<c:url value='/static/admin/vendor/select2/select2.min.js' />">
    </script>

    <!-- Main JS-->
    <script src="<c:url value='/static/admin/js/main.js' />"></script>

    <script src="<c:url value='/static/custom/js/export.js' />"></script>
</body>

</html>