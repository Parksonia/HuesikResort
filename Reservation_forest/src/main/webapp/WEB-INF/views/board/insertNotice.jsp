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

<!-- summernote editor -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>


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
			<div class="row">

				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>공지</h2>
					</div>
				</div>
			</div>
		</div>
	
		<div class="container">
				<div class="blog-details-text">
					<div class="leave-comment">
						<h5>내용을 등록해 주세요.</h5>
						
						<form:form modelAttribute="NewNotice" enctype="multipart/form-data" method="post" class="comment-form">
	
							<div class="row" style="border-top: 1px solid #e1e1e1; padding-top:20px;">
								<label for="title" class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<form:input path="title" type="text" id="title" required="required" /> 

								</div>
							</div>


							<div class="row">
								<label for="title" class="col-sm-2 col-form-label">내용</label>
								<div class="col-lg-10">
								<form:textarea path="contents" id="summernote" name="summernote"></form:textarea>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							
								<script>
								$(document).ready(function () {
								$('#summernote').summernote({
									
										tabsize : 2,
									    height: 500, // 에디터 높이
								        minHeight: null, // 최소 높이
								        maxHeight: null, // 최대 높이
								        focus: true, // 에디터 로딩 후 포커스 설정
								        lang: 'ko-KR', // 언어 설정 (한국어)
								        toolbar: [
								             	['fontsize', ['fontsize']], // 글꼴 크기 설정 옵션
								                ['font', ['bold', 'underline', 'clear']], // 글자 굵게, 밑줄, 포맷 제거 옵션
								                ['color', ['color']], // 글자 색상 설정 옵션  
								                ['height', ['height']], // 에디터 높이 조절 옵션
								                ['insert', ['picture']], // 이미지 삽입
								                ['view', ['codeview', 'fullscreen', 'help']], // 코드 보기, 전체 화면, 도움말 옵션
								            ],
								            fontSizes: [
								                '8', '9', '10', '11', '12', '14', '16', '18',
								                '20', '22', '24', '28', '30', '36', '50', '72',
								            ], // 글꼴 크기 옵션
										callbacks: {
											 onImageUpload : function(files){

												 for(var i=files.length-1; i>=0; i--){
													 sendFile(files[i], this);	 // 다중 이미지 처리 위해 추가 
												 }
									         }
										}									
									});
								});
									//ajax로 파일 보내기
									function sendFile(file,editor) {
										
										var data = new FormData()
										data.append("file", file)

										  $.ajax({
						       				 url: "./SummerNoteImageFile",
						       				 method: 'POST',
						        			data: data,
						        			processData: false,
						        			contentType: false,
						        			headers: {
									            'X-CSRF-TOKEN': '${_csrf.token}' // CSRF 토큰 값을 설정
									        },
						       				 success: function(data) {
						       					setTimeout(function() { // 이미지 url 다운로드 404에러 : 파일 생성 전 url참조하여생긴 문제 4초 딜레이 주어 해결 
						       					 $('#summernote').summernote('insertImage', data.url); 
						       					}, 4000);
						       					
						       
						        				}
						    				});	

									}
							
								</script>
								</div>	
							</div>
							
							<div class="row" style="padding-top:20px; flex-direction: row-reverse;">					
								<div class="col-sm-2 text-center">
									<button type="submit" class="site-btn">등록</button>
								</div>
							</div>
						
						</form:form>
					</div>
				</div>
			</div>
	</section>


	<!-- Footer -->
	<%@include file="../inc/Footer.jsp"%>


	<!-- Js Plugins -->
	<%--<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>		 
	 <script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

	
</body>
</html>