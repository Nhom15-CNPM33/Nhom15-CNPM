<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
<!--===============================================================================================-->
</head>
<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="<c:url value='/static/custom/img/logo-1.png' /> "  alt="Ginseng">
                            </a>
                        </div>

                        <div class="alert alert-danger" role="alert" style="padding:0px;border: 0px solid #ffffff">
                            <c:if test="${not empty error}">
								<div class="error" >${error}</div>
							</c:if>	
                        </div>
						
                        <div class="login-form">
                            <form  action="<c:url value="/j_spring_security_check"></c:url>" method="post">
                                <div class="form-group">
                                    <label style="color:black">Username</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="username" required>
                                </div>
                                <div class="form-group">
                                    <label style="color:black">Password</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password" required>
								</div>
								
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">Remember Me
                                    </label>
                                    <label>
                                        <a href="#">Forgotten Password?</a>
                                    </label>
                                </div>
								<button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">sign in</button>
								
                                <!-- <div class="social-login-content">
                                    <div class="social-button">
                                        <button class="au-btn au-btn--block au-btn--blue m-b-20">sign in with facebook</button>
                                        <button class="au-btn au-btn--block au-btn--blue2">sign in with twitter</button>
                                    </div>
                                </div> -->
                            </form>
                            <div class="register-link">
                                <p>
                                    Don't you have account?
                                    <a href="#">Sign Up Here</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</body>
</html>