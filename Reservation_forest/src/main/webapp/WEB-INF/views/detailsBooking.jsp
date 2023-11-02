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

<title>RESERVATION</title>
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
                        <h2>예약상세보기</h2>
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
							<th>체크인</th>
							<th>체크아웃</th>
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
							<td>${reservation.id }</td>
							<td>${reservation.room_type}</td>
							<td>${fn:substring(reservation.checkin_date,0,10) }</td>
							<td>${fn:substring(reservation.checkout_date,0,10) }</td>
							<td>${reservation.name} </td>
							<td>
								<div class="dropdown">
									<button type="button"
										class="btn p-0 dropdown-toggle hide-arrow"
										data-bs-toggle="dropdown" aria-expanded="false">
									</button>
									<div class="dropdown-menu" style="">
									<!-- modal 활용하여 한페이지에서 처리하기  -->
										<a class="dropdown-item" href="" data-bs-toggle="modal" data-bs-target="#updateModal" >변경</a> <a
											class="dropdown-item" href="" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</a>
										<form><input type="hidden" name="id"value="${reservation.id}"/></form>
									</div>
								</div>
							</td>
						</tr>		
					</tbody>
					</c:forEach>
				</table>
				</div>			
			</div>
		</section>

 	<%@ include file="./updateBooking.jsp"%>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	%>
	<div class="modal" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
  	<div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteModalLabel">예약내역 삭제</h5>
        <button type="button" class="botton close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        예약을 정말 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/delete?id=<%=id%>'">삭제</button>
       	<button type="button" class="btn btn-secondary"  data-bs-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
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