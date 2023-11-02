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

<title>ADMIN | RESERVATION</title>
</head>
<body>
	<%
	int updateid = Integer.parseInt(request.getParameter("id"));
	%>
	<div class="modal" id="updateModal" tabindex="-1"
		aria-labelledby="updateModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-xl ">
			<div class="modal-content">
				<div class="modal-header">
					<div class="col-lg-6">
						<div class="breadcrumb-text">
							<h2>예약변경</h2>
						</div>
					</div>
					<!--         <h5 class="modal-title" id="updateModalLabel">예약변경</h5> -->
					<button type="button" class="botton close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
		
					<div class="container">
						<div class="col-lg-12" style="border-top: 1px solid #e1e1e1;">
							<div class="room-booking">
								<h4>예약 정보를 입력해주세요.</h4>
								<form:form modelAttribute="UpdateBooking"
									enctype="multipart/form-data" method="post">
							
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<input type="hidden" name="id"
										value="<%=updateid%>" />
									
									<fieldset>
										<div class="check-date">
											<label for="indate">체크인</label>
											<form:input type="text" path="checkin_date" id="indate"
												placeholder="날짜를 선택하세요" readonly="true" />
										</div>
										<div class="check-date">
											<label for="outdate">체크아웃</label>
											<form:input type="text" path="checkout_date" id="outdate"
												placeholder="날짜를 선택하세요" readonly="true" />

										</div>
										<script type="text/javascript">
								
									$(function() {
									  	var indateSelected = false; // 체크인 데이트를 먼저 입력 할 수 있도록 하기 위함
										
        								$("#indate").datepicker({
        								dateFormat:'yy-mm-dd', //dateformat
        								minDate : 0,//today
        								
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
												style="display:none;" required="required">
												<form:option value="1">S25 포레스트</form:option>
												<form:option value="2">S30 포레스트</form:option>
												<form:option value="3">G40 포레스트</form:option>

											</form:select>
											<script>
									$("#room_type").val("${param.roomtype}").attr("selected",true); // jqery를 통해 selected 적용 
						
									 		</script>


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
         		 						location.href="${pageContext.request.contextPath}/one?id="+<%=updateid%>;
										</script>
										</c:if>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">변경</button>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
				</div>
				
				</fieldset>
				</form:form>

			</div>
		</div>
	</div>

</body>
</html>