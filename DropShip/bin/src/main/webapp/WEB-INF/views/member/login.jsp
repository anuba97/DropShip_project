<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/login.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../img/favicon.ico" />
<title>로그인 | DropShip 갤러리</title>
<link rel="stylesheet" href="../theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/mobile/skin/member/basic/style3816.css?ver=210618">
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

        <div class="all-search-wrap">
        <a href="javascript:;" class="btn-all-search-open"><span class="hide">검색창 열기</span></a>
        <div class="all-search">
	        <fieldset id="hd_sch">
	            <legend>쇼핑몰 전체검색</legend>
                <div class="sch-word-box">
                    <form name="frmsearch1" action="https://bxgs.co.kr/shop/search.php" onsubmit="return search_submit(this);">
                        <label for="sch_str" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                        <input type="text" name="q" value="" id="sch_str" required placeholder="Search..." autocomplete="off">
                        <button type="submit" id="sch_submit" value="검색"><span class="sound_only">검색</span></button>
                    </form>
                </div>
                <div class="sch-word-wrap">
                    <div class="sch-recent-word">
                        <h2>최근검색어</h2>
                        <ul>
                                                        <!-- <li class="sch-word-empty">최근검색어가 없습니다.</li>-->
                            <li>
                                <a href="#" class="recent-word">#클로드 모네</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                            <li>
                                <a href="#" class="recent-word">#빈센트 반 고흐</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                            <li>
                                <a href="#" class="recent-word">#정원의 여인들</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                        </ul>
                    </div>
                    <div class="sch-popular-word">
                        <h2>인기검색어</h2>
                        <ul>
                                                        <!-- <li class="sch-word-empty">인기검색어가 없습니다.</li>-->
                            <li><a href="#">1. 클로드 모네</a></li>
                            <li><a href="#">2. 정원의 여인들</a></li>
                            <li><a href="#">3. 빈센트 반 고흐</a></li>
                            <li><a href="#">4. 해바라기</a></li>
                            <li><a href="#">5. 폴 고갱</a></li>
                            <li><a href="#">6. 생 라자르 역</a></li>
                            <li><a href="#">7. 황색의 그리스도</a></li>
                            <li><a href="#">8. 파블로 피카소</a></li>
                            <li><a href="#">9. 아비뇽의 아가씨들</a></li>
                        </ul>
                    </div>
                </div>
                <a href="javascript:;" class="btn-all-search-close"><span class="hide">검색창 닫기</span></a>
	        </fieldset>
		</div>

        <script>
            function search_submit(f) {
                if (f.q.value.length < 2) {
                    alert("검색어는 두글자 이상 입력하십시오.");
                    f.q.select();
                    f.q.focus();
                    return false;
                }
                return true;
            }
        </script>
    </div>
</header>

        <main id="contents">
        
<section class="sub-tit-wrap" >
    <div class="maxinner">
                <h2 class="sub-tit">LOGIN</h2>
    </div>
</section>



<section class="login"> 
    <div class="maxinner">
        <div class="login-wrap">
            <div class="left-con">
                <div class="login-tab">
                    <ul>
                        <li class="on">
                            <a href="javascript:;">회원로그인</a>
                        </li>
                        <li >
                                                                                                <a href="javascript:;">비회원 주문조회</a>
                                                                                    </li>
                    </ul>
                </div>
                <div class="login-con-wrap">
                    <div class="login-con">
                                                    <form name="flogin" action="https://bxgs.co.kr/bbs/login_check.php" onsubmit="return flogin_submit(this);" method="post" id="flogin">
                                <input type="hidden" name="url" value="https%3A%2F%2Fbxgs.co.kr">
                                <div class="login-box">
                                    <label for="login_id" class="sound_only">아이디<strong class="sound_only"> 필수</strong></label>
                                    <input type="text" name="mb_id" id="login_id" placeholder="아이디" required class="inp-type01 required" maxLength="20">
                                    <label for="login_pw" class="sound_only">비밀번호<strong class="sound_only"> 필수</strong></label>
                                    <input type="password" name="mb_password" id="login_pw" placeholder="비밀번호" required class="inp-type01 required" maxLength="20">
                                    <div class="chk-box">
                                        <input type="checkbox" name="auto_login" id="login_auto_login" class="selec-chk">
                                        <label for="login_auto_login">아이디 저장</label>
                                    </div>
                                    <button type="submit" class="btnset btn-submit">LOGIN</button>
                                </div>
                                <!--
                                <div class="login-box social-login-box">
                                    <h3>SNS 계정으로 로그인</h3>
                                    
