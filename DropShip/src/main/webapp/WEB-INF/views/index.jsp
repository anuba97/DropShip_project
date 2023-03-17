<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:02:19 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="img/favicon.ico" />
<title>DropShip</title>
<link rel="stylesheet" href="theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="theme/buzinga/css/main3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "index";
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
<link rel="stylesheet" href="../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script src="js/jquery-1.12.4.min3816.js?ver=210618"></script>
<script src="js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
<script src="js/common3816.js?ver=210618"></script>
<script src="js/wrest3816.js?ver=210618"></script>
<script src="js/placeholders.min3816.js?ver=210618"></script>
<script src="theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
<script src="theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
<script src="theme/buzinga/js/aos3816.js?ver=210618"></script>
<script src="theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
<script src="theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
<script src="js/modernizr.custom.701113816.js?ver=210618"></script>
<script src="theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
<script src="theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
<script src="js/shop.list.action3816.js?ver=210618"></script>
</head>
<body>


<div class="cursor-ball">
    <div class="ball"></div>
</div>


<div id="skip_to_container">
    <a href="#contents">본문 바로가기</a>
</div>



<!-- 팝업레이어 시작 { -->
<div id="hd_pop">
    <h2>팝업레이어 알림</h2>

<span class="sound_only">팝업레이어 알림이 없습니다.</span></div>

<script>
$(function() {
    $(".hd_pops_reject").click(function() {
        var id = $(this).attr('class').split(' ');
        var ck_name = id[1];
        var exp_time = parseInt(id[2]);
        $("#"+id[1]).css("display", "none");
        set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
    });
    $('.hd_pops_close').click(function() {
        var idb = $(this).attr('class').split(' ');
        $('#'+idb[1]).css('display','none');
    });
});
</script>
<!-- } 팝업레이어 끝 -->

<div id="wrap" class="main">
		
		<!-- header 부분 시작 -->
		<%@ include file ="top/header.jsp" %>
		<!-- header 부분 끝 -->

        <main id="contents">
        
<!----- VISUAL 슬라이드 MAX 3개 (더 늘어나도 되길래 제한 안둠 -ㅅ-) ----->  
<section class="visual">
	<div class="visual-slider">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="visual-txt-wrap">
					<div class="visual-txt">
						<span>ART & DESIGN</span>
						<h2>
							DropShip GALLERY SHOP <br />
GRAND OPEN						</h2>
					</div>
				</div>
				<div class="visual-bg-wrap">
					<div class="visual-bg" style="background-image:url('data/maindata1/maindata128056_0.jpg');"><span class="hide">배경이미지</span></div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="visual-txt-wrap">
					<div class="visual-txt">
						<span>DropShip GALLERY</span>
						<h2>
							GRAND OPEN						</h2>
					</div>
				</div>
				<div class="visual-bg-wrap">
					<div class="visual-bg" style="background-image:url('data/maindata1/maindata131255_0.jpg');"><span class="hide">배경이미지</span></div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="visual-txt-wrap">
					<div class="visual-txt">
						<span>Art · Design in</span>
						<h2>
							DropShip						</h2>
					</div>
				</div>
				<div class="visual-bg-wrap">
					<div class="visual-bg" style="background-image:url('data/maindata1/maindata131279_0.jpg');"><span class="hide">배경이미지</span></div>
				</div>
			</div>
		</div>
		<div class="swiper-button-prev cursor-able" data-cursor="PREV"></div>
		<div class="swiper-button-next cursor-able" data-cursor="NEXT"></div>
	</div>
	<div class="swiper-pagination"></div>
