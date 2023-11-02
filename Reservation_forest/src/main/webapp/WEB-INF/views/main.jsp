<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.kopo.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>WELCOME | MAIN</title>
</head>
<body>
	<!-- Header -->
	<%@include file="./inc/Header.jsp"%>
	<!-- Header End -->

	<!-- Hero Section Start -->
	<section class="hero-section" style="margin-block:40px;">
		<div class="container">
			
					<div class="hero-text" style="display: flex;align-items:center;flex-direction: column;">
						<h1>HUESIK in Forest Resort</h1>
						<p>The Best Rest In Forest.Here are the best hotel booking sites</p>
						<a href="#" class="primary-btn">Discover Now</a>
					</div>
			
				<!-- <div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
					<div class="booking-form">
						<h3>Booking Your Hotel</h3>
						<form action="#">
							<div class="check-date">
								<label for="date-in">Check In:</label> <input type="text"
									class="date-input hasDatepicker" id="date-in"> <i
									class="icon_calendar"></i>
							</div>
							<div class="check-date">
								<label for="date-out">Check Out:</label> <input type="text"
									class="date-input hasDatepicker" id="date-out"> <i
									class="icon_calendar"></i>
							</div>
							<div class="select-option">
								<label for="guest">Guests:</label> <select id="guest"
									style="display: none;">
									<option value="">2 Adults</option>
									<option value="">3 Adults</option>
								</select>
								<div class="nice-select" tabindex="0">
									<span class="current">2 Adults</span>
									<ul class="list">
										<li data-value="" class="option selected">2 Adults</li>
										<li data-value="" class="option">3 Adults</li>
									</ul>
								</div>
							</div>
							<div class="select-option">
								<label for="room">Room:</label> <select id="room"
									style="display: none;">
									<option value="">1 Room</option>
									<option value="">2 Room</option>
								</select>
								<div class="nice-select" tabindex="0">
									<span class="current">1 Room</span>
									<ul class="list">
										<li data-value="" class="option selected">1 Room</li>
										<li data-value="" class="option">2 Room</li>
									</ul>
								</div>
							</div>
							<button type="submit">Check Availability</button>
						</form>
					</div>
				</div> -->
			
		</div>
		<div class="hero-slider owl-carousel owl-loaded">
			<div class="owl-stage-outer">
				<div class="owl-stage"
					style="transform: translate3d(-1197px, 0px, 0px); transition: all 0s ease 0s; width: 2096px;">
					<div class="owl-item cloned" style="width: 299.333px;">
						<div class="hs-item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero/bg_img2.jpg"
							style="background-image: url(&quot;${pageContext.request.contextPath}/resources/img/hero/bg_img2.jpg&quot;);"></div>
					</div>
					<div class="owl-item cloned" style="width: 299.333px;">
						<div class="hs-item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero/bg_img3.png"
							style="background-image: url(&quot;${pageContext.request.contextPath}/resources/img/hero/bg_img3.png&quot;);"></div>
					</div>
					<div class="owl-item" style="width: 299.333px;">
						<div class="hs-item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero/bg_img1.jpg"
							style="background-image: url(&quot;${pageContext.request.contextPath}/resources/img/hero/bg_img1.jpg&quot;);"></div>
					</div>
				<%-- 	<div class="owl-item" style="width: 299.333px;">
						<div class="hs-item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero/bg_img2.jpg"
							style="background-image: url(&quot;${pageContext.request.contextPath}/resources/img/hero/bg_img2.jpg&quot;);"></div>
					</div>
					<div class="owl-item animated owl-animated-in fadeIn active"
						style="width: 299.333px;">
						<div class="hs-item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero/bg_img3.png"
							style="background-image: url(&quot;${pageContext.request.contextPath}/resources/img/hero/bg_img3.png&quot;);"></div>
					</div>
					<div class="owl-item cloned" style="width: 299.333px;">
						<div class="hs-item set-bg" data-setbg="${pageContext.request.contextPath}/resources/img/hero/bg_img1.jpg"
							style="background-image: url(&quot;${pageContext.request.contextPath}/resources/img/hero/bg_img1.jpg&quot;);"></div>
					</div> --%>
				</div>
			</div>
			<div class="owl-nav disabled">
				<button type="button" role="presentation" class="owl-prev">
					<span aria-label="Previous">‹</span>
				</button>
				<button type="button" role="presentation" class="owl-next">
					<span aria-label="Next">›</span>
				</button>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->
	<!-- Footer -->
	<%@include file="./inc/Footer.jsp"%>

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