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

<!--  datepicker js-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- datepicker 한글설정 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/locales/bootstrap-datepicker.ko.min.js"
	integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<title>Welcome | RESERVATION</title>
</head>
<body>

	<!-- Header -->
	<%@include file="./inc/Header.jsp"%>


	<!-- RESERVATION SECTION BEGIN -->
	<section class="rooms-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>예약</h2>
					</div>
				</div>
				<%String type = request.getParameter("type");
  				String checkindate = request.getParameter("in_date");
				String checkoutdate = request.getParameter("out_date");
						
				%>
				<div class="container">
					<div class="col-lg-12" style="border-top: 1px solid #e1e1e1;">
						<div class="room-booking">
							<h4>예약 정보를 입력해주세요.</h4>
							<form:form modelAttribute="NewBooking"
								enctype="multipart/form-data" method="post">

								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />

								<fieldset>
									<div class="check-date">
										<label for="indate">체크인</label>
										<form:input type="text" path="checkin_date" id="indate"
											placeholder="날짜를 선택하세요" readonly="true"/>
									</div>
									<div class="check-date">
										<label for="outdate">체크아웃</label>
										<form:input type="text" path="checkout_date" id="outdate"
											placeholder="날짜를 선택하세요" readonly="true"/>
										
									</div>
									<script type="text/javascript">
								
									$(function() {
									  	var indateSelected = false; // 체크인 데이트를 먼저 입력 할 수 있도록 하기 위함
										
        								$("#indate").datepicker({
        								dateFormat:'yy-mm-dd', //dateformat
        								minDate :  "<%=checkindate%>",
        								maxDate :  "<%=checkindate%>",
										//autoclose : true // 날짜 클릭 시 자동 닫힘
										onClose: function(selectedDate){
											$("#outdate").datepicker('option','minDate', selectedDate);
											var endMaxDate = $(this).datepicker('getDate');
											endMaxDate.setDate(endMaxDate.getDate()+14); // 최대 14일 예약 규정위함
											$("#outdate").datepicker('option','maxDate', endMaxDate);
										}
									
        								});
									
        								$("#outdate").datepicker({
        									
        									//timepicker: false,
        									dateFormat:'yy-mm-dd', //dateformat
            								maxDate : 0,  // 오늘 이후 날짜 선택불가           								
            								beforeShow: function() {	
            									var startDate = $("#indate").datepicker('getDate');
            										startDate.setDate(startDate.getDate()+1); // 최소 일박을 할 수 있도록함 
            									if (startDate != null) {
            										
            										$(this).datepicker('option', 'minDate', startDate);            										
            									}
            								}
        									,onClose: function(selectedDate){
        										$("#outdate").datepicker('option','maxDate', selectedDate);
    										}
        								
        								});
        								
        								$( "#indate" ).datepicker( "refresh" ); //다시 선택하면 초기화 될 수 있도록 함 
        								$( "#outdate" ).datepicker( "refresh" );
									});	

        							</script>
									<div class="textdata">
										<label for="name">이름 </label>
										<form:input path="name" required="required" />
									</div>

									<div class="select-option">
										<label for="room_type">객실타입 </label>
										<form:select path="room_type" id="room_type"
											style="display:none;" required="required" >
											<form:option value="1">S25 포레스트</form:option>
											<form:option value="2">S30 포레스트</form:option>
											<form:option value="3">G40 포레스트</form:option>
								<script>
									$("#room_type").val("${param.roomtype}").attr("selected",true); // jqery를 통해 selected 적용 
										
								/* 	
										중복예약처리를 위해 ajax 사용하려 했으나 실패 
										$("#room_type").blur(function(){
										
										 var in_date = $("#indate").val();
										 var out_date = $("#outdate").val();
										 var room_type = $(this).val();

										 $.ajax({
											 type:"post",
											 url: "./duplicateCheck",
											 data : { 
												 	in_date : in_date,
												 	out_date : out_date,
										 			roomtype : room_type									 
										 			},
										 	dataType:"text",	
											 success : function(data) {
												 if(data === "duplicate"){ //cnt가 1이 아니면(=0일 경우) -> 중복 존재  
													  alert("해당예약을 진행할 수 없습니다.");
									                   // $('#indate').val('');
									                   // $("#outdate").val('');
														//$("#roomnum").val('');
									                } 
											 	},
											 error:function(xhr, status, error){
												 console.error("AJAX Error: " + status + " - " + error);
											 	}
											});
											
									 		}); */

									</script>
										</form:select>
									</div>
								
									<div class="textdata">
										<label for="addr">주소 </label>
										<form:input path="addr" required="required" />
									</div>
									<div class="textdata">
										<label for="tel">전화번호 </label>
										<form:input path="tel" required="required" />
									</div>
									<div class="textdata">
										<label for="payer">입금자명 </label>
										<form:input path="payer" required="required" />
									</div>

									<div class="check-date">
										<label for="comments">요청사항 </label>
										<form:textarea path="comments" id="comments"
											required="required"></form:textarea>
									</div>
									
									<c:if test="${duplicateFind eq 'success'}">
									<script>
         							alert('이미 예약된 방입니다 죄송합니다. 다른 예약을 진행하여 주십시오');
         		 					location.href="${pageContext.request.contextPath}/new";
									</script>
									</c:if>
									
									<button type="submit">Submit</button> <!-- 다시작성(초기화)버튼 생성하기 -->
								</fieldset>
							</form:form>
						</div>
					</div>
				</div>
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