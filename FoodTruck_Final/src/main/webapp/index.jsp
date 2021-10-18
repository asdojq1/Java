<!-- 1. POST 전송시 한글깨짐sendredirect
JSP 페이지 상단에 request.setCharacterEncoding 을 명시한다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 2. GET 전송시 한글깨짐
Tomcat의 server.xml에 URIEncoding 옵션을 추가해 준다.  -->
<Connector port="8080" protocol="HTTP/1.1" connectionTimeout="20000"
	redirectPort="8443" URIEncoding="UTF-8" />
<!doctype html>
<%
	String id = (String) session.getAttribute("userId");

if (id != null) {
	System.out.println("인덱스 로그아웃");
	response.sendRedirect("login/logOut.do");
}
%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>FT Zone | 메인페이지</title>
<!-- Favicon -->
<link rel="shortcut icon" href="resources/static/images/favicon.ico" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/static/css/bootstrap.min.css">
<!-- Typography CSS -->
<link rel="stylesheet" href="resources/static/css/typography.css">
<!-- Style CSS -->
<link rel="stylesheet" href="resources/static/css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="resources/static/css/responsive.css">
<style>
@font-face {
	font-family: 'Cafe24Ssurround';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#mainName {
	font-family: 'Cafe24Ssurround';
}
</style>
</head>
<body class="right-column-fixed">
	<!-- loader Start -->
	<div id="loading">
		<div id="loading-center"></div>
	</div>
	<!-- loader END -->
	<!-- Wrapper Start -->
	<div class="wrapper">
		<!-- Sidebar  -->
		<div class="iq-sidebar">
			<div id="sidebar-scrollbar">
				<nav class="iq-sidebar-menu">
					<ul id="iq-sidebar-toggle" class="iq-menu">
						<li><a href="myfeed/feed.do" class=" "><i
								class="las la-user"></i><span>My Feed</span></a></li>
						<li><a href="Event/profile-event.do" class=" "><i
								class="las la-film"></i><span>이번달 이벤트</span></a></li>
						<li><a href="#blog" class="  collapsed"
							data-toggle="collapse" aria-expanded="false"><i
								class="lab la-blogger"></i><span>푸드트럭존</span><i
								class="ri-arrow-right-s-line iq-arrow-right"></i></a>
							<ul id="blog" class="iq-submenu collapse"
								data-parent="#iq-sidebar-toggle">
								<li><a href="foodTruckZone/weather.do" class=" "><i
										class="ri-snowy-line"></i><span>우리동네 푸드트럭존</span></a></li>
								<li><a href="festival/festivalBoard.do"><i
										class="ri-list-check-2"></i>축제별 푸드트럭</a></li>
							</ul></li>

						<li><a href="#store" class="  collapsed"
							data-toggle="collapse" aria-expanded="false"><i
								class="las la-store"></i><span>커뮤니티</span><i
								class="ri-arrow-right-s-line iq-arrow-right"></i></a>
							<ul id="store" class="iq-submenu collapse"
								data-parent="#iq-sidebar-toggle">
								<li><a href="TruckRequest/introTruck.do"><i
										class="las la-users"></i><span>푸드트럭 소개</span></a></li>
								<li><a href="TruckRequest/TruckRequest.do"><i
										class="ri-list-check-2"></i>푸드트럭 요청</a></li>
								<li><a href="TruckRequest/TruckRecruit.do"><i
										class="ri-list-check-2"></i>푸드트럭 모집</a></li>
							</ul></li>

						<li><a href="apply/truckApply.do" class=" "><i
								class="ri-focus-2-line"></i><span>푸드트럭자리 신청 및 조회</span></a></li>

						<li><a href="#mailbox" class="  collapsed"
							data-toggle="collapse" aria-expanded="false"><i
								class="ri-mail-line"></i><span>고객센터 & 문의</span><i
								class="ri-arrow-right-s-line iq-arrow-right"></i></a>
							<ul id="mailbox" class="iq-submenu collapse"
								data-parent="#iq-sidebar-toggle">
								<li><a href="QnA/pages-faqQ&A.do"><i
										class="ri-inbox-line"></i>Q&A 게시판</a></li>
								<li><a href="QnA/pages-faqBall.do"><i
										class="ri-edit-line"></i>공공기관 협업 신청 게시판</a></li>
								<li><a href="QnA/pages-faqPromotion.do"><i
										class="ri-edit-line"></i>홍보 협찬 요청 신청 게시판</a></li>
							</ul></li>
					</ul>
				</nav>
				<div class="p-3"></div>
			</div>
		</div>
		<!-- TOP Nav Bar -->
		<div class="iq-top-navbar">
			<div class="iq-navbar-custom">
				<nav class="navbar navbar-expand-lg navbar-light p-0">
					<div class="iq-navbar-logo d-flex justify-content-between">
						<a href="index.jsp"> <img
							src="./resources/static/images/foodTrcukIcon.png"
							class="img-fluid" alt=""> <span id="mainName">FoodTruck
								Zone</span>
						</a>
						<div class="iq-menu-bt align-self-center">
							<div class="wrapper-menu">
								<div class="main-circle">
									<i class="ri-menu-line"></i>
								</div>
							</div>
						</div>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent"
						aria-label="Toggle navigation">
						<i class="ri-menu-3-line"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto navbar-list">
							<li>
								<form action="login/signIn.do">
									<button type="submit" class="btn btn-primary float-right">로그인</button>
								</form>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- TOP Nav Bar END -->
		<!-- Page Content  -->
		<div id="content-page" class="content-page">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 row m-0 p-0">
