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

<!-- Datatables  -->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
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

	<!-- NOTICE TABLE BEGIN -->
	<section class="rooms-section spad">
		<div class="container">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<h2>공지사항</h2>
				</div>
			</div>
		</div>

		<div class="container">
			<nav class="navbar-search">


				<div class="search">
					<form method="get" action="${pageContext.request.contextPath}/noticeall">
						<div>
							<select class="nice-select" name="condition" id="condition">
								<option class="option" value="" selected>검색</option>
								<option class="option" value="title">제목</option>
								<option class="option" value="contents">내용</option>
							</select>
						</div>
						<div>
							<p>
								<input class="form-control-table" type="search"aria-label="Search" name="keyword" id="keyword" />
								<button class="search-btn" type="submit">검색</button>
							</p>
					</form>
				</div>
		</div>

		</nav>
</div>
		<div class="container">
			<table class="table">
				<thead>
					<tr>
						<th class="no">번호</th>
						<th>제목</th>
						<th class="resort">리조트</th>
						<th class="day">등록일자</th>
					</tr>
				</thead>
				<tbody>
						<c:forEach items="${NoticeAllList}" var="notice">
					<tr>
						<td class="no">${notice.id}</td>
							<td class="title"><a href="${pageContext.request.contextPath}/noticeone?id=${notice.id}">${notice.title}</a></td>
							<td class="resort">${notice.adminname}</td>
							<td class="day">${notice.inputdate}</td>				
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>

	<!-- NOTICE TABLE END -->
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