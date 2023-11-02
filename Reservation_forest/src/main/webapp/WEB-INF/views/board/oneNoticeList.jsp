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
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<h2>공지</h2>
				</div>
			</div>
		</div>

	
		
		<div class="container">
			<div class="blog-details-notice">
				<c:forEach items="${NoticeOneList}" var="notice"> 
				<div class="blog-details-text">
					<div class="bd-tit">${notice.title }</div>
					
					<div class="bd-cnt">
						<div class="div-share">
							<span>등록일:</span> <span>${notice.inputdate}</span> <span>조회수:</span> <span>${notice.viewcount}</span>
						</div>
					</div>

					<div class="bd-more-notice">${notice.contents}</div>
				</div>
			</c:forEach> 
			</div>
		</div>
		
		
		<div class="container">
			<div class="blog-details-text">
				<div class="leave-comment">
					<div class="row"
						style="padding-top: 20px; flex-direction: row-reverse;">
						<div class="col-sm-2 text-center">
							<button type="button" class="site-btn" onclick="history.back()">목록</button>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>


	<!-- Footer -->
	<%@include file="../inc/Footer.jsp"%>


	<!-- Js Plugins -->
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

	
</body>
</html>