</section>

	<!----- BEST ART 슬라이드 MAX 12개 (4개씩 묶음이동) ----->
	<section class="best">
		<div class="main-tit-wrap" data-aos="fade-up">
			<span class="main-txt">DropShip 에서 가장 인기있는 작품을 소개합니다.</span>
			<h2 class="main-tit">BEST ART</h2>
		</div>
		<div class="best-slider-wrap" data-aos="fade-up">
						
	<script src="js/jquery.fancylist.js"></script>
	
	
		<!-- 메인상품진열 시작 { -->
		<div class="best-slider">
		  <ul class="swiper-wrapper sct sct_20">
		    <li class="swiper-slide sct_li">
		      <div class="li_wr">
		        <div class="sct_img_wrap">
		          <div class="sct_img" style="background-image:url(data/item/1654133549/656R6re466Oo7JWE64uk66as.jpg)">
		            <span class="hide">아를의 랑그루아 다리</span>
		          </div>
		          <div class="sct_opt_wrap">
		            <div class="sct_btn">
		              <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654133549">
		                <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
		                <span>ADD TO CART</span>
		              </button>
		            </div>
		            <div class="cart-layer"></div>
		            <div class="sct_op_btn">
				  	  <a href="shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
				  	  <button type="button" class="btnset btn-like btn_wish" data-it_id="1654133549"><span class="hide">찜하기</span></button>
				  	</div>
				  </div>
				</div>
				<div class="sct_txt"><a href="shop/painting_item" class="sct_a">아를의 랑그루아 다리</a></div>
				<div class="sct_desc"><span>빈센트 반 고흐</span><p>20.0cm x 35.7cm</p></div>
				<div class="sct_cost"><span class="price_cost"><strong>38,200</strong>원</span></div>
			  </div>
			</li>
			
			<li class="swiper-slide sct_li">
			  <div class="li_wr">
			    <div class="sct_img_wrap">
			      <div class="sct_img" style="background-image:url(data/item/1653879158/7YKk7Iqk.jpg)">
			        <span class="hide">키스</span>
			      </div>
			      <div class="sct_opt_wrap">
			        <div class="sct_btn">
			          <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1653879158">
			            <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
			            <span>ADD TO CART</span>
			          </button>
			        </div>
			        <div class="cart-layer"></div>
			        <div class="sct_op_btn">
					  <a href="shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
					  <button type="button" class="btnset btn-like btn_wish" data-it_id="1653879158"><span class="hide">찜하기</span></button>
					</div>
				  </div>
				</div>
				<div class="sct_txt"><a href="shop/painting_item" class="sct_a">키스</a></div>
				<div class="sct_desc"><span>구스타프 클림트</span><p>20.0cm x 35.7cm</p></div>
				<div class="sct_cost"><span class="price_cost"><strong>36,500</strong>원</span></div>
			  </div>
			</li>
			
			<li class="swiper-slide sct_li">
			  <div class="li_wr">
			    <div class="sct_img_wrap">
			      <div class="sct_img" style="background-image:url(data/item/1652406531/thum04.png)">
			        <span class="hide">앙티브이 아침</span>
			      </div>
			      <div class="sct_opt_wrap">
			        <div class="sct_btn">
			          <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1652406531">
			            <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
			            <span>ADD TO CART</span>
			          </button>
			        </div>
			        <div class="cart-layer"></div>
			        <div class="sct_op_btn">
			  	  	  <a href="shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
			  	  	  <button type="button" class="btnset btn-like btn_wish" data-it_id="1652406531"><span class="hide">찜하기</span></button>
			  	  	</div>
			  	  </div>
			    </div>
			    <div class="sct_txt"><a href="shop/painting_item" class="sct_a">앙티브이 아침</a></div>
			  	<div class="sct_desc"><span>클로드 모네</span><p>20.0cm x 35.7cm</p></div>
			  	<div class="sct_cost"><span class="price_cost"><strong>35,700</strong>원</span></div>
			  </div>
			</li>
			
			<li class="swiper-slide sct_li">
			  <div class="li_wr">
			    <div class="sct_img_wrap">
			      <div class="sct_img" style="background-image:url(data/item/1652406511/thum05.png)">
			        <span class="hide">아테제 호수</span>
			      </div>
			      <div class="sct_opt_wrap">
			        <div class="sct_btn">
			          <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1652406511">
			            <svg height="45" width="160"><rect height="45" width="160"></rect></svg>
			            <span>ADD TO CART</span>
			          </button>
			        </div>
			        <div class="cart-layer"></div>
			        <div class="sct_op_btn">
				      <a href="shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
				      <button type="button" class="btnset btn-like btn_wish" data-it_id="1652406511"><span class="hide">찜하기</span></button>
				    </div>
				  </div>
				</div>
				<div class="sct_txt"><a href="shop/painting_item" class="sct_a">아테제 호수</a></div>
				<div class="sct_desc"><span>구스타프 클림트</span><p>20.0cm x 35.7cm</p></div>
				<div class="sct_cost"><span class="price_cost"><strong>42,400</strong>원</span></div>
			  </div>
			</li>
			
			<li class="swiper-slide sct_li">
			  <div class="li_wr">
			    <div class="sct_img_wrap">
			      <div class="sct_img" style="background-image:url(data/item/1652406261/thum08.png)">
			        <span class="hide">지베르니 봄의 효과</span>
			      </div>
			      <div class="sct_opt_wrap">
			        <div class="sct_btn">
			          <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1652406261">
			            <svg height="45" width="160"><rect height="45" width="160"></rect></svg><span>ADD TO CART</span>
			          </button>
			        </div>
			        <div class="cart-layer"></div>
			        <div class="sct_op_btn">
			  	  	  <a href="shop/painting_item" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
			  	  	  <button type="button" class="btnset btn-like btn_wish" data-it_id="1652406261"><span class="hide">찜하기</span></button>
			  	  	</div>
			  	  </div>
			  	</div>
			  	<div class="sct_txt"><a href="shop/painting_item" class="sct_a">지베르니 봄의 효과</a></div>
			  	<div class="sct_desc"><span>클로드 모네</span><p>20.0cm x 35.7cm</p></div>
			  	<div class="sct_cost"><span class="price_cost"><strong>36,500</strong>원</span></div>
			  </div>
			</li>
		  </ul>
		</div>
		<div class="swiper-button-prev cursor-able"></div>
		<div class="swiper-button-next cursor-able"></div>
		<div class="swiper-pagination"></div><!-- } 상품진열 끝 -->
	  </div>
	</section>
	
	<!----- MD PICK 슬라이드 그림작품2개 선정해서 노출함 ----->
	<section class="pick">
	  <div class="main-tit-wrap" data-aos="fade-up">
	    <span class="main-txt">DropShip 큐레이터가 선정한 추천 작품을 만나보세요.</span>
		<h2 class="main-tit">MD PICK</h2>
	  </div>
	  <div class="pick-tab-wrap">
	    <div class="pick-tab" data-aos="fade-up">
		  <ul>
		  	<!-- <li class="on"><a href="javascript:;">그림작품</a></li> -->
			<li class="on"><a href="javascript:;">사진작품</a></li>
		  </ul>
		</div>
		<div class="pick-tabcon-wrap" data-aos="fade-up">
		
		<div id="pick-tabcon01" class="pick-tabcon on">
					
		  <div class="pick-thumb-wrap">
		    <div class="pick-thumb-slider">
		      <div class="swiper-wrapper">
		        <div class="swiper-slide">
		          <div class="pick-img-wrap">
		            <div class="pick-img" style="background-image:url(data/item/1654133092/6rOg7Z2Q67K867Kg64qU64aN67aA.jpg)">
		              <span class="hide"></span>
		            </div>
		          </div>
		        </div>
		        <div class="swiper-slide">
		          <div class="pick-img-wrap">
		            <div class="pick-img" style="background-image:url(data/item/1652406953/7IiY66Co7Jew66q7.png)">
		              <span class="hide"></span>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		  <div class="pick-info-wrap">
		    <div class="pick-info-slider">
		      <div class="swiper-wrapper"> 
		 	    <div class="swiper-slide">
		 	      <div class="pick-desc-wrap">
				    <span class="pick-artist">빈센트 반 고흐</span>
				      <dl class="pick-desc"><dt>수확하는 사람</dt>
				        <dd>빈센트 반 고흐는 장 프랑수아 밀레(Jean Francois Millet)의 &#038;lt;씨 뿌리는 사람&#038;gt;(1850) 및 &#038;lt;이삭 줍는 여인들-이삭줍기&#038;gt;(1857)와 같은 작품들에서 영감을 받아 농촌에서 행해지는 일들에 관심이 많았고, 그와 관련한 다수의 연작들을 그렸다. 들에서 수확을 하고 있는 농부의 모습과 더불어 수확기의 황금빛 밀밭의 색채가 내는 효과가 보는 이의 시선을 사로잡는다.</dd>
				      </dl>
				    <div class="pick-btnwrap">
					  <a href="shop/painting_item" class="btnset btn-type01">
					    <svg height="50" width="180"><rect height="50" width="180"></rect></svg>
					    <span>Read More</span>
					  </a>
					</div>
				  </div>
				</div> 
	
			<div class="swiper-slide">
			  <div class="pick-desc-wrap">
			    <span class="pick-artist">클로드 모네</span>
			      <dl class="pick-desc"><dt>수련연못</dt>
			        <dd>자연 경관을 표한하기 위한 운동을 한 실천가이자 인상주의를 시작하고 끝까지 지킨 모네의 수련연못 작품입니다. 이는 수련시리즈에 해당합니다.</dd>
			      </dl>
			    <div class="pick-btnwrap">
				  <a href="shop/painting_item" class="btnset btn-type01">
				    <svg height="50" width="180"><rect height="50" width="180"></rect></svg>
				    <span>Read More</span>
				  </a>
				</div>
			  </div>
			</div>
		  </div>
		  </div>
		  <div class="swiper-button-prev cursor-able"></div>
		  <div class="swiper-button-next cursor-able"></div>
		  </div></div>
	    </div>
	  </div>
	</section>

	<!----- NEW ART 슬라이드 MAX 9개 노출 (3개씩 묶음이동) 지금은5개만 있음 ----->
	<section class="newart">
		<div class="main-tit-wrap" data-aos="fade-up">
			<span class="main-txt">DropShip과 함께하는 새로운 작품을 소개합니다.</span>
			<h2 class="main-tit">NEW ART</h2>
		</div>
		<div class="newart-slider-wrap" data-aos="fade-up">
						
	<script src="js/jquery.fancylist.js"></script>
	
	
	<!-- 메인상품진열 시작 { -->
	<div class="newart-slider">
	  <ul class="swiper-wrapper">
	  
		<li class="swiper-slide">
		  <div class="newart-thumb-wrap">
		    <div class="newart-thumb" style="background-image:url(data/item/1654135291/67KE64W87J2Y7YWM65287Iqk.jpg)">
		      <span class="hide">베르농의 테라스</span>
		    </div>
		  </div>
		  <div class="newart-info-wrap">
		    <div class="newart-info">
		      <span class="newart-artist">피에르 보나르</span>
		        <dl class="newart-desc"><dt>베르농의 테라스</dt>
		          <dd>강렬한 색채와 평면성이 강조된 뚜렷한 윤곽선, 평평한 색면 추구에 열정을 쏟았던 '나비파'의 유산을 느낄 수 있다. </dd>
		        </dl>
		      <div class="newart-btnwrap">
			    <a href="shop/painting_item" class="btnset btn-type02">Read More</a>
			  </div>
			</div>
		  </div>
		</li>
		
		<li class="swiper-slide">
		  <div class="newart-thumb-wrap">
		    <div class="newart-thumb" style="background-image:url(data/item/1654134107/67OE6rO87IKs7J207ZSE65s7Iqk64KY66y06rCA7J6I64qU6ri4.jpg)">
		      <span class="hide">밤의 프로방스 시골길</span>
		    </div>
		  </div>
		  <div class="newart-info-wrap">
		    <div class="newart-info">
		      <span class="newart-artist">빈센트 반 고흐</span>
		      <dl class="newart-desc"><dt>밤의 프로방스 시골길</dt>
		        <dd>1889년 5월부터 1890년 5월 생레미에서 머문 기간 동안의 작품들은 반 고흐 특유의 소용돌이치며 꿈틀대는 선들로 가득했다. 이 시기 반 고흐의 마음을 사로잡은 소재는 사이프러스 나무였다.</dd>
		      </dl>
		      <div class="newart-btnwrap">
			    <a href="shop/painting_item" class="btnset btn-type02">Read More</a>
			  </div>
			</div>
		  </div>
		</li>
			
		<li class="swiper-slide">
		  <div class="newart-thumb-wrap">
		    <div class="newart-thumb" style="background-image:url(data/item/1654129940/shutterstock_423234622.jpg)">
		      <span class="hide">양산을 든 여인 - 카미유와 장</span>
		    </div>
		  </div>
		  <div class="newart-info-wrap">
		    <div class="newart-info"><span class="newart-artist">클로드 모네</span>
		      <dl class="newart-desc"><dt>양산을 든 여인 - 카미유와 장</dt>
		        <dd>마네의 도움으로 1871년 모네는 아르장퇴유에 거처를 마련하였다. 양산을 든 여인(1875)는 1875년 여름에서 1876년 사이에 그린 일련의 작품 시리즈 가운데 하나이다. 이때 그린 시리즈물의 풍경은 파리 외곽인 아르장퇴유의 두 번째 집 주위의 정원을 묘사하고 있다.</dd>
		      </dl>
		      <div class="newart-btnwrap">
			    <a href="shop/painting_item" class="btnset btn-type02">Read More</a>
			  </div>
		    </div>
		  </div>
		</li>
			
		<li class="swiper-slide">
		  <div class="newart-thumb-wrap">
		    <div class="newart-thumb" style="background-image:url(data/item/1654129449/7IS464qQ6rCV7J2Y67SE.png)">
		      <span class="hide">세느강의 봄</span>
		    </div>
		  </div>
		  <div class="newart-info-wrap">
		    <div class="newart-info"><span class="newart-artist">클로드 모네</span>
		      <dl class="newart-desc"><dt>세느강의 봄</dt><dd></dd></dl>
		      <div class="newart-btnwrap">
				<a href="shop/painting_item" class="btnset btn-type02">Read More</a>
			  </div>
			</div>
		  </div>
		</li>
			
		<li class="swiper-slide">
		  <div class="newart-thumb-wrap">
		    <div class="newart-thumb" style="background-image:url(data/item/1652406619/7Jes7J24.png)">
		      <span class="hide">헤르미네 갈리아의 초상</span>
		    </div>
		  </div>
		  <div class="newart-info-wrap">
		    <div class="newart-info">
		      <span class="newart-artist">구스타프 클림트</span>
		      <dl class="newart-desc"><dt>헤르미네 갈리아의 초상</dt><dd>테스트입니다.</dd></dl>
		      <div class="newart-btnwrap">
			    <a href="shop/painting_item" class="btnset btn-type02">Read More</a>
			  </div>
			</div>
		  </div>
		</li>
	  </ul>
	</div>
	<div class="swiper-button-prev cursor-able"></div>
	<div class="swiper-button-next cursor-able">
	</div><!-- } 상품진열 20 끝 --></div>                        
	</section>

	<!----- DIRECT GALLERY ----->
	<section class="direct-gallery">
		<div class="direct-gallery-con effect-none" data-aos="fade-in">
			<h2 class="split-txt">DropShip GALLERY</h2>
			<p>DropShip에서 다양한 그림을 직접 감상하시고 구입하세요.</p>
			<div class="direct-gallery-btnwrap">
				<a href="javascript:alert('준비중입니다.');" class="btnset btn-type01">
					<svg height="50" width="180"><rect height="50" width="180"></rect></svg>
					<span>Read More</span>
				</a> 
			</div>
		</div>                     
	</section>

