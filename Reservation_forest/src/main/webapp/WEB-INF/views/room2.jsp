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

<title>Welcome | G40</title>
</head>
<body>
	<!-- Header -->
	<%@include file="./inc/Header.jsp"%>
	<!-- Header End -->
	<!-- Romme Detail Section Begin-->

	<section class="rooms-section spad">
        <div class="container">
            <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>포레스트 휴식</h2>
                    </div>
                </div>
            </div>
        </div>
        	<div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="room-details-item">
                        <img src="${pageContext.request.contextPath}/resources/img/room/g40.jpg" width="100%" alt="">
                        <div class="rd-text">
                            <div class="rd-title">
                                <h3>G40 Forest</h3>
                         
                            </div>
                           
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="r-o">객실수:</td>
                                        <td>46실</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실정원:</td>
                                        <td>5명</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실구성:</td>
                                        <td>침실 겸 거실, 온돌 1, 욕실 1</td>
                                    </tr>
                                    <tr>
                                        <td class="r-o">객실비품:</td>
                                        <td>TV,전자레인지,전기포트,식기,헤어드라이어,샤워용품(바디워시,샴푸,트리트먼트) 등</td>
                                    </tr>
                                </tbody>
                            </table>                 
                   		</div>
                 	</div>
                        <div class="room-detail">
					<img src="${pageContext.request.contextPath}/resources/img/room/s25detail.jpg" alt="">
					</div>
                     </div>
                    </div>

			</div>
        </div>
    </section>
    <!-- Romme Detail Section Begin-->
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