<div class="login-sns sns-wrap-32 sns-wrap-over" id="sns_login">
    <div class="sns-wrap">
                <a href="https://bxgs.co.kr/plugin/social/popup.php?provider=naver&amp;url=%2Fbbs%2Flogin.php" class="sns-icon social_link sns-icon-not sns-naver" title="네이버">
            <span class="ico"></span>
            <span class="txt hide">네이버<i> 로그인</i></span>
        </a>
                        <a href="https://bxgs.co.kr/plugin/social/popup.php?provider=kakao&amp;url=%2Fbbs%2Flogin.php" class="sns-icon social_link sns-icon-not sns-kakao" title="카카오">
            <span class="ico"></span>
            <span class="txt hide">카카오<i> 로그인</i></span>
        </a>
                                        
                <script>
            jQuery(function($){
                $(".sns-wrap").on("click", "a.social_link", function(e){
                    e.preventDefault();

                    var pop_url = $(this).attr("href");
                    var newWin = window.open(
                        pop_url, 
                        "social_sing_on", 
                        "location=0,status=0,scrollbars=1,width=600,height=500"
                    );

                    if(!newWin || newWin.closed || typeof newWin.closed=='undefined')
                         alert('브라우저에서 팝업이 차단되어 있습니다. 팝업 활성화 후 다시 시도해 주세요.');

                    return false;
                });
            });
        </script>
        
    </div>
</div>                                </div>
                                -->
                            </form>
                                            </div>
                    <div class="login-con">
                                                                                    <div id="mb_login_od_wr">
                                    <h3 class="hide">비회원 주문조회</h3>
                                    <div id="mb_login_od">
                                        <form name="forderinquiry" method="post" action="https://bxgs.co.kr/shop/orderinquiry.php" autocomplete="off">
                                            <label for="od_id" class="od_id sound_only">주문번호<strong class="sound_only"> 필수</strong></label>
                                            <input type="text" name="od_id" value="" id="od_id" placeholder="주문번호" required class="inp-type01 required" size="20">
                                            <label for="id_pwd" class="od_pwd sound_only">비밀번호<strong class="sound_only"> 필수</strong></label>
                                            <input type="password" name="od_pwd" size="20" id="od_pwd" placeholder="비밀번호" required class="inp-type01 required">
                                            <p class="sm-txt-information">주문번호 분실 시 고객센터(02-123-4567)로 별도 문의 해주세요.</p>
                                            <button type="submit" class="btnset btn-submit">주문조회하기</button>
                                        </form>
                                    </div>
                                </div>
                                                                        </div>
                </div>
            </div>
            <div class="right-con">
                <div class="login-etc">
                    <h3>DropShip쇼핑몰 신규 회원가입</h3>
                    <p>DropShip쇼핑몰 회원가입 후 다양한 혜택과 소식을 만나보세요.</p>
                    <a href="register_intro.html" class="btnset btn-type03 btn-line-brown">회원가입</a>
                </div>
                <div class="login-etc">
                    <h3>아이디/비밀번호 찾기</h3>
                    <p>간단한 정보를 입력 후 정보를 찾을 수 있습니다.</p>
                    <a href="javascript:;" class="btnset btn-type03 btn-pop-open" data-popnum="01">아이디/비밀번호 찾기</a>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- 회원정보 찾기 팝업창 -->
<div class="pop-wrap pop01" id="pop-password-lost">
    <div class="pop-inner">
        <div class="pop-tit-wrap">
            <h3 class="pop-tit">회원정보 찾기</h3>
        </div>
        <div class="pop-con-wrap">
            <form name="fpasswordlost" action="https://bxgs.co.kr/bbs/password_lost2.php" onsubmit="return fpasswordlost_submit(this);" method="post" autocomplete="off">
                <div class="info-fs-mail">
                    <h4>이메일 기입</h4>
                    <div class="info-fs-box">
                        <input type="email" id="mb_email" name="mb_email" placeholder="가입시 등록한 이메일를 입력하세요." required class="inp-type01 email">
                        
