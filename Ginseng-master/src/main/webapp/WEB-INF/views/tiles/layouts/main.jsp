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
			<link rel="icon" href="<c:url value='/static/custom/img/logo.png' />">
		  <!-- Fontawesome css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/font-awesome.min.css' />">
		  <!-- Ionicons css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/ionicons.min.css' />">
		  <!-- linearicons css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/linearicons.css' />">
		  <!-- Nice select css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/nice-select.css' />">
		  <!-- Jquery fancybox css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/jquery.fancybox.css' />">
		  <!-- Jquery ui price slider css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/jquery-ui.min.css' />">
		  <!-- Meanmenu css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/meanmenu.min.css' />">
		  <!-- Nivo slider css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/nivo-slider.css' />">
		  <!-- Owl carousel css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/owl.carousel.min.css' />">
		  <!-- Bootstrap css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/bootstrap.min.css' />">
		  <!-- Custom css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/default.css' />">
		  <!-- Main css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/style.css' />">
		  <!-- Responsive css -->
		  <link rel="stylesheet" href="<c:url value='/static/client/css/responsive.css' />">
	  		
	  		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
		  <!-- Modernizer js -->
		  <script src="<c:url value='/static/client/js/vendor/modernizr-3.5.0.min.js' />"></script>

		 
</head>
<body>
	
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="cateAndSlide" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="news" />
		<tiles:insertAttribute name="footer" />
	


    
		<!-- Main Wrapper End Here -->

    <!-- jquery 3.2.1 -->
    <script src="<c:url value='/static/client/js/vendor/jquery-3.2.1.min.js' />"></script>
    <!-- Countdown js -->
    <script src="<c:url value='/static/client/js/jquery.countdown.min.js' />"></script>
    <!-- Mobile menu js -->
    <script src="<c:url value='/static/client/js/jquery.meanmenu.min.js' />"></script>
    <!-- ScrollUp js -->
    <script src="<c:url value='/static/client/js/jquery.scrollUp.js' />"></script>
    <!-- Nivo slider js -->
    <script src="<c:url value='/static/client/js/jquery.nivo.slider.js' />"></script>
    <!-- Fancybox js -->
    <script src="<c:url value='/static/client/js/jquery.fancybox.min.js' />"></script>
    <!-- Jquery nice select js -->
    <script src="<c:url value='/static/client/js/jquery.nice-select.min.js' />"></script>
    <!-- Jquery ui price slider js -->
    <script src="<c:url value='/static/client/js/jquery-ui.min.js' />"></script>
    <!-- Owl carousel -->
    <script src="<c:url value='/static/client/js/owl.carousel.min.js' />"></script>
    <!-- Bootstrap popper js -->
    <script src="<c:url value='/static/client/js/popper.min.js' />"></script>
    <!-- Bootstrap js -->
    <script src="<c:url value='/static/client/js/bootstrap.min.js' />"></script>
    <!-- Plugin js -->
    <script src="<c:url value='/static/client/js/plugins.js' />"></script>
    <!-- Main activaion js -->
    <script src="<c:url value='/static/client/js/main.js' />"></script>
</body>

</html>