<!----- REVIEW - 슬라이드 총 5개 노출 (1개씩 이동) ----->
<section class="review">
	<div class="main-tit-wrap" data-aos="fade-up">
		<span class="main-txt">DropShip의 작품을 이용한 고객들의 실제 후기입니다.</span>
		<h2 class="main-tit">REVIEW</h2>
	</div>
	<div class="review-slider-wrap" data-aos="fade-up">
		<div class="review-slider">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="review-thumb-wrap">
						<span class="review-date">
							<strong>02</strong>Jun						</span>
						<div class="review-thumb" style="background-image:url('data/item/1652406511/thum05.png')">
							<span class="hide">썸네일 이미지</span>
						</div>
					</div>
					<div class="review-info-wrap">
						<div class="review-info">
							<dl class="review-desc">
								<dt>
									<span>아테제 호수</span>
									<span>구스타프 클림트</span>
								</dt>
								<dd>
									<p>배송 포장 모두 만족합니다.</p><p>그림 퀄리티는 말할 것도 없고, 색상도 선명하고 무광이라 반사도 적은 것 같아요</p><p>선물 이후에 너무 좋아하셔서 보러갔는데 믿고 살만하네요~</p>								</dd>
							</dl>
							<div class="review-btnwrap">
								<a href="shop/painting_item" class="btnset btn-type02">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review-thumb-wrap">
						<span class="review-date">
							<strong>02</strong>Jun						</span>
						<div class="review-thumb" style="background-image:url('data/item/1653879158/7YKk7Iqk.jpg')">
							<span class="hide">썸네일 이미지</span>
						</div>
					</div>
					<div class="review-info-wrap">
						<div class="review-info">
							<dl class="review-desc">
								<dt>
									<span>키스</span>
									<span>구스타프 클림트</span>
								</dt>
								<dd>
									<p>생각했던 것보다 약간 어두운느낌은 있지만, 식탁 옆 벽에 거니까 크기도 적당하고 </p><p>퀄리티도 아주 좋습니다. </p><p><br /></p><p>DropShip에서 다른그림으로 하나 더 구매하려고 해요</p><p><br /></p><p>배송빠르게 잘왔습니다 감사합니다</p>								</dd>
							</dl>
							<div class="review-btnwrap">
								<a href="shop/painting_item" class="btnset btn-type02">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review-thumb-wrap">
						<span class="review-date">
							<strong>02</strong>Jun						</span>
						<div class="review-thumb" style="background-image:url('data/item/1654135804/7JWE66qs65Oc64KY66y0.jpg')">
							<span class="hide">썸네일 이미지</span>
						</div>
					</div>
					<div class="review-info-wrap">
						<div class="review-info">
							<dl class="review-desc">
								<dt>
									<span>꽃 피는 아몬드 나무</span>
									<span>빈센트 반 고흐</span>
								</dt>
								<dd>
									<p>그림이 깔끔하고 가볍고 좋아요~<br /></p><p>이사하고 집이 너무 휑한거 같아서 이번 기회에 작품 하나 샀는데 그림 하나도 분위기가 너무 달라졌어요.</p><p>배송도 빠르고 너무 감사합니다.</p>								</dd>
							</dl>
							<div class="review-btnwrap">
								<a href="shop/painting_item" class="btnset btn-type02">Read More</a>
							</div>
						</div>
					</div>
				</div>
