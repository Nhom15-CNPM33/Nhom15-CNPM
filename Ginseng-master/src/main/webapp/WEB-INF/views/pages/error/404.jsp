<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Page not found</title>
    
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    
        <link rel="stylesheet" type="text/css" href="<c:url value='/static/custom/css/404.css' />" >
    
    
    </head>
    
    <body>
    
        <div id="notfound">
            <div class="notfound">
                <div class="notfound-404">
                    <h1>4<span>0</span>4</h1>
                </div>
                <h2>the page you requested could not found</h2>
                
                <div class="buttons-con">
                            <div class="action-link-wrap">
                                <a href="javascript:history.back()" class="btn btn-custom btn-info waves-effect waves-light m-t-20">Go Back</a>

                            </div>
                        </div>

            </div>
        </div>
    
    </body>
    
    </html>
    
</html>