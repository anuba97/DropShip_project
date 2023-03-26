<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/board.php?bo_table=event&sca=%EC%A7%84%ED%96%89%EC%A4%91+%EC%9D%B4%EB%B2%A4%ED%8A%B8 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:16 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../img/favicon.ico" />
<title>진행중 event</title>
<link rel="stylesheet" href="../theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/mobile/skin/board/event/style3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/sub3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "../index.html";
var g5_bbs_url   = "https://bxgs.co.kr:443/bbs/";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "event";
var g5_sca       = "진행중 이벤트";
var g5_editor    = "smarteditor2";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr:443/theme/buzinga/shop/";
var g5_shop_url = "https://bxgs.co.kr:443/shop/";


</script>
<link rel="stylesheet" href="../../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script src="../js/jquery-1.12.4.min3816.js?ver=210618"></script>
<script src="../js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
<script src="../js/common3816.js?ver=210618"></script>
<script src="../js/wrest3816.js?ver=210618"></script>
<script src="../js/placeholders.min3816.js?ver=210618"></script>
<script src="../theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
<script src="../theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
<script src="../theme/buzinga/js/aos3816.js?ver=210618"></script>
<script src="../theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
<script src="../theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
<script src="../js/modernizr.custom.701113816.js?ver=210618"></script>
<script src="../theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
<script src="../theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
</head>
<body>


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
        
<section class="sub-tit-wrap" data-aos="fade-up">
    <div class="maxinner">
                    <span class="sub-txt">다양한 이벤트를 확인해보세요.</span>
                <h2 class="sub-tit">EVENT</h2>
    </div>
</section>

<script src="../js/jquery.fancylist.js"></script>


<section id="board-list" class="board event">
    <div class="maxinner">

		<form name="fboardlist"  id="fboardlist" action="https://bxgs.co.kr/bbs/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
			<input type="hidden" name="bo_table" value="event">
			<input type="hidden" name="sfl" value="">
			<input type="hidden" name="stx" value="">
			<input type="hidden" name="spt" value="-4">
			<input type="hidden" name="sst" value="wr_datetime desc">
			<input type="hidden" name="sod" value="">
			<input type="hidden" name="page" value="1">
			<input type="hidden" name="sw" value="">

			<nav class="grid-event-menu" id="bo_cate">
              <h2 class="hide">카테고리</h2>
              <ul id="bo_cate_ul">
                <li><a href="all_event">전체보기</a></li>
                <li><a href="pro_event" id="bo_cate_on">진행중 이벤트</a></li>
                <li><a href="final_event">종료된 이벤트</a></li>                
              </ul>
            </nav>
			
			<!-- 전체보기 이벤트 리스트 4개 -->
            <div class="grid-event-list">
              <ul id="gall_ul">
               <li>
                 <a href="event_view">
                   <div class="event-thumb">
				     <div class="imgbox" style="background-image:url(../data/file/event/3696002221_dbEs51LA_aa67d3242cefd5a5ea0a29872d7bc92d25b9fae2.jpg)"><span class="hide">썸네일</span></div>
                   </div>
                   <div class="event-info"><h3>회원가입 시 쿠폰팩발급</h3><p>지금 가입하신 신규 회원님께 쿠폰팩을 증정합니다.</p>
                     <span class="date">2022-05-10 ~ 2022-05-10</span>
                   </div>
				 </a>
			   </li>
			   
			   <li>
			     <a href="event_view">
				   <div class="event-thumb">
				     <div class="imgbox" style="background-image:url(../data/file/event/3696002221_pmGWMw1Y_5a9438f5a94470d257a3db75e33cdadbdad4c0b6.png)"><span class="hide">썸네일</span></div>
				   </div>
				   <div class="event-info"><h3>트리플 봄 특가</h3><p>지금 가입하신 신규 회원님께 쿠폰팩을 증정합니다.</p>
				     <span class="date">2022-05-10 ~ 2022-05-30</span>
				   </div>
				 </a>
			   </li>
			   
			   <li>
			     <a href="event_view">
				   <div class="event-thumb">
				     <div class="imgbox" style="background-image:url(../data/file/event/3696002221_X6LQ7rlC_a507306a71ec2c04b9d26a53e76df944a6e5bfa2.png)"><span class="hide">썸네일</span></div>
				   </div>
				   <div class="event-info"><h3>11월 블랙프라이데이 이벤트</h3><p>블프 기간 한정! 전품목 최대 67% 할인!</p>
				     <span class="date">2022-05-10 ~ 2022-06-01</span>
				   </div>
				 </a>
			   </li>
			 </ul>
           </div>
		 </form>

		
		<!-- 페이지 -->
	</div>
</section>

<!-- 게시판 목록 끝 -->
    </main>
        
        <!-- header 부분 시작 -->
		<%@ include file ="../top/footer.jsp" %>
		<!-- header 부분 끝 -->

<div id="gotop">
    <a href="javascript:;"><span class="hide">맨위로가기</span></a>
</div>
</div>


<script src="../js/sns.js"></script>
<script src="../theme/buzinga/js/css3-animate-it.js"></script>
<link rel="stylesheet" href="../theme/buzinga/css/animate.css">
<script src="../theme/buzinga/js/base.js"></script><script src="../theme/buzinga/js/sub.js"></script>

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

<!-- Mirrored from bxgs.co.kr/bbs/board.php?bo_table=event&sca=%EC%A7%84%ED%96%89%EC%A4%91+%EC%9D%B4%EB%B2%A4%ED%8A%B8 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:16 GMT -->
</html>

<!-- 사용스킨 : theme/event -->
