<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Upload File Request Page</title>
</head>
<body>
	<form method="POST" action="<c:url value='upload' />"
		enctype="multipart/form-data">
		<input type="file" name="file" /><br /> <input type="submit"
			value="Submit" />
	</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="row">
	<div class="col-xs-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title" id="horz-layout-card-center">Thêm Banner</h4>
				<a class="heading-elements-toggle"><i
					class="fa fa-ellipsis-v font-medium-3"></i></a>
			</div>
			<div class="card-body collapse in">
				<div class="card-block">
					<form:form method="POST" commandName="banner"
						accept-charset="UTF-8" action="update"
						cssClass="form form-horizontal" enctype="multipart/form-data">
						<form:hidden path="id" />
						<div class="form-body">
							<div class="form-group row">
								<label class="col-md-3 label-control" for="name">Tên
									banner(*)</label>
								<div class="col-md-9">
									<form:input path="name" placeholder="Tên Banner"
										cssClass="form-control" />
									<form:errors path="name" cssClass="error" />
								</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 label-control" for="value">Link
									Banner(*)</label>
								<div class="col-md-9">
									<form:input path="value" placeholder="Link"
										cssClass="form-control" />
									<form:errors path="value" cssClass="error" />
								</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 label-control" for="image">Image
									Banner(*)</label>
								<div class="col-md-9">
									<input type="file" accept="image/*" name="file" onchange="showMyImage(this)"
										 /><br />
								</div>
							</div>

							<div class="form-group row">
								<div style="text-align: center;">
									<img alt="image" id="thumbnil" style="width:20%; margin-top:10px;"  src=" <c:url value="${banner.getUrlImage()} "/>" />
								</div>
							</div>

						</div>
						<div class="form-actions center">
							<button onclick="location.href='<c:url value='/banners' />'"
								type="button" class="btn btn-warning mr-1">
								<i class="ft-arrow-left"></i> Quay lại
							</button>
							<button type="submit" class="btn btn-primary">
								<i class="ft-save"></i> Lưu lại
							</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	
function showMyImage(fileInput) {
    var files = fileInput.files;
    for (var i = 0; i < files.length; i++) {           
        var file = files[i];
        var imageType = /image.*/;     
        if (!file.type.match(imageType)) {
            continue;
        }           
        var img=document.getElementById("thumbnil");            
        img.file = file;    
        var reader = new FileReader();
        reader.onload = (function(aImg) { 
            return function(e) { 
                aImg.src = e.target.result; 
            }; 
        })(img);
        reader.readAsDataURL(file);
    }    
};

</script>