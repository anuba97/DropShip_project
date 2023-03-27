<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="/img/favicon.ico" />
<title>Q & A | DropShip 갤러리</title>
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/mobile_shop.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/js/font-awesome/css/font-awesome.min.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/swiper.min.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/aos.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/nice-select.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/js/owl.carousel.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/mobile/skin/qa/basic/style.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/common.css?ver=210618">
<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/sub.css?ver=210618">
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
<div id="hd_login_msg">오민수님 로그인 중 <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a></div>

<div class="cursor-ball">
    <div class="ball"></div>
</div>


<div id="skip_to_container">
    <a href="#contents">본문 바로가기</a>
</div>




<div id="wrap" class="sub">


        <header id="header">
        <h1 class="logo">
        <a href="/"><span class="hide">DropShip 갤러리</span></a>
    </h1>

        <div class="sitemap-wrap">
        <a href="javascript:;" class="btn-sitemap-open"><span class="hide">전체 사이트맵 열기</span></a>
        <div class="sitemap">
            <div class="inner">
                <h2 class="sitemap-logo"><a href="/"><span class="hide">DropShip 갤러리</span></a></h2>
                <nav class="all-menu-wrap">
                    <h2 class="hide">DropShip 갤러리 사이트맵</span></h2>
                    <ul class="all-menu">
                        <li>
                            <a href="https://bxgs.co.kr/shop/picture_list.php">Product</a>
                            <ul class="depth">
                                <li><a href="https://bxgs.co.kr/shop/best_list.php">베스트</a></li>
                                <li><a href="https://bxgs.co.kr/shop/new_list.php">신상품</a></li>
                                <li><a href="https://bxgs.co.kr/shop/picture_list.php">사진작품</a></li>
                                <li><a href="https://bxgs.co.kr/shop/painting_list.php">그림작품</a></li>
                                <li><a href="https://bxgs.co.kr/shop/artist_list.php">작가별</a></li>
                                <li><a href="https://bxgs.co.kr/shop/genre_list.php">장르별</a></li>
                                <li><a href="https://bxgs.co.kr/shop/subject_list.php">주제별</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/about.php">About DropShipang</a>
                            <ul class="depth">
                                <li><a href="/sub/about.php">회사소개</a></li>
                                <li><a href="javascript:alert('준비중입니다.');">갤러리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/bbs/board.php?bo_table=notice">Community</a>
                            <ul class="depth">
                                <li><a href="/bbs/board.php?bo_table=notice">공지사항</a></li>
                                <li><a href="/bbs/board.php?bo_table=event">이벤트</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/bbs/faq.php">Service</a>
                            <ul class="depth">
                                <li><a href="/bbs/faq.php">FAQ</a></li>
                                <li><a href="/sub/support.php">제휴협찬문의</a></li>
                                <li><a href="/bbs/qalist.php">1:1 문의</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <nav class="info-menu-wrap">
                    <h2 class="hide">로그인 관련 메뉴</h2>
                    <ul class="info-menu">
                                                    <li><a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a></li>
                            <li><a href="https://bxgs.co.kr/shop/mypage.php">마이페이지</a></li>
                            <li><a href="https://bxgs.co.kr/shop/personalpay.php">개인결제창</a></li>
                                                <li class="mb-only"><a href="https://bxgs.co.kr/shop/orderinquiry.php">주문조회</a></li>
                        <li class="mb-only"><a href="https://bxgs.co.kr/shop/cart.php">장바구니</a></li>
                    </ul>
                </nav>
                <a href="javascript:;" class="btn-sitemap-close"><span class="hide">전체 사이트맵 닫기</span></a>
            </div>
        </div>
    </div>

        <nav class="gnb-wrap">
        <h2 class="hide">대메뉴</h2>
        <ul class="gnb">
            <li ><a href="https://bxgs.co.kr/shop/best_list.php">베스트</a></li>
            <li ><a href="https://bxgs.co.kr/shop/new_list.php">신상품</a></li>
            <li ><a href="https://bxgs.co.kr/shop/picture_list.php">사진작품</a></li>
            <li ><a href="https://bxgs.co.kr/shop/painting_list.php">그림작품</a></li>
            <li ><a href="https://bxgs.co.kr/shop/artist_list.php">작가별</a></li>
            <li ><a href="https://bxgs.co.kr/shop/genre_list.php">장르별</a></li>
            <li ><a href="https://bxgs.co.kr/shop/subject_list.php">주제별</a></li>
        </ul>
    </nav>

        <nav class="gnb-info-wrap">
        <h2 class="hide">마이메뉴</h2>
        <ul class="gnb-info">
                            <li><a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a></li>
                <li><a href="https://bxgs.co.kr/shop/mypage.php">마이페이지</a></li>
                        <li><a href="https://bxgs.co.kr/shop/orderinquiry.php">주문조회</a></li>
            <li><a href="https://bxgs.co.kr/shop/cart.php">장바구니<span class="basket-num">3</span></a></li>
            <li><a href="/bbs/qalist.php">고객센터</a></li>
        </ul>
    </nav>

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
                    <span class="sub-txt">DropShip 쇼핑몰에 궁금한 내용을 남겨주세요.</span>
                <h2 class="sub-tit">Q&A</h2>
    </div>