<!--
				<div class="swiper-slide">
					<div class="review-thumb-wrap">
						<span class="review-date">
							<strong>10</strong>Mar
						</span>
						<div class="review-thumb" style="background-image:url(/img/main/review-img01.jpg)">
							<span class="hide">썸네일 이미지</span>
						</div>
					</div>
					<div class="review-info-wrap">
						<div class="review-info">
							<dl class="review-desc">
								<dt>
									<span>아르장퇴유 화가의 정원</span>
									<span>클레드 모네</span>
								</dt>
								<dd>
									보고 있으면 너무 행복해지는 그림입니다. 따뜻하고 예쁘고,
									그림을 처음 구입하는데 프린트 기술이 좋은지 색상이 너무 선명하 ...
								</dd>
							</dl>
							<div class="review-btnwrap">
								<a href="" class="btnset btn-type02">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review-thumb-wrap">
						<span class="review-date">
							<strong>28</strong>Feb
						</span>
						<div class="review-thumb" style="background-image:url(/img/main/review-img02.jpg)">
							<span class="hide">썸네일 이미지</span>
						</div>
					</div>
					<div class="review-info-wrap">
						<div class="review-info">
							<dl class="review-desc">
								<dt>
									<span>그랑드 자트 섬의 일요일 오후</span>
									<span>조르주 피에르 쇠라</span>
								</dt>
								<dd>
									후기 내용이 2줄로 노출되며 그 이상 초과시 말줄임으로 보여집니다.
									후기 내용이 2줄로 노출되며 그 이상 초과시 말줄임으로 보여집니 ...
								</dd>
							</dl>
							<div class="review-btnwrap">
								<a href="" class="btnset btn-type02">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="review-thumb-wrap">
						<span class="review-date">
							<strong>08</strong>Jan
						</span>
						<div class="review-thumb" style="background-image:url(/img/main/review-img03.jpg)">
							<span class="hide">썸네일 이미지</span>
						</div>
					</div>
					<div class="review-info-wrap">
						<div class="review-info">
							<dl class="review-desc">
								<dt>
									<span>살렌토 해변 II</span>
									<span>제임스 빈스</span>
								</dt>
								<dd>
									후기 내용이 2줄로 노출되며 그 이상 초과시 말줄임으로 보여집니다.
									후기 내용이 2줄로 노출되며 그 이상 초과시 말줄임으로 보여집니 ...
								</dd>
							</dl>
							<div class="review-btnwrap">
								<a href="" class="btnset btn-type02">Read More</a>
							</div>
						</div>
					</div>
				</div>
-->
			</div>
		</div>
		<div class="swiper-button-prev cursor-able"></div>
		<div class="swiper-button-next cursor-able"></div>
		<div class="swiper-pagination"></div>

	</div>
</section>
    </main>
        
        <!-- footer 부분 시작 -->
        <%@ include file = "top/footer.jsp" %>
        <!-- footer 부분 끝 -->

<div id="gotop">
    <a href="javascript:;"><span class="hide">맨위로가기</span></a>
</div>
</div>


<script src="js/sns.js"></script>
<script src="theme/buzinga/js/css3-animate-it.js"></script>
<link rel="stylesheet" href="theme/buzinga/css/animate.css">
<script src="theme/buzinga/js/base.js"></script><script src="theme/buzinga/js/main.js"></script>

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

<!-- Mirrored from bxgs.co.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:02:52 GMT -->
</html>
