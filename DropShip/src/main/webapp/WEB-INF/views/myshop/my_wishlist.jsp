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
<title>찜 리스트</title>
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
			<div class="mypage-info">
	<div class="mypage-info-txt">
		<div class="img"><img src="/img/sub/mypage-info.png" alt=""></div>
		<div class="txt">
			<p><strong>오민수</strong>님, 안녕하세요!</p>
			<p>
				고객님의 회원등급은 
				<span class="f-color">
					개인회원				</span>
				입니다.
			</p>
		</div>
	</div>
	<div class="mypage-info-mile">
		<a href="https://bxgs.co.kr/shop/my_coupon.php" class="my-coupon">
			<h3>사용가능 쿠폰</h3>
			<span class="f-color"><strong>0</strong>장</span>
		</a>
		<a href="https://bxgs.co.kr/shop/my_mileage.php" class="my-point">
			<h3>적립금</h3>
			<span class="f-color"><strong>0P</strong></span>
		</a>
	</div>
</div>
		<!-- 주문 내역 시작 { -->
		<div id="sod_ws"> 
			<div class="mypage-tit">
				<h3>찜리스트</h3>
			</div>
			<form name="fwishlist" method="post" action="./cartupdate.php">
			  <input type="hidden" name="act"       value="multi">
			  <input type="hidden" name="sw_direct" value="">
			  <input type="hidden" name="prog"      value="wish">
			  
	      <div class="tbstyle01" id="wish_li">
			<table>
			  <caption class="hide">찜리스트</caption>
			  <colgroup>
				<col width="60px">
				<col width="*">
				<col width="140px">
				<col width="160px">
			  </colgroup>
			  <thead>
			    <tr>
			      <th>
				    <div class="chk-box">
					  <input type="checkbox" name="ct_all" value="1" id="ct_all" class="selec_chk">
					  <label for="ct_all"><span class="hide">전체선택</span></label>
					</div>
				  </th>
				    <th>상품정보</th>
					<th>상품금액</th>
					<th>관리</th>
				</tr>
			  </thead>
			  <!-- 찜 리스트 목록 -->
			  <tbody>
			    <tr>
				  <td data-title="상품선택" class="td-num">
				    <div>
					  <div class="chk-box">
					    <input type="checkbox" name="chk_it_id[0]" value="64" id="chk_it_id_0" onclick="out_cd_check(this, '');getCheckedCnt();" class="selec_chk" data-out_cd="">
						<label for="chk_it_id_0"><span></span><b class="sound_only">아를의 랑그루아 다리</b></label>
					  </div>
					   	<input type="hidden" name="it_id[0]" value="1654133549">
						<input type="hidden" name="io_type[1654133549][0]" value="0">
						<input type="hidden" name="io_id[1654133549][0]" value="">
						<input type="hidden" name="io_value[1654133549][0]" value="아를의 랑그루아 다리">
						<input type="hidden" name="ct_qty[1654133549][0]" value="1">
					</div>
				  </td>
				  <td data-title="상품정보" class="td-product">
				    <div class="product-box">
					  <div class="product-img">
					    <div style="background-image:url(../data/item/1654133549/656R6re466Oo7JWE64uk66as.jpg)">
					      <span class="hide">썸네일</span>
					    </div>
					  </div>
					  <div class="product-name">
					    <a href="../shop/painting_item"> 
						  <strong>아를의 랑그루아 다리<span>빈센트 반 고흐</span>	</strong>
						</a>
					  </div>
					</div>
				  </td>
				  <td data-title="상품금액" class="td-numbig">38,200 원</td>
				  <td data-title="상품관리" class="td-state">
				  <!--<button type="button" class="btnset btn-type04 btn-fill-brown">장바구니</button>-->
				  <a href="my_wishlist_update" class="btnset btn-type04">삭제하기</a>
				  </td>
				</tr>
				
			    <tr>
				  <td data-title="상품선택" class="td-num">
				    <div>
					  <div class="chk-box">
					    <input type="checkbox" name="chk_it_id[1]" value="63" id="chk_it_id_1" onclick="out_cd_check(this, '');getCheckedCnt();" class="selec_chk" data-out_cd="">
						<label for="chk_it_id_1"><span></span><b class="sound_only">베르농의 테라스</b></label>
					  </div>
					   	<input type="hidden" name="it_id[1]" value="1654135291">
						<input type="hidden" name="io_type[1654135291][0]" value="0">
						<input type="hidden" name="io_id[1654135291][0]" value="">
						<input type="hidden" name="io_value[1654135291][0]" value="베르농의 테라스">
						<input type="hidden" name="ct_qty[1654135291][0]" value="1">
					</div>
				  </td>
				  <td data-title="상품정보" class="td-product">
				    <div class="product-box">
					  <div class="product-img">
					    <div style="background-image:url(../data/item/1654135291/67KE64W87J2Y7YWM65287Iqk.jpg)">
					      <span class="hide">썸네일</span>
					    </div>
					  </div>
					  <div class="product-name">
					    <a href="../shop/painting_item"> 
						  <strong>베르농의 테라스<span>피에르 보나르</span>	</strong>
						</a>
					  </div>
					</div>
				  </td>
				  <td data-title="상품금액" class="td-numbig">46,400</td>
				  <td data-title="상품관리" class="td-state">
				  <!--<button type="button" class="btnset btn-type04 btn-fill-brown">장바구니</button>-->
				  <a href="my_wishlist_update" class="btnset btn-type04">삭제하기</a>
				  </td>
				</tr>
				
			    <tr>
				  <td data-title="상품선택" class="td-num">
				    <div>
					  <div class="chk-box">
					    <input type="checkbox" name="chk_it_id[2]" value="62" id="chk_it_id_2" onclick="out_cd_check(this, '');getCheckedCnt();" class="selec_chk" data-out_cd="">
						<label for="chk_it_id_2"><span></span><b class="sound_only">키스</b></label>
					  </div>
					   	<input type="hidden" name="it_id[2]" value="1653879158">
						<input type="hidden" name="io_type[1653879158][0]" value="0">
						<input type="hidden" name="io_id[1653879158][0]" value="">
						<input type="hidden" name="io_value[1653879158][0]" value="키스">
						<input type="hidden" name="ct_qty[1653879158][0]" value="1">
					</div>
				  </td>
				  <td data-title="상품정보" class="td-product">
				    <div class="product-box">
					  <div class="product-img">
					    <div style="background-image:url(../data/item/1653879158/7YKk7Iqk.jpg)">
					      <span class="hide">썸네일</span>
					    </div>
					  </div>
					  <div class="product-name">
					    <a href="../shop/painting_item"> 
						  <strong>키스<span>구스타프 클림트</span></strong>
						</a>
					  </div>
					</div>
				  </td>
				  <td data-title="상품금액" class="td-numbig">36,500 원</td>
				  <td data-title="상품관리" class="td-state">
				  <!--<button type="button" class="btnset btn-type04 btn-fill-brown">장바구니</button>-->
				  <a href="https://bxgs.co.kr/shop/wishupdate.php?w=d&amp;wi_id=56" class="btnset btn-type04">삭제하기</a>
				  </td>
				</tr>
				<!-- 찜 리스트 목록 끝 -->
			  </tbody>
			</table>
	      </div>
				
				<div class="wish-opt"> 
					<button type="button" class="btnset btn-type04">선택삭제</button>
					<button type="button" class="btnset btn-type04">찜리스트 비우기</button>
				</div>
				
				<nav class="pg_wrap">
					<span class="pg">
						<span class="sound_only">열린</span>
						<strong class="pg_current">1</strong><span class="sound_only">페이지</span>
						<a href="" class="pg_page">2<span class="sound_only">페이지</span></a>
						<a href="" class="pg_page pg_end">맨끝</a>
					</span>
				</nav>
			</form>
			
		</div>
		</div>
	</div>
<section>

<script>
    function getCheckedCnt()  {
        var ctTotalLength = $("input[name^=chk_it_id]").length; // 전체 셀렉트박스 갯수
        var ctLength = $("input[name^=chk_it_id]:checked").length; // 선택된 셀렉트박스 갯수
        $("#cart_selec_num").text(ctLength); // 선택시 갯수 변경
    }getCheckedCnt();

    // 모두선택
    $("input[name=ct_all]").click(function() {
        if($(this).is(":checked"))
            $("input[name^=chk_it_id]").attr("checked", true);
        else
            $("input[name^=chk_it_id]").attr("checked", false);

        getCheckedCnt();
    });

    
    // 각각 체크시 모두선택 처리 > 21.12.21 DY
    $("input[name^=chk_it_id]").click(function(){
        var chk_it_id_chk = false;
        $("input[name^=chk_it_id]").each(function(index, item){
            if($(item).is(":checked")){
                chk_it_id_chk = true;
            }
        });

        if(chk_it_id_chk){
            $("input[name=ct_all]").attr("checked", true);
        }else {
            $("input[name=ct_all]").attr("checked", false);
        }
    });

    function out_cd_check(fld, out_cd)
    {
        if (out_cd == 'no'){
            alert("옵션이 있는 상품입니다.\n\n상품을 클릭하여 상품페이지에서 옵션을 선택한 후 주문하십시오.");
            fld.checked = false;
            return;
        }

        if (out_cd == 'tel_inq'){
            alert("이 상품은 전화로 문의해 주십시오.\n\n장바구니에 담아 구입하실 수 없습니다.");
            fld.checked = false;
            return;
        }
    }

    function fwishlist_check(f, act)
    {
        var k = 0;
        var length = f.elements.length;

        for(i=0; i<length; i++) {
            if (f.elements[i].checked) {
                k++;
            }
        }

        if(k == 0)
        {
            alert("상품을 하나 이상 체크 하십시오");
            return false;
        }

        if (act == "direct_buy")
        {
            f.sw_direct.value = 1;
        }
        else
        {
            f.sw_direct.value = 0;
        }

        return true;
    }
</script>

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
