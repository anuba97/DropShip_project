<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/artist_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:12 GMT -->
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
                    <span class="sub-txt">DropShip 갤러리에서 다양한 작가의 작품을 만나보세요.</span>
                <h2 class="sub-tit">ARTIST</h2>
    </div>
</section>

<section class="artist-list">
	<div class="combine-list">
		<!-----  SEARCH LIST ----->
		<div class="combine-sort-wrap">
			<h3>Artist List</h3>
			<ul class="combine-sort-list">
				<li class="all  on "><a href="artist_list.html"><span>All</span></a></li>
				<li class="">
					<a href="#"><span>ㄱ ~ ㄹ</span></a>
					<ul class="sort-depth">
						<li class=""><a href="artist_list4e11.html?ca_id=101010"><span>ㄱ, ㄲ</span></a></li>
						<li class=""><a href="artist_list6974.html?ca_id=101020"><span>ㄴ</span></a></li>
						<li class=""><a href="artist_listb3c8.html?ca_id=101030"><span>ㄷ, ㄸ</span></a></li>
						<li class=""><a href="artist_list9f23.html?ca_id=101040"><span>ㄹ</span></a></li>
					</ul>
				</li>
				<li class="">
					<a href="#"><span>ㅁ ~ ㅇ</span></a>
					<ul class="sort-depth">
						<li class=""><a href="artist_listc7f5.html?ca_id=102010"><span>ㅁ</span></a></li>
						<li class=""><a href="artist_list646f.html?ca_id=102020"><span>ㅂ, ㅃ</span></a></li>
						<li class=""><a href="artist_list2f4c.html?ca_id=102030"><span>ㅅ, ㅆ</span></a></li>
						<li class=""><a href="artist_list1ac9.html?ca_id=102040"><span>ㅇ</span></a></li>
					</ul>
				</li>
				<li class="">
					<a href="#"><span>ㅈ ~ ㅌ</span></a>
					<ul class="sort-depth">
						<li class=""><a href="artist_liste19f.html?ca_id=103010"><span>ㅈ, ㅉ</span></a></li>
						<li class=""><a href="artist_list8259.html?ca_id=103020"><span>ㅊ</span></a></li>
						<li class=""><a href="artist_listdef3.html?ca_id=103030"><span>ㅋ</span></a></li>
						<li class=""><a href="artist_listc4d5.html?ca_id=103040"><span>ㅌ</span></a></li>
					</ul>
				</li>
				<li class="">
					<a href="#"><span>ㅍ ~ ㅎ</span></a>
					<ul class="sort-depth">
						<li class=""><a href="artist_lista4a8.html?ca_id=104010"><span>ㅍ</span></a></li>
						<li class=""><a href="artist_list5abc.html?ca_id=104020"><span>ㅎ</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-----  ARTIST LIST ----->
		<div id="item-list-wrap">
			<div class="grid-list-opt">
				<div class="grid-opt-left">총 <strong class="f-color">17</strong>명의 작가가 있습니다.</div>
				<div class="grid-opt-right">
				<!--
					<div class="grid-sort-list">
						<a href="javascript:;" class="grid-sort-current btn-sort-open">12개씩 보기</a>
						<ul>
							<li><a href="">9개씩 보기</a></li>
							<li><a href="">12개씩 보기</a></li>
						</ul>
					</div>
				-->
				</div>
			</div>    
			<div class="grid-list">
				<div class="sct_wrap">
					<!-- 리스트 없을때 -->
					<!--<div class="empty-content"><img src="/img/ico/ico-information-big.png" alt="알림"><p>등록된 작가가 없습니다.</p></div>-->
					<ul class="sct sct_20">
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist69232_0.jpg');">
										<span class="hide">바실리 칸딘스키</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_viewcb45.html?aidx=17" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_viewcb45.html?aidx=17" class="sct_a">바실리 칸딘스키</a></div>
								<div class="sct_desc">
									<span>Wassily Kandinsky</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist69053_0.jpg');">
										<span class="hide">마르크 샤갈</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_view0be8.html?aidx=16" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_view0be8.html?aidx=16" class="sct_a">마르크 샤갈</a></div>
								<div class="sct_desc">
									<span>Moishe Shagal</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist68794_0.jpg');">
										<span class="hide">펠릭스 발로통</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_viewe5ca.html?aidx=15" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_viewe5ca.html?aidx=15" class="sct_a">펠릭스 발로통</a></div>
								<div class="sct_desc">
									<span>Fellix Vallotton</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist68538_0.jpg');">
										<span class="hide">호안 미로</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_view97d9.html?aidx=14" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_view97d9.html?aidx=14" class="sct_a">호안 미로</a></div>
								<div class="sct_desc">
									<span>Joan Miró</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist68323_0.jpg');">
										<span class="hide">앙리 마티스</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_view7c97.html?aidx=13" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_view7c97.html?aidx=13" class="sct_a">앙리 마티스</a></div>
								<div class="sct_desc">
									<span>Henri Matisse</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist68070_0.jpg');">
										<span class="hide">앙리 루소</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_view62a5.html?aidx=12" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_view62a5.html?aidx=12" class="sct_a">앙리 루소</a></div>
								<div class="sct_desc">
									<span>Henri Rousseau</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist67772_0.jpg');">
										<span class="hide">페르낭 레제</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_view9616.html?aidx=11" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_view9616.html?aidx=11" class="sct_a">페르낭 레제</a></div>
								<div class="sct_desc">
									<span>Fernand Léger</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist39691_0.jpg');">
										<span class="hide">장프랑수아 밀레</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_view3736.html?aidx=10" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_view3736.html?aidx=10" class="sct_a">장프랑수아 밀레</a></div>
								<div class="sct_desc">
									<span>Jean-François Millet</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist39470_0.jpg');">
										<span class="hide">알폰스 무하</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_viewca51.html?aidx=9" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_viewca51.html?aidx=9" class="sct_a">알폰스 무하</a></div>
								<div class="sct_desc">
									<span>Alphonse Mucha</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist39185_0.jpg');">
										<span class="hide">에드가 드가</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_viewed02.html?aidx=8" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_viewed02.html?aidx=8" class="sct_a">에드가 드가</a></div>
								<div class="sct_desc">
									<span>Edgar Degas</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist38938_0.jpg');">
										<span class="hide">아실 고르키</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_viewc5f1.html?aidx=7" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_viewc5f1.html?aidx=7" class="sct_a">아실 고르키</a></div>
								<div class="sct_desc">
									<span>Arshile Gorky</span>
								</div>
							</div>
						</li>
							<li class="sct_li">
							<div class="li_wr">
								<div class="sct_img_wrap">
									<div class="sct_img" style="background-image:url('../data/artist/artist38476_0.jpg');">
										<span class="hide">프란체스코 구아르디</span>
									</div>
									<div class="sct_opt_wrap">
										<div class="sct_btn list-10-btn">
											<a href="artist_viewac50.html?aidx=6" class="btnset btn-type01">
												<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
												<span>Read More</span>
											</a>
										</div>
									</div>
								</div>
								<div class="sct_txt"><a href="artist_viewac50.html?aidx=6" class="sct_a">프란체스코 구아르디</a></div>
								<div class="sct_desc">
									<span>Francesco Guardi</span>
								</div>
							</div>
						</li>
						</ul>
					<!-- 페이징 -->
<nav class="pg_wrap"><span class="pg"><span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
<a href="artist_list1a36.html?&amp;sort=&amp;sortodr=&amp;ca_id=&amp;page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
<a href="artist_list1a36.html?&amp;sort=&amp;sortodr=&amp;ca_id=&amp;page=2" class="pg_page pg_end">맨끝</a>
</span></nav>				</div>
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

<!-- Mirrored from bxgs.co.kr/shop/artist_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:21 GMT -->
</html>
