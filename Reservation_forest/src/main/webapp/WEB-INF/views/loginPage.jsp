<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

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
<!--icon style  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<title>Welcome | SIGNIN</title>
</head>
<body>
	<!-- HEADER BEGIN -->
	<%@include file="./inc/Header.jsp"%>
	<!-- HEADER END -->

	<div calss="subBanner">
		<img
			src="${pageContext.request.contextPath}/resources/img/img_subbanner_event.jpg"
			alt="">
	</div>
	
	<div class="content">
		<div class="container">
			<div class="row justify-content-center">
				<!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->

				<div class="col-md-6 contents">
					<div class="row justify-content-center">
						<div class="col-md-12">
							<div class="form-block">
								<div class="mb-4">
									<h3>
										Sign In to <strong>Huesik</strong>
									</h3>
								</div>
								<form action="${pageContext.request.contextPath}/login" method="post">
									<div class="form-group first field--not-empty">
										<label for="username">Username</label>
										 <input type="text"
											class="form-control" id="username" name="username" >

									</div>
										<div class="form-group first field--not-empty">
										<label for="password">Password</label>
										 <input type="password"
											class="form-control" id="password" name="password" >
									
									</div>
									
								<!-- 	<div class="form-group last mb-4">
										<label for="password">Password</label>
										 <input type="password"
											class="form-control" id="password" name="password">

									</div>
 -->
								
									 
									 <div class="d-flex mb-5 align-items-center">
										<label class="control control--checkbox mb-0"><span
											class="caption">Remember me</span> <input type="checkbox"
											checked="checked">
											<div class="control__indicator"></div> </label> <span class="ml-auto"><a
											href="#" class="forgot-pass">Forgot Password</a></span>
									</div>
									
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									<input type="submit" value="Log In"
										class="btn btn-pill text-white btn-block btn-primary">
										
									<span class="d-block text-center my-4 text-muted"> or
										sign in with</span>

									<div class="social-login text-center">
										<a href="#" class="facebook"> <span
											class="icon-facebook mr-3"></span>
										</a> <a href="#" class="twitter"> <span
											class="icon-twitter mr-3"></span>
										</a> <a href="#" class="google"> <span
											class="icon-google mr-3"></span>
										</a>
									</div>
								</form>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>

	<!-- FOOTER BEGIN -->
	<%@include file="./inc/Footer.jsp"%>
	<!-- FOOTER END -->

	<!-- JS Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<!-- ----- -->

</body>
</html>