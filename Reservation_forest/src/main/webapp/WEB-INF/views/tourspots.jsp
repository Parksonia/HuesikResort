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

<title>Welcome | Tour</title>
</head>
<body>
	<!-- Header -->
	<%@include file="./inc/Header.jsp"%>

	<!-- TourSpots Session Begin -->
	<section class="rooms-section spad">
	
		
			<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>주변관광지</h2>
					</div>
				</div>
			</div>
			</div>
			
				<div class="container">
			<div class="row">
		
				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img
							src="${pageContext.request.contextPath}/resources/img/tour/tour1.jpg"
							alt="">
						<div class="ri-text">
							<h4>의림지</h4>
							<table>
								<tbody>
									<tr>
										<td class="r-o">위치:</td>
										<td>충북 제천시 의림지로 33</td>
									</tr>
									<tr>
										<td class="r-o">이용시간:</td>
										<td>    연중 상시 개방</td>
									</tr>
									<tr>
										<td class="r-o">문의:</td>
										<td>043-651-7101(의림지 관광안내소)</td>
									</tr>
								</tbody>
							</table>
							<!--  <a href="#" class="primary-btn">More Details</a> -->
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img
							src="${pageContext.request.contextPath}/resources/img/tour/tour2.jpg"
							alt="">
						<div class="ri-text">
							<h4>박달재</h4>
							<table>
								<tbody>
									<tr>
										<td class="r-o">위치:</td>
										<td>충북 제천시 백운면 박달로 231</td>
									</tr>
									<tr>
										<td class="r-o">이용시간:</td>
										<td>    신정(1/1), 설, 추석</td>
									</tr>
									<tr>
										<td class="r-o">문의:</td>
										<td>043-642-9398(박달재 관광안내소)</td>
									</tr>
								</tbody>
							</table>
							<!--  <a href="#" class="primary-btn">More Details</a> -->
						</div>
					</div>
				</div>



				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img
							src="${pageContext.request.contextPath}/resources/img/tour/tour3.jpg"
							alt=""/>
						<div class="ri-text">
							<h4>월악산</h4>
							<table>
								<tbody>
									<tr>
										<td class="r-o">위치:</td>
										<td>충청북도 제천시 한수면 송계리, 덕산면 월악리, 수산리</td>
									</tr>
									<tr>
										<td class="r-o">이용시간:</td>
										<td>04:00~14:00까지(입산시간)</td>
									</tr>
									<tr>
										<td class="r-o">문의:</td>
										<td>043-653-3250(국립공원관리공단 월악산사무소)</td>
									</tr>
								</tbody>
							</table>
							<!--  <a href="#" class="primary-btn">More Details</a> -->
						</div>
					</div>
				</div>


				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img
							src="${pageContext.request.contextPath}/resources/img/tour/tour4.jpg"
							alt=""/>
						<div class="ri-text">
							<h4>청풍문화재단지</h4>
							<table>
								<tbody>
									<tr>
										<td class="r-o">위치:</td>
										<td>충청북도 제천시 청풍면 청풍호로 2048</td>
									</tr>
									<tr>
										<td class="r-o">이용시간:</td>
										<td>3~10월(09:00~18:00), 11~2월(09:00~17:00)</td>
									</tr>
									<tr>
										<td class="r-o">문의:</td>
										<td>043-647-7003</td>
									</tr>
								</tbody>
							</table>
							<!--  <a href="#" class="primary-btn">More Details</a> -->
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img
							src="${pageContext.request.contextPath}/resources/img/tour/tour5.jpg"
							alt=""/>
						<div class="ri-text">
							<h4>옥순봉</h4>
							<table>
								<tbody>
									<tr>
										<td class="r-o">위치:</td>
										<td>충북 제천시 수산면 괴곡리 산 8</td>
									</tr>
									<tr>
										<td class="r-o">이용시간:</td>
										<td>연중 상시 개방</td>
									</tr>
									<tr>
										<td class="r-o">문의:</td>
										<td>043-641-6731~3(관광정보센터)</td>
									</tr>
								</tbody>
							</table>
							<!--  <a href="#" class="primary-btn">More Details</a> -->
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-6">
					<div class="room-item">
						<img
							src="${pageContext.request.contextPath}/resources/img/tour/tour6.jpg"
							alt="">
						<div class="ri-text">
							<h4>금수산</h4>
							<table>
								<tbody>
									<tr>
										<td class="r-o">위치:</td>
										<td>충북 제천시 수산면 상천리 산 12-1</td>
									</tr>
									<tr>
										<td class="r-o">이용시간:</td>
										<td>동절기(05:00~13:00)/ 하절기(04:00~14:00)</td>
									</tr>
									<tr>
										<td class="r-o">문의:</td>
										<td>043-641-6731~3(콜센터)</td>
									</tr>
								</tbody>
							</table>
							<!--  <a href="#" class="primary-btn">More Details</a> -->
						</div>
					</div>
				</div>
				<!--           <div class="col-lg-12">
                    <div class="room-pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">Next <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                </div> -->
			
			</div>
			</div>


	</section>



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