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
	
<!-- Script for map -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e18eed3162876d4aa996878651eeb80"></script>	

<title>Welcome | MAP</title>
</head>
<body>
	<!-- Header -->
	<%@include file="./inc/Header.jsp"%>
	<!-- Header End -->
	<!-- Map Section Begin -->
	<section class="contact-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="contact-text">
						<h2>오시는길</h2>
						
						<table style="margin-top:100px;">
							<tbody>
								<tr>
									<td class="c-o">주소:</td>
									<td>27105) 충청북도 제천시 백운면 금봉로 365</td>
								</tr>
								<tr>
									<td class="c-o">대표전화:</td>
									<td>043-649-6000</td>
								</tr>
								<tr>
									<td class="c-o">Email:</td>
									<td>info.HuesikResort@gmail.com</td>
								</tr>
								<tr>
									<td class="c-o">Fax:</td>
									<td>+(12) 345 67890</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-lg-7 offset-lg-1">
				<!-- MAP -->
		<div id="map"style="width:500px;height:400px;">
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.1581,128.0463),
			level:2

		};

		var map = new kakao.maps.Map(container, options);
		var markerPosition  = new kakao.maps.LatLng(37.1581,128.0463); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);    
		</script>
		</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container"
		style="border-top: 1px solid #e1e1e1; padding: 10px 0;">
		<strong>버스 이용 시</strong>
		<div>
			<p>제천시외버스터미널에서 하차 후 택시 이용</p>
		</div>
	</div>
	<div class="container"style="border-top: 1px solid #e1e1e1; padding: 10px 0;">
		<strong>열차 이용 시</strong>
		<div>
			<!-- <span><img src="../images/bg/bg_conf_info_li_guide.gif" alt="" /></span> -->
			<p>제천역에서 하차 후 택시 이용</p>
		</div>
		<div class="btn-korail">
			<a href="http://info.korail.com/mbs/www/index.jsp">코레일
				바로가기</a>
		</div>
	</div>
	<!-- Map Section End -->

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