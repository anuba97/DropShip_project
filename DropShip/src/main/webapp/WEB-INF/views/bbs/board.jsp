<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/qalist.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:37 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../img/favicon.ico" />
<title>자유게시판</title>
<link rel="stylesheet" href="../theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
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
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
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
                    <span class="sub-txt">DropShip 쇼핑몰에 궁금한 내용을 남겨주세요.</span>
                <h2 class="sub-tit">자유게시판</h2>
    </div>
</section>


 
<!-- 게시판 목록 시작 -->
<section id="board-list" class="board">
    <div class="maxinner"> 

        <div class="grid-list-opt">
            <div class="grid-opt-left">총 <strong class="f-color">2</strong>건</div>
        </div> 
        
                <div class="grid-board-list">
            <form name="fqalist" id="fqalist" action="https://bxgs.co.kr/bbs/qadelete.php" onsubmit="return fqalist_submit(this);" method="post">
                <input type="hidden" name="stx" value="">
                <input type="hidden" name="sca" value="">
                <input type="hidden" name="page" value="1">
                <input type="hidden" name="token" value="">

                <div class="tbstyle-board">
                    <table>
                        <caption>게시판 리스트</caption>
                        <colgroup>
                                                        <col class="col2" width="120px">
                            <col class="col3" width="*">
                            <col class="col4 td-mb-hide" width="140px">
                            <col class="col5 td-mb-hide" width="160px">
                            <col class="col6" width="160px">
                        </colgroup>
                        <tbody>
                                                        <tr>
                                                                <td class="td-num">
                                    2                                </td>
                                <td class="td-subject">
                                    <a href="qaview031d.html?qa_id=21">
                                        사이트 오픈 한건가요                                        <img src="../img/ico/ico-secret-brown.png" alt="비밀글">
                                    </a>
                                </td>
                                <td class="td-name td-mb-hide">
                                    오*보                                </td>
                                <td class="td-date td-mb-hide">
                                    2022.09.05                                </td>
                                <td class="td-state">
                                    <span class="ico-state answer-rdy">
                                        답변대기                                    </span>
                                </td>
                            </tr>
                                                        <tr>
                                                                <td class="td-num">
                                    1                                </td>
                                <td class="td-subject">
                                    <a href="qaview09d1.html?qa_id=18">
                                        액자문의                                        <img src="../img/ico/ico-secret-brown.png" alt="비밀글">
                                    </a>
                                </td>
                                <td class="td-name td-mb-hide">
                                    테*트                                </td>
                                <td class="td-date td-mb-hide">
                                    2022.05.12                                </td>
                                <td class="td-state">
                                    <span class="ico-state answer-rdy">
                                        답변대기                                    </span>
                                </td>
                            </tr>
                             
                                                    </tbody>
                    </table>
                </div>
                <!-- 페이지 -->
	            
                                    <div class="board-btnwrap">
                        <ul>
                                                                                        <li>
                                    <a href="board_write" class="btnset btn-type01">
                                        <svg height="40" width="130"><rect height="40" width="130"></rect></svg>
                                        <span>글쓰기</span>
                                    </a>
                                </li>
                                                    </ul>
                    </div>
                            </form>
        </div>
    </div>
</section>




    </main>
        
        <!-- footer 부분 시작 -->
        <%@ include file = "../top/footer.jsp" %>
        <!-- footer 부분 끝 -->

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

<!-- Mirrored from bxgs.co.kr/bbs/qalist.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:38 GMT -->
</html>