</section>


<section id="board-write" class="board">
    <div class="maxinner">
        <!-- 게시물 작성/수정 시작 { -->
        <form name="fwrite" id="fwrite" action="https://bxgs.co.kr/bbs/qawrite_update.php" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
            <input type="hidden" name="w" value="">
            <input type="hidden" name="qa_id" value="0">
            <input type="hidden" name="sca" value="">
            <input type="hidden" name="stx" value="">
            <input type="hidden" name="page" value="">
            <input type="hidden" name="token" value="a65199a8af1a23701cf798a89157a1f1">
            <input type="hidden" name="qa_html" value="0">          

            <div class="form-box-wrap">

                

                                <!--
                <div class="form-box write-opt">
                    <div class="left-con">
                        <label for="qa_category"><span class="f-color">*</span>분류</label>
                    </div>
                    <div class="right-con">
                        <select name="qa_category" id="qa_category" required class="deco-select">
                            <option value="">선택하세요</option>
                            <option value="Q＆A">Q＆A</option>
                        </select>
                    </div>
                </div>
                -->
                
                
                
                <div class="form-box">
                    <div class="left-con">
                        <label for="qa_subject"><span class="f-color">*</span>제목</label>
                    </div>
                    <div class="right-con">
                        <input type="text" name="qa_subject" value="" id="qa_subject" required class="inp-type01 required" maxlength="255" placeholder="제목">
                    </div>
                </div>

                <div class="form-box">
                    <div class="left-con">
                        <label for="qa_content"><span class="f-color">*</span>내용</label>
                    </div>
                    <div class="right-con">
                        <div class="wr_content">
                            <span class="sound_only">웹에디터 시작</span>
<textarea id="qa_content" name="qa_content" class="textarea-type01" maxlength="65536" style="width:100%;height:300px" placeholder="내용을 입력해주세요."></textarea>
<span class="sound_only">웹 에디터 끝</span>                        </div>
                    </div>
                </div>

                                <div class="form-box write-file">
                    <div class="left-con">
                        첨부파일
                    </div>
                    <div class="right-con">
                        <div class="file-upload">
                            <div class="file-box">
                                <div class="file-name" id="bf_file1">
                                    <p></p>
                                </div>
                                <div class="file-btn">
                                    <label for="bf_file[1]"><span class="hide">파일2</span>찾아보기</label>
                                    <input type="file" name="bf_file[1]" id="bf_file[1]" title="파일첨부 1 :  용량 5,242,880 바이트 이하만 업로드 가능" class="inp-file uploadBtn">
                                </div>
                            </div>

                                                    </div> 
                        <p class="form-info">* 첨부파일의 용량은 최대 5MB 를 넘을 수 없으며, 등록 가능한 확장자명은 jpg, gif, pdf 입니다.</p>
                    </div>
                </div>
                            </div>
            <div class="btnwrap">
                <button type="submit" id="btn_submit" class="btnset btn-type01" accesskey="s">
                    <svg height="50" width="180"><rect height="50" width="180"></rect></svg>
                    <span>Submit</span>
                </button>
            </div>
        </form>
    </div>
</div>

    <script>
    function html_auto_br(obj)
    {
        if (obj.checked) {
            result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
            if (result)
                obj.value = "2";
            else
                obj.value = "1";
        }
        else
            obj.value = "";
    }

    function fwrite_submit(f)
    {
        var qa_content_editor = document.getElementById('qa_content');
if (!qa_content_editor.value) { alert("내용을 입력해 주십시오."); qa_content_editor.focus(); return false; }

        var subject = "";
        var content = "";
        $.ajax({
            url: g5_bbs_url+"/ajax.filter.php",
            type: "POST",
            data: {
                "subject": f.qa_subject.value,
                "content": f.qa_content.value
            },
            dataType: "json",
            async: false,
            cache: false,
            success: function(data, textStatus) {
                subject = data.subject;
                content = data.content;
            }
        });

        if (subject) {
            alert("제목에 금지단어('"+subject+"')가 포함되어있습니다");
            f.qa_subject.focus();
            return false;
        }

        if (content) {
            alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
            if (typeof(ed_qa_content) != "undefined")
                ed_qa_content.returnFalse();
            else
                f.qa_content.focus();
            return false;
        }

        
        $.ajax({
            type: "POST",
            url: g5_bbs_url+"/ajax.write.token.php",
            data: { 'token_case' : 'qa_write' },
            cache: false,
            async: false,
            dataType: "json",
            success: function(data) {
                if (typeof data.token !== "undefined") {
                    token = data.token;

                    if(typeof f.token === "undefined")
                        $(f).prepend('<input type="hidden" name="token" value="">');

                    $(f).find("input[name=token]").val(token);
                }
            }
        });

        document.getElementById("btn_submit").disabled = "disabled";

        return true;
    }
    var uploadFile = $('.uploadBtn');
	uploadFile.on('change', function(){
		if(window.FileReader){
			var filename = $(this)[0].files[0].name;
		} else {
			var filename = $(this).val().split('/').pop().split('\\').pop();
		}
		$(this).parents('.file-upload').find('.file-name p').text(filename);
	});
    </script>
</section>
<!-- } 게시물 작성/수정 끝 -->    </main>
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