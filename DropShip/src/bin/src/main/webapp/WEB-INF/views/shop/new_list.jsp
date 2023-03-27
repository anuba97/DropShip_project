<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/new_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:06 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../img/favicon.ico" />
<title>DropShip 갤러리</title>
<link rel="stylesheet" href="../theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../theme/buzinga/js/owl.carousel3816.css?ver=210618">
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
<script src="../js/shop.list.action3816.js?ver=210618"></script>
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
        
<section class="sub-tit-wrap" data-aos="fade-up">
    <div class="maxinner">
                    <span class="sub-txt">DropShip과 함께하는 새로운 작품을 소개합니다.</span>
                <h2 class="sub-tit">NEW ART</h2>
    </div>
</section>



<section class="new-list">

    <!-----  NEW ITEM LIST ----->
    <div id="item-list-wrap">
        <div class="maxinner">
            <div class="sub-con-tit-wrap">
                <h3 class="sub-con-tit" data-aos="fade-right" data-aos-delay="100">New Art</h3>
            </div>
            <div class="grid-list-opt">
                <div class="grid-opt-left">총 <strong class="f-color">5</strong>개의 상품이 있습니다.</div>
                <div class="grid-opt-right">
                    <div class="grid-sort-list">
                        <a href="javascript:;" class="grid-sort-current btn-sort-open">
                            인기순                        </a>
                        <ul>
                            <li><a href="new_listb11a.html?&amp;sort=it_sum_qty&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">인기순</a></li>
                            <li><a href="new_list1775.html?&amp;sort=it_use_cnt&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">후기순</a></li>
                            <li><a href="new_list0dd6.html?&amp;sort=it_use_avg&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">평점순</a></li>
                            <li><a href="new_list4a91.html?&amp;sort=it_update_time&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">등록순</a></li>
                            <li><a href="new_listb37f.html?&amp;sort=it_price&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">높은가격순</a></li>
                            <li><a href="new_list28e0.html?&amp;sort=it_price&amp;sortodr=asc&amp;re_items=&amp;page=1#item-list-wrap">낮은가격순</a></li>
                        </ul>
                    </div>
                    <div class="grid-sort-list">
                        <a href="javascript:;" class="grid-sort-current btn-sort-open">
                            9개씩 보기 
                        </a>
                        <ul>
                            <li><a href="new_list97e6.html?&amp;re_items=9&amp;sort=&amp;sortodr=&amp;page=1#item-list-wrap">9개씩 보기</a></li>
                            <li><a href="new_list556e.html?&amp;re_items=12&amp;sort=&amp;sortodr=&amp;page=1#item-list-wrap">12개씩 보기</a></li>
                        </ul>
                    </div>
                </div>
            </div> 
            <div class="grid-list">
                <div class="sct_wrap">
                                            
<script src="../js/jquery.fancylist.js"></script>


