<!-- 1. POST 전송시 한글깨짐
JSP 페이지 상단에 request.setCharacterEncoding 을 명시한다. -->
<%
	String id = (String) session.getAttribute("userId");

if (id == null) {
	response.sendRedirect("../login/signIn.do");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 2. GET 전송시 한글깨짐
Tomcat의 server.xml에 URIEncoding 옵션을 추가해 준다.  -->

<Connector port="8080" protocol="HTTP/1.1" connectionTimeout="20000"
	redirectPort="8443" URIEncoding="UTF-8" />


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>FT Zone | 메인페이지</title>
<!-- Favicon -->
<!--       <link rel="shortcut icon" href=".../resources/static/images/favicon.ico" /> -->
<!--       Bootstrap CSS -->
<!--       <link rel="stylesheet" href=".../resources/static/css/bootstrap.min.css"> -->
<!--       Typography CSS -->
<!--       <link rel="stylesheet" href=".../resources/static/css/typography.css"> -->
<!--       Style CSS -->
<!--       <link rel="stylesheet" href=".../resources/static/css/style.css"> -->
<!--       Responsive CSS -->
<!--       <link rel="stylesheet" href=".../resources/static/css/responsive.css"> -->
<script src="../resources/static/js/mainCSS.js"></script>
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
						<li><a href="../myfeed/feed.do" class=" "><i
								class="las la-user"></i><span>My Feed</span></a></li>

						<li><a href="../Event/profile-event.do" class=" "><i
								class="las la-film"></i><span>이번달 이벤트</span></a></li>

						<li><a href="#blog" class="  collapsed"
							data-toggle="collapse" aria-expanded="false"><i
								class="lab la-blogger"></i><span>푸드트럭존</span><i
								class="ri-arrow-right-s-line iq-arrow-right"></i></a>
							<ul id="blog" class="iq-submenu collapse"
								data-parent="#iq-sidebar-toggle">
								<li><a href="../foodTruckZone/weather.do" class=" "><i
										class="ri-snowy-line"></i><span>우리동네 푸드트럭존</span></a></li>
								<li><a href="../festival/festivalBoard.do"><i
										class="ri-list-check-2"></i>축제별 푸드트럭</a></li>
							</ul></li>

						<li><a href="#store" class="  collapsed"
							data-toggle="collapse" aria-expanded="false"><i
								class="las la-store"></i><span>커뮤니티</span><i
								class="ri-arrow-right-s-line iq-arrow-right"></i></a>
							<ul id="store" class="iq-submenu collapse"
								data-parent="#iq-sidebar-toggle">
								<li><a href="../TruckRequest/introTruck.do" class=" "><i
										class="las la-users"></i><span>푸드트럭 소개</span></a></li>
								<li><a href="../TruckRequest/TruckRequest.do"><i
										class="ri-list-check-2"></i>푸드트럭 요청</a></li>
								<li><a href="../TruckRequest/TruckRecruit.do"><i
										class="ri-list-check-2"></i>푸드트럭 모집</a></li>
							</ul></li>
						<li><a href="../apply/truckApply.do" class=" "><i
								class="ri-focus-2-line"></i><span>푸드트럭자리 신청 및 조회</span></a></li>

						<li><a href="#mailbox" class="  collapsed"
							data-toggle="collapse" aria-expanded="false"><i
								class="ri-mail-line"></i><span>고객센터 & 문의</span><i
								class="ri-arrow-right-s-line iq-arrow-right"></i></a>
							<ul id="mailbox" class="iq-submenu collapse"
								data-parent="#iq-sidebar-toggle">
								<li><a href="../QnA/pages-faqQ&A.do"><i
										class="ri-inbox-line"></i>Q&A 게시판</a></li>
								<li><a href="../QnA/pages-faqBall.do"><i
										class="ri-edit-line"></i>공공기관 협업 신청 게시판</a></li>
								<li><a href="../QnA/pages-faqPromotion.do"><i
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
						<a href="../mainpage/mainpage.do"> <img
							src="../resources/static/images/foodTrcukIcon.png"
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
							<li><a href="../myfeed/feed.do"
								class="  d-flex align-items-center"> <img
									src="../resources/upload/${sessionScope.userPhoto}"
									class="img-fluid rounded-circle mr-3" alt="user">
									<div class="caption">
										<h6 class="mb-0 line-height">${sessionScope.userNick}</h6>
									</div>
							</a></li>
							<ul class="navbar-list">
								<li><a href="#"
									class="search-toggle   d-flex align-items-center"> <i
										class="ri-arrow-down-s-fill"></i>
								</a>
									<div class="iq-sub-dropdown iq-user-dropdown">
										<div class="iq-card shadow-none m-0">
											<div class="iq-card-body p-0 ">
												<div class="bg-primary p-3 line-height">
													<h6 class="mb-0 text-white line-height"
														style="display: inline;">안녕하세요</h6>
													<h4 class="mb-0 text-white line-height"
														style="display: inline;">${sessionScope.userNick}</h4>
													<h6 class="mb-0 text-white line-height"
														style="display: inline;">님.</h6>
													<br> <span class="text-white font-size-12">사용가능</span>
												</div>
												<a href="../myProfile/myProfile.do"
													class="iq-sub-card iq-bg-primary-hover">
													<div class="media align-items-center">
														<div class="rounded iq-card-icon iq-bg-primary">
															<i class="ri-file-user-line"></i>
														</div>
														<div class="media-body ml-3">
															<h6 class="mb-0 ">내 프로필</h6>
															<p class="mb-0 font-size-12">개인 프로필 세부 정보 보기.</p>
														</div>
													</div>
												</a> <a href="../myProfile/myProfileEdit.do"
													class="iq-sub-card iq-bg-warning-hover">
													<div class="media align-items-center">
														<div class="rounded iq-card-icon iq-bg-warning">
															<i class="ri-profile-line"></i>
														</div>
														<div class="media-body ml-3">
															<h6 class="mb-0 ">프로필 편집</h6>
															<p class="mb-0 font-size-12">개인정보 수정.</p>
														</div>
													</div>
												</a> <a href="account-setting.html"
													class="iq-sub-card iq-bg-info-hover"> </a>
												<div class="d-inline-block w-100 text-center p-3">

													<a class="bg-primary iq-sign-btn" href="../login/logOut.do"
														role="button">로그아웃<i class="ri-login-box-line ml-2"></i></a>
												</div>
											</div>
										</div>
									</div></li>
							</ul>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!--      TOP Nav Bar END  -->
		<!-- Page Content  -->
		<div id="content-page" class="content-page">
			<div class="container">
			
			
					
					<div class="col-lg-4" style="position: fixed; margin-left: 53%;">
						<div class="iq-card">
							<div class="iq-card-header d-flex justify-content-between">
								<div class="iq-header-title">
									<h4 class="card-title">회원 방문자 랭킹</h4>
								</div>
							</div>
							
							<c:forEach items="${CountList }" var="CountList">
							<div>
								<ul class="media-story m-0 p-0">
									<li class="d-flex mb-4 align-items-center active"><img
										src="../resources/upload/${CountList.userPhoto}"
										alt="story-img" class="rounded-circle img-fluid">
										<div class="stories-data ml-3">
											<h5>${CountList.userNick}</h5>
											<p class="mb-0">${CountList.userCount} 회 방문</p>
										</div></li>
								</ul>
							</div>
							</c:forEach>
						</div>
					
					</div>
					<!-- 시작~~~~ -->
					
					<c:forEach items="${mainList }" var="mainList">
						
					
											  <input type="hidden" class="feedSeqList" value="${ListFeed.get(0).feedSeq} ">
												<div class="iq-card" style="margin-left:13%; width:60%;">
													<div class="iq-card-body">
														<div class="post-item">
															<div class="user-post-data p-3">
																<div class="d-flex flex-wrap">
																	<div class="media-support-user-img mr-3">
																		<img class="rounded-circle img-fluid"
																			src="../resources/upload/${mainList.userPhoto}" alt="">
																	</div>
																	<div class="media-support-info mt-2">
																		
																		<a onclick="button_feed(this)" style="cursor:pointer">
																			<input type="hidden" value="${mainList.userNick}" class="userNick">
																			<h5 class="mb-0 d-inline-block">
																				${mainList.userNick}
																			
																		</h5>
																		</a>
																		<p class="ml-1 mb-0 d-inline-block">Add New Post</p>
																	
																		<p class="mb-0">
																			<fmt:formatDate value="${mainList.eventdate}"
																				pattern="yyyy-MM-dd KK:mm" />
																		</p>
																	</div>
																	
																</div>
															</div>
															<div class="user-post">
																<h5>${mainList.eventContent}</h5>
																<!-- 글내용 -->
															</div>

															<div class="user-post">
																<c:choose>
																	<c:when
																		test="${mainList.eventContent_photo != null }">
																		<a href="javascript:void();"><img width="320px"
																			height="210px"
																			src="../resources/upload/${mainList.eventContent_photo} "
																			alt="post-image" /></a>
																	</c:when>
																</c:choose>
															</div>
															<div class="comment-area mt-3">
																<div
																	class="d-flex justify-content-between align-items-center">
																	<div
																		class="like-block position-relative d-flex align-items-center">

						
																	</div>
																</div>
																</div>
																<div class="comment-area mt-3">
																	<div
																		class="d-flex justify-content-between align-items-center">
																		<div
																			class="like-block position-relative d-flex align-items-center">
																			<div class="d-flex align-items-center">
																				<div class="like-data">
																					<div class="dropdown">
																						<span class="dropdown-toggle"
																							data-toggle="dropdown" aria-haspopup="true"
																							aria-expanded="false" role="button"> <img
																							src="images/icon/01.png" class="img-fluid" alt="">
																						</span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	</div>
																	</div>
																	</div>
																	</div>
																	
																	<hr>
														</c:forEach>
					
					<div class="col-sm-12 text-center">
						<img
							src="../resources/static/images/page-img/page-load-loader.gif"
							alt="loader" style="height: 100px;">
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
	<!--       <script src=".../resources/static/js/jquery.min.js"></script> -->
	<!--       <script src=".../resources/static/js/popper.min.js"></script> -->
	<!--       <script src=".../resources/static/js/bootstrap.min.js"></script> -->
	<!--       Appear JavaScript -->
	<!--       <script src=".../resources/static/js/jquery.appear.js"></script> -->
	<!--       Countdown JavaScript -->
	<!--       <script src=".../resources/static/js/countdown.min.js"></script> -->
	<!--       Counterup JavaScript -->
	<!--       <script src=".../resources/static/js/waypoints.min.js"></script> -->
	<!--       <script src=".../resources/static/js/jquery.counterup.min.js"></script> -->
	<!--       Wow JavaScript -->
	<!--       <script src=".../resources/static/js/wow.min.js"></script> -->
	<!--       Apexcharts JavaScript -->
	<!--       <script src=".../resources/static/js/apexcharts.js"></script> -->
	<!--       Slick JavaScript -->
	<!--       <script src=".../resources/static/js/slick.min.js"></script> -->
	<!--       Select2 JavaScript -->
	<!--       <script src=".../resources/static/js/select2.min.js"></script> -->
	<!--       Owl Carousel JavaScript -->
	<!--       <script src=".../resources/static/js/owl.carousel.min.js"></script> -->
	<!--       Magnific Popup JavaScript -->
	<!--       <script src=".../resources/static/js/jquery.magnific-popup.min.js"></script> -->
	<!--       Smooth Scrollbar JavaScript -->
	<!--       <script src=".../resources/static/js/smooth-scrollbar.js"></script> -->
	<!--       lottie JavaScript -->
	<!--       <script src=".../resources/static/js/lottie.js"></script> -->
	<!--       am core JavaScript -->
	<!--       <script src=".../resources/static/js/core.js"></script> -->
	<!--       am charts JavaScript -->
	<!--       <script src=".../resources/static/js/charts.js"></script> -->
	<!--       am animated JavaScript -->
	<!--       <script src=".../resources/static/js/animated.js"></script> -->
	<!--       am kelly JavaScript -->
	<!--       <script src=".../resources/static/js/kelly.js"></script> -->
	<!--       am maps JavaScript -->
	<!--       <script src=".../resources/static/js/maps.js"></script> -->
	<!--       am worldLow JavaScript -->
	<!--       <script src=".../resources/static/js/worldLow.js"></script> -->
	<!--       Chart Custom JavaScript -->
	<!--       <script src=".../resources/static/js/chart-custom.js"></script> -->
	<!--       Custom JavaScript -->
	<!--       <script src=".../resources/static/js/custom.js"></script> -->
	<script src="../resources/static/js/mainJS.js"></script>
</body>
<script type="text/javascript">

function button_feed(e) {
	var userNick = $(e).find("input").val();
	location.href = "../myfeed/myfeed.do?userNick=" + userNick;
}

</script>
</html>
