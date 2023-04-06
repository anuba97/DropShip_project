<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta name="viewport"
			content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
		<meta name="HandheldFriendly" content="true">
		<meta name="format-detection" content="telephone=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link rel="shortcut icon" href="/home/img/favicon.ico" />
		<title>마이페이지</title>
		<link rel="stylesheet"href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/theme/buzinga/css/aos3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/theme/buzinga/css/common3816.css?ver=210618">
		<link rel="stylesheet"
			href="../home/theme/buzinga/css/sub3816.css?ver=210618">
		
		<script src="https://bxgs.co.kr/js/sns.js"></script>
		<script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
		<link rel="stylesheet"
			href="https://bxgs.co.kr/theme/buzinga/css/animate.css">
		<script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script>
		<script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>
		<script>
			// 자바스크립트에서 사용하는 전역변수 선언
			var g5_url = "https://bxgs.co.kr";
			var g5_bbs_url = "https://bxgs.co.kr/bbs";
			var g5_is_member = "1";
			var g5_is_admin = "";
			var g5_is_mobile = "1";
			var g5_bo_table = "";
			var g5_sca = "";
			var g5_editor = "";
			var g5_cookie_domain = "";
			var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
			var g5_shop_url = "https://bxgs.co.kr/shop";
		</script>
		<link rel="stylesheet"
			href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
			integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
			crossorigin="anonymous">
		<script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script>
		<script src="../home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
		<script src="../home/js/common3816.js?ver=210618"></script>
		<script src="../home/js/wrest3816.js?ver=210618"></script>
		<script src="../home/js/placeholders.min3816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/aos3816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
		<script src="../home/js/modernizr.custom.701113816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
		<script src="../home/theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
		<style>
			video {
				width:1020px;
				height:600px;
			}
		</style>
	</head>
	<body>
		<div id="hd_login_msg">
			오민수님 로그인 중 <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a>
		</div>
		<div class="cursor-ball">
			<div class="ball"></div>
		</div>
		<div id="skip_to_container">
			<a href="#contents">본문 바로가기</a>
		</div>
		<div id="wrap" class="sub">
			<!-- header 부분 시작 -->
			<%@ include file="../top/header.jsp"%>
			<!-- header 부분 끝 -->
			<main id="contents">
				<section class="mypage">
					<div class="maxinner">
						<!-- mypage_side_bar 시작 부분 -->
						<%@ include file="../top/mypage_side_bar.jsp"%>
						<!-- mypage_side_bar 끝 부분 -->
						<div class="mypage-con">
							<!-- mypage_coupon_header 시작 부분 -->
							<%@ include file="../top/mypage_coupon_header.jsp"%>
							<!-- mypage_coupon_header 끝 부분 -->
							<div class="mypage-progress">
								<div class="mypage-tit">
									<h3>진행 중인 주문</h3>
								</div>
								<ul>
									<li><span class="f-color">0</span>입금확인중</li>
									<li><span class="">0</span>입금완료</li>
									<li><span class="">0</span>상품준비중</li>
									<!-- 갯수 있을땐 class="f-color" -->
									<li><span class="">0</span>상품배송</li>
									<li><span class="">0</span>배송완료</li>
								</ul>
							</div>
							<div class="mypage-order">
								<div class="mypage-tit">
									<h3>드론 배송 현황</h3>
									<!--<p>최근 30일 내에 진행중인 주문정보입니다.</p>-->
								</div>
								<div class="tbstyle01">
									<table>
										<caption class="hide">주문목록</caption>
										<colgroup>
											<col class="col1" width="160px">
											<col class="col2" width="160px">
											<col class="col3" width="160px">
											<col class="col4" width="80px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">주문일/주문번호</th>
												<th scope="col">출발지</th>
												<th scope="col">배송지</th>
												<th scope="col">받는 이</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2023.03.23/565656</td>
												<td>신정 비행장</td>
												<td>경기도 고양시 일산서구 대화2로 121 606동 502호</td>
												<td>고혁우</td>
											</tr>
											<!--------------------드론 페이지 들어가는 부분--------------------------->
											<tr>
												<td colspan="4">
													<div class="video-container">
										               	<div>
									                       <video id="video-player" autoplay muted controls>
										                    	<source src="../home/video/drone.mp4" type="video/mp4">
										                    </video>
									                    </div>
													</div>
												</td>
											</tr>
											<!--------------------------------------------------------------------->
										</tbody>
									</table>
									<a href="mypage" class="btnset btn-type02">이전 페이지</a>
								</div>
							</div>
						</div>
				</section>
			</main>
			<!-- header 부분 시작 -->
			<%@ include file="../top/footer.jsp"%>
			<!-- header 부분 끝 -->
			<div id="gotop">
				<a href="javascript:;"><span class="hide">맨위로가기</span></a>
			</div>
		</div>
	</body>
</html>
