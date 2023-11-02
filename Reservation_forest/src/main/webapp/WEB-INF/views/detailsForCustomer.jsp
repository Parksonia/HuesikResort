<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title></title>
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

</head>
<body>
	<!-- Header -->
	<%@include file="./inc/Header.jsp"%>

	<!-- banner -->
	<div calss="subBanner">
		<img
			src="${pageContext.request.contextPath}/resources/img/img_subbanner_event.jpg"
			alt="">
	</div>


	<section class="rooms-section spad">
		<div class="container">
		 <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <h2>나의예약</h2>
                    </div>
                </div>
           </div>     
		
			<div class="container">
			<!--planning to reservation number search -->
			<div class="table2-responsive text-nowrap">
				<table class="table2">
					<thead>
						<tr>
							<th>예약번호</th>
							<th>회원번호</th>
							<th>객실번호</th>
							<th>투숙일</th>
							<th>이용자명</th>
							<th>더보기</th>
							<!-- <th>요금</th>
							<th>상태</th> -->
						</tr>
					</thead>
			<c:forEach items= "${detailsOfOne}" var="reservation">
					<tbody class="table2-border-bottom-0">

						<tr>
							<td>${reservation.resv_code}</td>
							<td>번호</td>
							<td>${reservation.room_type}</td>

							<td>${fn:substring(reservation.resv_date,0,10) }</td>
							<td><span class="badge bg-label-primary me-1">${reservation.name} </span></td>
							<td>
								<div class="dropdown">
									<button type="button"
										class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown" aria-expanded="false">
									
									</button>
									<div class="dropdown-menu" style="">
										<a class="dropdown-item" href="#"> Edit</a> <a
											class="dropdown-item" href="#">Delete</a>
									</div>
								</div>
							</td>
						</tr>
			
						<%-- <tr>
							<td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>React
									Project</strong></td>
							<td>Barry Hunter</td>
							<td></td>
							<td><span class="badge bg-label-success me-1">Completed</span></td>
							<td>
								<div class="dropdown">
									<button type="button"
										class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown">
										<i class="bx bx-dots-vertical-rounded"></i>
									</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#"><i
											class="bx bx-edit-alt me-1"></i> Edit</a> <a
											class="dropdown-item" href="#"><i
											class="bx bx-trash me-1"></i> Delete</a>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td><i class="fab fa-vuejs fa-lg text-success me-3"></i> <strong>VueJs
									Project</strong></td>
							<td>Trevor Baker</td>
							<td></td>
							<td><span class="badge bg-label-info me-1">Scheduled</span></td>
							<td>
								<div class="dropdown">
									<button type="button"
										class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown">
										<i class="bx bx-dots-vertical-rounded"></i>
									</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#"><i
											class="bx bx-edit-alt me-1"></i> Edit</a> <a
											class="dropdown-item" href="#"><i
											class="bx bx-trash me-1"></i> Delete</a>
									</div>
								</div>
							</td>
						</tr>
						
					
						<tr>
							<td><strong>Bootstrap Project</strong></td>
							<td>Jerry Milton</td>
							<td></td>
							<td><span class="badge bg-label-warning me-1">Pending</span></td>
							<td>
								<div class="dropdown">
									<button type="button"
										class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown">
										<i class="bx bx-dots-vertical-rounded"></i>
									</button>
									<div class="dropdown-menu">
										<a class="dropdown-item"
											href="${pageContext.request.contextPath}/all"><i
											class="bx bx-edit-alt me-2"></i> Edit</a> <a
											class="dropdown-item" href="#"><i
											class="bx bx-trash me-1"></i> Delete</a>
									</div>
								</div>
							</td>
						</tr> --%>
					</tbody>
					</c:forEach>
				</table>
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

		<!-- 테이블용 부트스트랩 -->
		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
</body>
</html>