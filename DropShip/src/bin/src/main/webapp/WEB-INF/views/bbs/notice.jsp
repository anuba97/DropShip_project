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
<title>공지사항 1 페이지 | DropShip 갤러리</title>
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/mobile_shop.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/js/font-awesome/css/font-awesome.min.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/swiper.min.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/aos.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/nice-select.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/js/owl.carousel.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/mobile/skin/board/basic/style.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/common.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/sub.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "notice";
var g5_sca       = "";
var g5_editor    = "smarteditor2";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
var g5_shop_url = "https://bxgs.co.kr/shop";


</script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script src="https://bxgs.co.kr/js/jquery-1.12.4.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/js/jquery-migrate-1.4.1.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/js/common.js?ver=210618"></script>
<script src="https://bxgs.co.kr/js/wrest.js?ver=210618"></script>
<script src="https://bxgs.co.kr/js/placeholders.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/swiper.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/gsap-3.6.0.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/aos.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/jquery.nice-select.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/jquery.sidr.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/js/modernizr.custom.70111.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/owl.carousel.min.js?ver=210618"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/unslider.min.js?ver=210618"></script>
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
                                <a href="" class="recent-word">#클로드 모네</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                            <li>
                                <a href="" class="recent-word">#빈센트 반 고흐</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                            <li>
                                <a href="" class="recent-word">#정원의 여인들</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                        </ul>
                    </div>
                    <div class="sch-popular-word">
                        <h2>인기검색어</h2>
                        <ul>
                                                        <!-- <li class="sch-word-empty">인기검색어가 없습니다.</li>-->
                            <li><a href="">1. 클로드 모네</a></li>
                            <li><a href="">2. 정원의 여인들</a></li>
                            <li><a href="">3. 빈센트 반 고흐</a></li>
                            <li><a href="">4. 해바라기</a></li>
                            <li><a href="">5. 폴 고갱</a></li>
                            <li><a href="">6. 생 라자르 역</a></li>
                            <li><a href="">7. 황색의 그리스도</a></li>
                            <li><a href="">8. 파블로 피카소</a></li>
                            <li><a href="">9. 아비뇽의 아가씨들</a></li>
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
                    <span class="sub-txt">DropShip이 전하는 소식을 살펴보세요.</span>
                <h2 class="sub-tit">NOTICE</h2>
    </div>
</section>



<!-- 게시판 목록 시작 -->
<section id="board-list" class="board">
    <div class="maxinner">

        <div class="grid-list-opt">
            <div class="grid-opt-left">총 <strong class="f-color">1</strong>건</div>
            <div class="grid-opt-right">
                <div class="grid-board-search">
                    <form name="fsearch" method="get">
                        <input type="hidden" name="bo_table" value="notice">
                        <input type="hidden" name="sca" value="">
                        <input type="hidden" name="sop" value="and">
                        <label for="sfl" class="sound_only">검색대상</label>
                        <div class="sch-box">
                            <select name="sfl" id="sfl" class="deco-select">
                                <option value="wr_subject">제목</option>
                                <option value="wr_content">내용</option>
                                <option value="wr_subject||wr_content">제목+내용</option>
                            </select>
                        </div>
                        <div class="sch-box">
                            <input name="stx" value="" placeholder="검색어를 입력해주세요." required id="stx" class="inp-type01" size="15" maxlength="20">
                            <button type="submit" value="검색" class="sch-btn"><span class="sound_only">검색</span></button>
                        </div>
                    </form>
                </div>
            </div>
        </div> 
        
                <div class="grid-board-list">
            <form name="fboardlist" id="fboardlist" action="https://bxgs.co.kr/bbs/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
                <input type="hidden" name="bo_table" value="notice">
                <input type="hidden" name="sfl" value="">
                <input type="hidden" name="stx" value="">
                <input type="hidden" name="spt" value="">
                <input type="hidden" name="sst" value="wr_num, wr_reply">
                <input type="hidden" name="sod" value="">
                <input type="hidden" name="page" value="1">
                <input type="hidden" name="sw" value="">

                <div class="tbstyle-board">
                    <table>
                        <caption>게시판 리스트</caption>
                        <colgroup>
                                                        <col class="col2" width="130px">
                            <col class="col3" width="*">
                            <col class="col4" width="240px">
                        </colgroup>
                        <tbody>
                                                        <tr>
                                                                <td class="td-num">
                                                                            <span class="notic">NOTICE</span>
                                                                    </td>
                                <td class="td-subject">
                                    <a href="notice_write">
                                        DropShip 갤러리 오픈하였습니다.                                                                            </a>
                                </td>
                                <td class="td-date">
                                    2022.05.12                                </td>
                            </tr>
                             
                                                    </tbody>
                    </table>
                </div>
                <!-- 페이지 -->
	            
                            </form>
        </div>
    </div>
</section>




<!-- 게시판 목록 끝 -->
    </main>
        <footer id="footer">
    <div class="maxinner">
        <h2 class="hide">DropShip 갤러리</h2>
        <div class="ft-info-wrap">
            <ul class="ft-policy">
                <li><a href="/sub/privacy.php">개인정보처리방침</a></li>
                <li><a href="/sub/term.php">이용약관</a></li>
                <li><a href="/sub/about.php">회사소개</a></li>
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


<script src="https://bxgs.co.kr/js/sns.js"></script>
<script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/animate.css">
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