<!-- 						<div class="col-sm-12"> -->
<!-- 							<div id="post-modal-data" -->
<!-- 								class="iq-card iq-card-block iq-card-stretch iq-card-height" -->
<!-- 								style="height: 230px"> -->
<!-- 								<div class="iq-card-header d-flex justify-content-between"> -->
<!-- 									<div class="iq-header-title"> -->
<!-- 										<h4 class="card-title">게시물 작성</h4> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<div class="iq-card-body" data-toggle="modal" -->
<!-- 									data-target="#post-modal"> -->
<!-- 									<div class="d-flex align-items-center"> -->
<!-- 										<div class="user-img"> -->
<!-- 											<img src="./resources/static/images/person1.png" alt="userimg" -->
<!-- 												class="avatar-60 rounded-circle"> -->
<!-- 										</div> -->
<!-- 										<form class="post-text ml-3 w-100" action="javascript:void();" -->
<!-- 											id="createPost"> -->
<!-- 											<input type="text" class="form-control rounded" -->
<!-- 												placeholder="글을 적어주세요..." style="border: none;"> -->
<!-- 										</form> -->
<!-- 									</div> -->
<!-- 									<hr> -->
<!-- 									<ul -->
<!-- 										class="post-opt-block d-flex align-items-center list-inline m-0 p-0"> -->
<!-- 										<li class="iq-bg-primary rounded p-2 pointer mr-3"><a -->
<!-- 											href="#"></a><img -->
<!-- 											src="./resources/static/images/small/07.png" alt="icon" -->
<!-- 											class="img-fluid">사진/동영상</li> -->
<!-- 										게시물 등록 부분 아마도 나중에 submit으로 바꾸던가 button 기능을 submit으로 바꿔야할 것 이다. -->
<!-- 										<button class="btn btn-primary d-block mt-3" -->
<!-- 											style="margin-left: 65%;">등록</button> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<div class="col-sm-12">
							<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
								<div class="iq-card-body">
									<div class="user-post-data">
										<div class="d-flex flex-wrap">
											<div class="media-support-user-img mr-3">
												<img class="rounded-circle img-fluid"
													src="./resources/static/images/person1.png" alt="">
											</div>
											<div class="media-support-info mt-2">
												<h5 class="mb-0 d-inline-block">
													<a href="#" class="">로그인을 해주세요.</a>
												</h5>
												<p class="mb-0 text-primary">로그인을 해주세요.</p>
											</div>
										</div>
									</div>
									<div class="mt-3">
										<p>로그인을 해주세요.</p>
									</div>
									<div class="user-post">
										<div class="d-flex">
											<div class="col-md-6">
												<a href="javascript:void();"><img
													src="./resources/static/images/5961596dsa.webp"
													alt="post-image" class="img-fluid rounded w-100"></a>
											</div>
										</div>
									</div>
									<div class="comment-area mt-3">
										<div class="d-flex justify-content-between align-items-center">
											<div
												class="like-block position-relative d-flex align-items-center">
												<div class="d-flex align-items-center">
													<div class="like-data">
														<div class="dropdown">
															<span class="dropdown-toggle" data-toggle="dropdown"></span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<hr>
									</div>
								</div>
								<div class="iq-card-body">
									<div class="user-post-data">
										<div class="d-flex flex-wrap">
											<div class="media-support-user-img mr-3">
												<img class="rounded-circle img-fluid"
													src="./resources/static/images/person1.png" alt="">
											</div>
											<div class="media-support-info mt-2">
												<h5 class="mb-0 d-inline-block">
													<a href="#" class="">로그인을 해주세요.</a>
												</h5>
												<p class="mb-0 text-primary">로그인을 해주세요.</p>
											</div>
										</div>
									</div>
									<div class="mt-3">
										<p>로그인을 해주세요.</p>
									</div>
									<div class="user-post">
										<div class="d-flex">
											<div class="col-md-6">
												<a href="javascript:void();"><img
													src="./resources/static/images/festivalbg.png"
													alt="post-image" class="img-fluid rounded w-100"></a>
											</div>
										</div>
									</div>
									<div class="comment-area mt-3">
										<div class="d-flex justify-content-between align-items-center">
											<div
												class="like-block position-relative d-flex align-items-center">
												<div class="d-flex align-items-center">
													<div class="like-data">
														<div class="dropdown">
															<span class="dropdown-toggle" data-toggle="dropdown"></span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<hr>
									</div>
								</div>
							</div>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Wrapper END -->
	 <!-- Footer -->
      <footer class="bg-white iq-footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a href="privacy-policy.html">개인정보처리방침</a></li>
						<li class="list-inline-item"><a href="terms-of-service.html">서비스
								이용약관</a></li>
					</ul>
				</div>
				<div class="col-lg-6 text-right">
					저작권 2021.09.30 <a href="#">푸드트럭</a>모든 권리는 푸드트럭에 있습니다.
				</div>
			</div>
		</div>
	</footer>
      <!-- Footer END -->
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="resources/static/js/jquery.min.js"></script>
	<script src="resources/static/js/popper.min.js"></script>
	<script src="resources/static/js/bootstrap.min.js"></script>
	<!-- Appear JavaScript -->
	<script src="resources/static/js/jquery.appear.js"></script>
	<!-- Countdown JavaScript -->
	<script src="resources/static/js/countdown.min.js"></script>
	<!-- Counterup JavaScript -->
	<script src="resources/static/js/waypoints.min.js"></script>
	<script src="resources/static/js/jquery.counterup.min.js"></script>
	<!-- Wow JavaScript -->
	<script src="../resources/static/js/wow.min.js"></script>
	<!-- Apexcharts JavaScript -->
	<script src="resources/static/js/apexcharts.js"></script>
	<!-- Slick JavaScript -->
	<script src="resources/static/js/slick.min.js"></script>
	<!-- Select2 JavaScript -->
	<script src="resources/static/js/select2.min.js"></script>
	<!-- Owl Carousel JavaScript -->
	<script src="resources/static/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup JavaScript -->
	<script src="resources/static/js/jquery.magnific-popup.min.js"></script>
	<!-- Smooth Scrollbar JavaScript -->
	<script src="resources/static/js/smooth-scrollbar.js"></script>
	<!-- lottie JavaScript -->
	<script src="resources/static/js/lottie.js"></script>
	<!-- am core JavaScript -->
	<script src="resources/static/js/core.js"></script>
	<!-- am charts JavaScript -->
	<script src="resources/static/js/charts.js"></script>
	<!-- am animated JavaScript -->
	<script src="resources/static/js/animated.js"></script>
	<!-- am kelly JavaScript -->
	<script src="resources/static/js/kelly.js"></script>
	<!-- am maps JavaScript -->
	<script src="resources/static/js/maps.js"></script>
	<!-- am worldLow JavaScript -->
	<script src="resources/static/js/worldLow.js"></script>
	<!-- Chart Custom JavaScript -->
	<script src="resources/static/js/chart-custom.js"></script>
	<!-- Custom JavaScript -->
	<script src="resources/static/js/custom.js"></script>
</body>
</html>