<script>var g5_captcha_url  = "https://bxgs.co.kr:443/plugin/kcaptcha/";</script>
<script src="../plugin/kcaptcha/kcaptcha.js"></script>
<fieldset id="captcha" class="captcha">
<legend><label for="captcha_key">자동등록방지</label></legend>
<img src="../plugin/kcaptcha/img/dot.gif" alt="" id="captcha_img"><input type="text" name="captcha_key" id="captcha_key" required class="captcha_box required" size="6" maxlength="6">
<button type="button" id="captcha_mp3"><span></span>숫자음성듣기</button>
<button type="button" id="captcha_reload"><span></span>새로고침</button>
<span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
</fieldset>                        <p class="sm-txt-information">이메일 아이디 분실 시 고객센터( 02-123-4567)로 별도 문의 해주세요.</p>
                    </div>
                </div>
                <div class="btn-confirm-wrap">
                    <a href="javascript:;" class="btnset btn-type04 btn-pop-close2">취소</a>
                    <button type="submit" class="btnset btn-type04 btn-line-brown">정보찾기</button>
                </div>
            </form>
        </div>
        <button type="button" class="btnset btn-pop-close"><span class="hide">팝업창닫기</span></button>
    </div>
</div>


<script>
$(function(){
    $("#login_auto_login").click(function(){
        if (this.checked) {
            this.checked = confirm("자동로그인을 사용하시면 다음부터 회원아이디와 비밀번호를 입력하실 필요가 없습니다.\n\n공공장소에서는 개인정보가 유출될 수 있으니 사용을 자제하여 주십시오.\n\n자동로그인을 사용하시겠습니까?");
        }
    });

    /*===== TAB MENU CLICK FUNCTION ===== */
    var logTabNum = $('.login-tab .on').index();
    if(logTabNum > -1){
        $('.login-con-wrap').find('.login-con').eq(logTabNum).show();
    }

    $('.login-tab li a').on('click',function(e){
        e.preventDefault();
        logTabNum = $(this).parent().index();
        $('.login-tab li').removeClass('on');
        $(this).parent().addClass('on');
        $('.login-con-wrap').find('.login-con').hide();
        $('.login-con-wrap').find('.login-con').eq(logTabNum).show();
    });
});


function flogin_submit(f)
{
    if( $( document.body ).triggerHandler( 'login_sumit', [f, 'flogin'] ) !== false ){
        return true;
    }
    return false;
}


/*===== PASSWORD LOST FUNCTION ===== */
function fpasswordlost_submit(f)
{
    if (!chk_captcha()) return false;
    return true;
}
</script>
    </main>
        <footer id="footer">
    <div class="maxinner">
        <h2 class="hide">DropShip 갤러리</h2>
        <div class="ft-info-wrap">
            <ul class="ft-policy">
                <li><a href="../sub/privacy.html">개인정보처리방침</a></li>
                <li><a href="../sub/term.html">이용약관</a></li>
                <li><a href="../sub/about.html">회사소개</a></li>
            </ul>
            <address class="ft-address">
                <p>
                    <span>대표자 : 권순상</span>
                    <span>사업자 등록번호 : 137-81-30071</span>
                </p>
                <p>
                    <span>주소 : 경기도 고양시 일산동구 산황로 178-15</span>
                    <span>EMAIL : <a href="mailto:gDropShipang@gmail.com">gDropShipang@gmail.com</a></span>
                    <span>TEL : 031-954-9541</span>
                    <span>FAX : 031-977-9540</span>
                </p>
            </address>
            <p class="copyright">Copyright © 2022 DropShipang Gallery. All rights reserved.</p>
        </div>
        <!--<div class="ft-family-wrap">
            <button type="button" class="btnset btn-family-site">Family Site</button>
            <ul class="family-list">
                <li><a href="">패밀리사이트1</a></li>
                <li><a href="">패밀리사이트2</a></li>
            </ul>
        </div>-->
    </div>
</footer>

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

<!-- Mirrored from bxgs.co.kr/bbs/login.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:39 GMT -->
</html>