<!-- 메인상품진열 20 시작 { -->
<ul class="sct sct_20">
<li class="sct_li">
<div class="li_wr">
<div class="sct_img_wrap">
<div class="sct_img" style="background-image:url(../data/item/1654135291/67KE64W87J2Y7YWM65287Iqk.jpg)"><span class="hide">베르농의 테라스</span></div>
<div class="sct_opt_wrap"><div class="sct_btn list-10-btn">
<button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654135291">
<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
<span>ADD TO CART</span>
</button>
</div>
<div class="cart-layer"></div>
<div class="sct_op_btn">
<a href="itemdf1e.html?it_id=1654135291" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
<button type="button" class="btnset btn-like btn_wish" data-it_id="1654135291"><span class="hide">찜하기</span></button>
</div>
</div></div><div class="sct_txt"><a href="itemdf1e.html?it_id=1654135291" class="sct_a">베르농의 테라스</a></div><div class="sct_desc"><span>피에르 보나르</span><p>20.0cm x 35.7cm</p></div><div class="sct_cost"><span class="price_cost"><strong>46,400</strong>원</span>
</div></div></li><li class="sct_li">
<div class="li_wr">
<div class="sct_img_wrap">
<div class="sct_img" style="background-image:url(../data/item/1654134107/67OE6rO87IKs7J207ZSE65s7Iqk64KY66y06rCA7J6I64qU6ri4.jpg)"><span class="hide">밤의 프로방스 시골길</span></div>
<div class="sct_opt_wrap"><div class="sct_btn list-10-btn">
<button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654134107">
<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
<span>ADD TO CART</span>
</button>
</div>
<div class="cart-layer"></div>
<div class="sct_op_btn">
<a href="item3498.html?it_id=1654134107" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
<button type="button" class="btnset btn-like btn_wish" data-it_id="1654134107"><span class="hide">찜하기</span></button>
</div>
</div></div><div class="sct_txt"><a href="item3498.html?it_id=1654134107" class="sct_a">밤의 프로방스 시골길</a></div><div class="sct_desc"><span>빈센트 반 고흐</span><p>20.0cm x 35.7cm</p></div><div class="sct_cost"><span class="price_cost"><strong>38,200</strong>원</span>
</div></div></li><li class="sct_li">
<div class="li_wr">
<div class="sct_img_wrap">
<div class="sct_img" style="background-image:url(../data/item/1654129940/shutterstock_423234622.jpg)"><span class="hide">양산을 든 여인 - 카미유와 장</span></div>
<div class="sct_opt_wrap"><div class="sct_btn list-10-btn">
<button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654129940">
<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
<span>ADD TO CART</span>
</button>
</div>
<div class="cart-layer"></div>
<div class="sct_op_btn">
<a href="itemc647.html?it_id=1654129940" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
<button type="button" class="btnset btn-like btn_wish" data-it_id="1654129940"><span class="hide">찜하기</span></button>
</div>
</div></div><div class="sct_txt"><a href="itemc647.html?it_id=1654129940" class="sct_a">양산을 든 여인 - 카미유와 장</a></div><div class="sct_desc"><span>클로드 모네</span><p>20.0cm x 35.7cm</p></div><div class="sct_cost"><span class="price_cost"><strong>38,200</strong>원</span>
</div></div></li><li class="sct_li">
<div class="li_wr">
<div class="sct_img_wrap">
<div class="sct_img" style="background-image:url(../data/item/1654129449/7IS464qQ6rCV7J2Y67SE.png)"><span class="hide">세느강의 봄</span></div>
<div class="sct_opt_wrap"><div class="sct_btn list-10-btn">
<button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654129449">
<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
<span>ADD TO CART</span>
</button>
</div>
<div class="cart-layer"></div>
<div class="sct_op_btn">
<a href="item514d.html?it_id=1654129449" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
<button type="button" class="btnset btn-like btn_wish" data-it_id="1654129449"><span class="hide">찜하기</span></button>
</div>
</div></div><div class="sct_txt"><a href="item514d.html?it_id=1654129449" class="sct_a">세느강의 봄</a></div><div class="sct_desc"><span>클로드 모네</span><p>20.0cm x 35.7cm</p></div><div class="sct_cost"><span class="price_cost"><strong>36,500</strong>원</span>
</div></div></li><li class="sct_li">
<div class="li_wr">
<div class="sct_img_wrap">
<div class="sct_img" style="background-image:url(../data/item/1652406619/7Jes7J24.png)"><span class="hide">헤르미네 갈리아의 초상</span></div>
<div class="sct_opt_wrap"><div class="sct_btn list-10-btn">
<button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1652406619">
<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
<span>ADD TO CART</span>
</button>
</div>
<div class="cart-layer"></div>
<div class="sct_op_btn">
<a href="item6dbf.html?it_id=1652406619" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
<button type="button" class="btnset btn-like btn_wish" data-it_id="1652406619"><span class="hide">찜하기</span></button>
</div>
</div></div><div class="sct_txt"><a href="item6dbf.html?it_id=1652406619" class="sct_a">헤르미네 갈리아의 초상</a></div><div class="sct_desc"><span>구스타프 클림트</span><p>20.0cm x 35.7cm</p></div><div class="sct_cost"><span class="price_cost"><strong>36,500</strong>원</span>
</div></div></li></ul><!-- } 상품진열 20 끝 -->                                    </div>
            </div>
        </div>
    </div>
</section>

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

<!-- Mirrored from bxgs.co.kr/shop/new_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:08 GMT -->
</html>
