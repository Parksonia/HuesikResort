<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css">

<!-- summernote editor -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 	
 	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>



<title>ADMIN | NOTICE</title>
</head>
<body>
	<!-- Header -->
	<%@include file="../inc/Header.jsp"%>

	<div calss="subBanner">
		<img
			src="${pageContext.request.contextPath}/resources/img/img_subbanner_notice.jpg"
			alt="">
	</div>

	<!-- Insert News Begin -->
	<section class="blog-details-section">
		
		<div class="container">
			<div class="row">

				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>공지</h2>
					</div>
				</div>
			</div>
		</div>
	
		<div class="container">
				<div class="blog-details-text">
					<div class="leave-comment">
						<h5>내용을 등록해 주세요.</h5>
						
						<form:form modelAttribute="NewNotice" enctype="multipart/form-data" method="post" class="comment-form">
	
							<div class="row" style="border-top: 1px solid #e1e1e1; padding-top:20px;">
								<label for="title" class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<form:input path="title" type="text" id="title" required="required" /> 
								</div>
							</div>


							<div class="row">
								<label for="summernote" class="col-sm-2 col-form-label">내용</label>
								<div class="col-lg-10">
								<form:textarea path="contents" id="summernote" name="summernote"></form:textarea>
									<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							
								<script>
				
						    $('#summernote').summernote({
						        height: 300,
						        callbacks: {
						            onImageUpload: function(files) {
						                uploadImage(files[0]);
						            }
						        }
						    });
					

						function uploadImage(file) {
						    var formData = new FormData();
						    formData.append('file', file);

						    $.ajax({
						        url: './upload-image',
						        method: 'POST',
						        data: formData,
						        processData: false,
						        contentType: false,
						        headers: {
						            'X-CSRF-TOKEN': '${_csrf.token}' // CSRF 토큰 값을 설정
						        },
						        success: function(response) {
						            $('#summernote').summernote('insertImage', response);
						       
						        }
						    });
						}

						</script>
							
								</div>	
							</div>
							<div class="row" style="padding-top:20px; flex-direction: row-reverse;">					
								<div class="col-sm-2 text-center">
									<button type="submit" class="site-btn">등록</button>
								</div>
							</div>
						</form:form>
					
					</div>
				</div>
			</div>
	</section>


	<!-- Footer -->
	<%@include file="../inc/Footer.jsp"%>


<!-- Js Plugins -->
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>		  --%>
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	
</body>
</html>