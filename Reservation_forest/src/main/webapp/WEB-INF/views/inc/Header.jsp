<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<sec:authentication property="principal" var="pinfo"/>
<sec:authorize access="isAuthenticated()" var="isAuthenticated" />
<!-- isAithenticated() : 인증된 사용자면 true -->
<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin" />
<!-- hasAuthority('ROLE_ADMIN') : 권한있는관리자면 true  -->
<sec:authorize access="isAnonymous()" var="isAnonymous" />
<!-- 방문자 케이스   -->
<!-- choose 태그 사용해서 항목별로 표시되는 것 나누기 -->
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Section Begin :  -->
	<!--   <div class="offcanvas-menu-overlay"></div>
    <div class="canvas-open">
        <i class="icon_menu"></i>
    </div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="icon_close"></i>
        </div>
        <div class="search-icon search-switch">
            <i class="icon_search"></i>
        </div>
        <div class="header-configure-area">
            <div class="language-option">
                <img src="img/flag.jpg" alt="">
                <span>EN <i class="fa fa-angle-down"></i></span>
                <div class="flag-dropdown">
                    <ul>
                        <li><a href="#">Zi</a></li>
                        <li><a href="#">Fr</a></li>
                    </ul>
                </div>
            </div>
            <a href="#" class="bk-btn">Booking Now</a>
        </div>
        <nav class="mainmenu mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./rooms.html">Rooms</a></li>
                <li><a href="./about-us.html">About Us</a></li>
                <li><a href="./pages.html">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./room-details.html">Room Details</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                        <li><a href="#">Family Room</a></li>
                        <li><a href="#">Premium Room</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">News</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="top-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-tripadvisor"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <ul class="top-widget">
            <li><i class="fa fa-phone"></i> (12) 345 67890</li>
            <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
        </ul>
    </div> -->
	<!-- Offcanvas Menu Section End -->

	<!-- Header Begin -->
	<header class="header-section header-normal">
		<div class="top-nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<ul class="tn-left">
							<li><i class="fa fa-phone"></i> (043) 123 56789</li>
							<li><i class="fa fa-envelope"></i> info.husik@gmail.com</li>
						</ul>
					</div>
					<div class="col-lg-6">
						<div class="tn-right">
							<!--    <div class="top-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div> -->


							<div class="language-option">
								<span>나의계정 <i class="fa fa-angle-down"></i></span>

								<!-- 3가지 경우의 수 방문,회원,관리자-->
								<c:choose>
									<c:when test="${isAuthenticated and isAdmin == false}">
										<div class="flag-dropdown">
											<ul>
												<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
												<li><a href="#">나의계정</a></li>
											</ul>
										</div>
									</c:when>
									<%--관리자 계정--%>
									<c:when test="${isAdmin}">
										<div class="flag-dropdown">
											<ul>
												<li><a href="#" id="logoutLink">로그아웃</a></li>
												<script>
    							document.getElementById('logoutLink').addEventListener('click', function(event) {
        						event.preventDefault(); 
        						var form = document.createElement('form');
        						form.method = 'post';
        						form.action = '${pageContext.request.contextPath}/logout'; //post방식으로 보내야 함으로 스크립트 활용
        						var csrfInput = document.createElement('input');
        						csrfInput.type = 'hidden';
        						csrfInput.name = '${_csrf.parameterName}';
        						csrfInput.value = '${_csrf.token}';
        						form.appendChild(csrfInput);

       							 document.body.appendChild(form);
        						form.submit();
    							});
								</script>
												<li><a href="#">관리자계정</a></li>
											</ul>
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" />
											</form>
										</div>
									</c:when>
									<%-- otherwise :  로그인도 안했을 때 즉 isAnonymous--%>
									<c:otherwise>
										<div class="flag-dropdown">
											<ul>
												<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
												<li><a href="${pageContext.request.contextPath}/register">회원가입</a></li>
											</ul>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="menu-item">
			<div class="container">
				<div class="rowlogo">

					<div class="col-lg-2">
						<div class="logo">
							<a href="${pageContext.request.contextPath}/"> <img
								src="${pageContext.request.contextPath}/resources/img/wordlogo.png"
								alt="실패">
							</a>
						</div>
					</div>

					<div class="col-lg-10">
						<div class="nav-menu">
							<nav class="mainmenu">
								<ul>
									<li class=""><a href="${pageContext.request.contextPath}/">Home</a></li>
									<li><a href="#">HUESIK</a>
										<ul class="dropdown">
											<li><a href="${pageContext.request.contextPath}/map">오시는길</a></li>
											<li><a href="${pageContext.request.contextPath}/tour">주변관광지</a></li>
										</ul></li>

									<li class=""><a href="#">객실</a>
										<ul class="dropdown">
											<li><a
												href="${pageContext.request.contextPath}/room?chooseNum=1">S25
													포레스트</a></li>
											<li><a
												href="${pageContext.request.contextPath}/room?chooseNum=2">G40
													포레스트</a></li>
											<li><a
												href="${pageContext.request.contextPath}/room?chooseNum=3">G70
													포레스트</a></li>
										</ul></li>

									<li class=""><a href="#">예약</a>
										<ul class="dropdown">
											<li><a href="${pageContext.request.contextPath}/all">예약현황</a></li>
											<li><a href="#">예약</a></li>
											<li><a href="#">예약조회</a></li>

										</ul></li>
									<li class=""><a href="#">News</a>
										<ul class="dropdown">
											<li><a href="${pageContext.request.contextPath}/noticeall?currentPage=1">소식</a></li>
											<li><a href="#">이용후기</a></li>
										</ul></li>

									<!--관리자 계정 로그인 시 표시됨 -->
									<c:choose>
										<c:when test="${isAdmin}">
											<li class=""><a href="#">관리자페이지</a>
												<ul class="dropdown">
													<li><a href="#">회원관리</a></li>
													<li><a href="#">예약변경</a></li>
													<li><a href="#"></a></li>
													<li><a href="#"></a></li>
												</ul></li>
										</c:when>
									</c:choose>
								</ul>
							</nav>
						</div>
					</div>

				</div>
			</div>
		</div>


	</header>
	<%-- <!-- Js Plugins -->
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
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script> --%>
</body>
</html>