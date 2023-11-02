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
<!--icon style  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<title>Welcome | SIGNUP</title>
</head>
<body>
	<!-- HEADER BEGIN -->
	<%@include file="./inc/Header.jsp"%>
	<!-- HEADER END -->

	<div calss="subBanner">
		<img
			src="${pageContext.request.contextPath}/resources/img/img_subbanner_event.jpg"
			alt="">
	</div>
	
	<div class="content">
	<div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3>Sign Up</h3>
                  <p class="mb-4">Thank you for joining us!</p>
                </div>
                <form:form modelAttribute="Registration" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
                  <div class="form-group first field--not-empty">
                    <label for="id">ID</label>
                    <form:input path="username" type="text" class="form-control" id="id" required="true"/>           
                  </div>
   
                  <div class="form-group field--not-empty">
                    <label for="password">Password</label>
                    <form:input path="password" type="password" class="form-control" id="password" required="true" />
                    
                  </div>
                  <div class="form-group last mb-4 field--not-empty">
                    <label for="re-password">Re-type Password</label>
                    <input type="password" class="form-control" id="re-password">
                    
                  </div>
                     <div class="form-group first field--not-empty">
                    <label for="name">Name</label>
                    <form:input path="user_name" type="text" class="form-control" id="name" />

                  </div>
                     <div class="form-group first field--not-empty">
                    <label for="mobile">Mobile</label>
                    <form:input path="mobile" type="text" class="form-control" id="mobile" />
                 </div>
                 
              
                    <!--  <div class="form-group first field--not-empty">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email">

                  </div> -->
                 <!--  <div class="d-flex mb-5 align-items-center">
                    <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Agree our <a href="#">Terms and Conditions</a></span>
                    <input type="checkbox" checked="checked">
                    <div class="control__indicator"></div>
                  </label>
                    <span class="ml-auto"><a href="#" class="forgot-pass">Sign In</a></span> 
                  </div> -->
		
                  <input type="submit" value="Register" class="btn btn-pill text-white btn-block btn-primary">

               <!--    <span class="d-block text-center my-4 text-muted"> or register with</span>
                  
                  <div class="social-login text-center">
                    <a href="#" class="facebook">
                      <span class="icon-facebook mr-3"></span> 
                    </a>
                    <a href="#" class="twitter">
                      <span class="icon-twitter mr-3"></span> 
                    </a>
                    <a href="#" class="google">
                      <span class="icon-google mr-3"></span> 
                    </a>
                  </div> -->
                </form:form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
	</div>

	<!-- FOOTER BEGIN -->
	<%@include file="./inc/Footer.jsp"%>
	<!-- FOOTER END -->

	<!-- JS Plugins -->
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
	<!-- ----- -->

</body>
</html>