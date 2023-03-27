<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="/img/favicon.ico" />
<title>마이페이지</title>
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
var g5_shop_url = "https://bxgs.co.kr/shop";


</script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
</head>

<body>
<div id="hd_login_msg">오민수님 로그인 중 <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a></div>

<div class="cursor-ball">
    <div class="ball"></div>
</div>


<div id="skip_to_container">
    <a href="#contents">본문 바로가기</a>
</div>


<div id="wrap" class="sub">

		<!-- header 부분 시작 -->
		<%@ include file ="../top/header.jsp" %>
		<!-- header 부분 끝 -->

	<main id="contents">
	
	<section class="mypage">
		<div class="maxinner">
			
		<!-- mypage_side_bar 시작 부분 -->
		<%@ include file = "../top/mypage_side_bar.jsp" %>			
		<!-- mypage_side_bar 끝 부분 -->			
			
			<div class="mypage-con">
				
				<!-- mypage_coupon_header 시작 부분 -->
				<%@ include file = "../top/mypage_coupon_header.jsp" %>
				<!-- mypage_coupon_header 끝 부분 -->
				
				<div class="mypage-progress">
					<div class="mypage-tit">
						<h3>진행 중인 주문</h3>
					</div>
					<ul>
						<li><span class="f-color">0</span>입금확인중</li>
						<li><span class="">0</span>입금완료</li>
						<li><span class="">0</span>상품준비중</li><!-- 갯수 있을땐 class="f-color" -->
						<li><span class="">0</span>상품배송</li>
						<li><span class="">0</span>배송완료</li>
					</ul>
				</div>
				<div class="mypage-order">
					<div class="mypage-tit">
						<h3>최근 주문 정보</h3>
	<!--
						<p>최근 30일 내에 진행중인 주문정보입니다.</p>
	-->
					</div>
					
					
	
	<div class="tbstyle01">
	        <table>
	        <caption class="hide">주문목록</caption>
	        <colgroup>
	            <col class="col1" width="160px">
	            <col class="col2" width="*">
	            <col class="col3" width="80px">
	            <col class="col4" width="140px">
	            <col class="col5" width="150px">
	        </colgroup>
	        <thead>
	            <tr>
	                <th scope="col">주문일/주문번호</th>
	                <th scope="col">상품정보</th>
	                <th scope="col">상품수</th>
	                <th scope="col">주문금액</th>
	                <!--<th scope="col">입금액</th>-->
	                <!--<th scope="col">미입금액</th>-->
	                <th scope="col">주문상태</th>
	            </tr>
	        </thead>
	        <tbody>
			  <tr>
			    <td data-title="주문번호" class="td-num"><div>2023-03-15</div>
				  <a href="orderinquiry_view">2023031514521495</a>
	            </td>
				<td data-title="상품정보" class="td-product">
				
				  <div class="product-box">
				    <div class="product-img">
					  <div style="background-image:url(../home/data/item/1654135804/7JWE66qs65Oc64KY66y0.jpg)"></div>
					</div>
				    <div class="product-name">
				      <strong>꽃 피는 아몬드 나무<span>빈센트 반 고흐</span></strong><p>외 1건</p>
					  <!-- <p>캔버스 / 캔버스판넬 / 마띠에르 리터치 선택 / 매트없음 / 90.0cm X 71.4cm</p> -->
				    </div>
	              </div>
	            
	              <div class="product-box">
				    <div class="product-img">
					  <div style="background-image:url(../home/data/item/1654133549/656R6re466Oo7JWE64uk66as.jpg)"></div>
					</div>
					<div class="product-name"><strong>아를의 랑그루아 다리<span>빈센트 반 고흐</span></strong><p>외 1건</p>
					<!-- <p>캔버스 / 캔버스판넬 / 마띠에르 리터치 선택 / 매트없음 / 90.0cm X 71.4cm</p> -->
					</div>
				  </div>
			    </td>
				<td data-title="상품수량" class="td-numbig">2</td>
	            <td data-title="주문금액" class="td-numbig td-total">147,700원</td>
	            <!--<td class="td-numbig">0원</td>-->
	            <!--<td class="td-numbig">146,700원</td>-->
	            <td data-title="주문상태" class="td-state">입금확인중</td>
	          </tr>
            </tbody>
            </table>
	    </div>
		<a href="orderinquiry" class="btnset btn-type02">Read More</a>
		</div>
	
				<div class="mypage-wish">
					<div class="mypage-tit">
						<h3>찜리스트</h3>
					</div>
					<div class="grid-list">
	<script src="../home/js/jquery.fancylist.js"></script>
	
	<!-- 메인상품진열 20 시작 { -->
	<ul class="sct sct_20">
	  <li class="sct_li">
		<div class="li_wr">
		  <div class="sct_img_wrap">
		    <div class="sct_img" style="background-image:url(../home/data/item/1654133549/656R6re466Oo7JWE64uk66as.jpg)">
		      <span class="hide">아를의 랑그루아 다리</span>
		    </div>
		    <div class="sct_opt_wrap">
		      <div class="sct_btn list-10-btn">
			    <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654133549">
			      <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
			      <span>ADD TO CART</span>
			    </button>
			  </div>
			<div class="cart-layer"></div>
			  <div class="sct_op_btn">
			    <a href="../shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
			    <a href="" class="btnset btn-wishdel"><span class="hide">위시리스트삭제</span></a>
			  </div>
			</div>
		  </div>
		    <div class="sct_txt"><a href="../shop/painting_item" class="sct_a">아를의 랑그루아 다리</a></div>
		    <div class="sct_desc"><span>빈센트 반 고흐</span><p>20.0cm x 35.7</p></div>
		    <div class="sct_cost"><span class="price_cost"><strong>38,200</strong>원</span></div>
	      </div>
	  </li>
		
	  <li class="sct_li">
		<div class="li_wr">
		  <div class="sct_img_wrap">
			<div class="sct_img" style="background-image:url(../home/data/item/1654135291/67KE64W87J2Y7YWM65287Iqk.jpg)">
			  <span class="hide">베르농의 테라스</span>
			</div>
			<div class="sct_opt_wrap">
			  <div class="sct_btn list-10-btn">
		        <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654135291">
		  	      <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
				  <span>ADD TO CART</span>
			    </button>
			  </div>
			  <div class="cart-layer"></div>
			  <div class="sct_op_btn">
				<a href="../shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
				<a href=""><span class="hide">위시리스트삭제</span></a>
			  </div>
			</div>
		  </div>
			<div class="sct_txt"><a href="../shop/painting_item" class="sct_a">베르농의 테라스</a></div>
			<div class="sct_desc"><span>피에르 보나르</span><p>20.0cm x 35.7</p></div>
			<div class="sct_cost"><span class="price_cost"><strong>46,400</strong>원</span></div>
		</div>
	  </li>
		
	  <li class="sct_li">
		<div class="li_wr">
		  <div class="sct_img_wrap">
			<div class="sct_img" style="background-image:url(../home/data/item/1653879158/7YKk7Iqk.jpg)">
			  <span class="hide">키스</span>
			</div>
			<div class="sct_opt_wrap">
			  <div class="sct_btn list-10-btn">
				<button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1653879158">
				  <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
				  <span>ADD TO CART</span>
				</button>
			  </div>
			  <div class="cart-layer"></div>
			  <div class="sct_op_btn">
				<a href="../shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
				<a href="./wishupdate.php?w=d&amp;wi_id=51" class="btnset btn-wishdel"><span class="hide">위시리스트삭제</span></a>
			  </div>
			</div>
		  </div>
		  <div class="sct_txt"><a href="../shop/painting_item" class="sct_a">키스</a></div>
		  <div class="sct_desc"><span>구스타프 클림트</span><p>20.0cm x 35.7</p></div>
		  <div class="sct_cost"><span class="price_cost"><strong>36,500</strong>원</span></div>
		</div>
	  </li>
	
	</ul><!-- } 상품진열 20 끝 -->				</div>
					<a href="my_wishlist" class="btnset btn-type02">Read More</a>
				</div>
			</div>
		</div>
	</section>
  </main>
        
        <!-- header 부분 시작 -->
		<%@ include file ="../top/footer.jsp" %>
		<!-- header 부분 끝 -->

<div id="gotop">
    <a href="javascript:;"><span class="hide">맨위로가기</span></a>
</div>
</div>


<script src="https://bxgs.co.kr/js/sns.js"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
<link rel="stylesheet" href="home/theme/buzinga/css/animate.css">
<script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script><script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>

<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->


</body>
</html>
