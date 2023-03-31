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
<title>회원 가입 | DropShip 갤러리</title>
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
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
var g5_shop_url = "https://bxgs.co.kr/shop";


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
                        <input type="text" name="q" value="" id="sch_str"  placeholder="Search..." autocomplete="off">
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
                <h2 class="sub-tit">JOIN</h2>
    </div>
</section>


<script src="https://bxgs.co.kr/js/jquery.register_form.js"></script>





<!----- 회원정보 입력 ----->
<section class="join">
    <div class="maxinner">

                <div class="join-step" data-aos="fade-up">
            <ul>
                <li>약관동의</li>
                <li class="on">정보입력</li>
                <li>가입완료</li>
            </ul>
        </div>
        
        <div class="join-form-wrap">
            <form name="fregisterform" id="fregisterform" action="../member/register_result" onsubmit="return fregisterform_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off">
                <input type="hidden" name="w" value="">
                <input type="hidden" name="url" value="%2Fbbs%2Fregister_form.php">
                <input type="hidden" name="agree" value="1">
                <input type="hidden" name="agree2" value="1">
                <input type="hidden" name="cert_type" value="">
                <input type="hidden" name="cert_no" value="">
                <input type="hidden" name="mb_open" value="1"> <!-- 정보공개 -->
                <input type="hidden" name="mb_sms" value="0"> <!-- SMS 수신여부 -->
                <input type="hidden" name="mb_sex" value="">

                <div class="form-box-wrap">
                    <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_id"><span class="f-color">*</span>아이디</label>
                        </div>
                        <div class="right-con">
                            <div class="box-id">
                                <input type="text" name="mb_id" value="" id="reg_mb_id" class="inp-type01 half  " minlength="3" maxlength="20"   placeholder="아이디">
                                <a href="javascript:;" class="btnset btn-type03 btn-fill-brown" id="btn-idchk">중복확인</a>                            </div>
                            <span id="msg_mb_id"></span>
                            <span class="sm-notice-txt">영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span>
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_password"><span class="f-color">*</span>비밀번호</label>
                        </div>
                        <div class="right-con">
                            <input type="password" name="mb_password" id="reg_mb_password" class="inp-type01 half " minlength="3" maxlength="20"  placeholder="비밀번호">
                            <span class="sm-notice-txt">영문, 숫자, 특수문자를 포함하여 8자 이상으로 작성해주세요.</span>
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_password_re"><span class="f-color">*</span>비밀번호 확인</label>
                        </div>
                        <div class="right-con">
                            <input type="password" name="mb_password_re" id="reg_mb_password_re" class="inp-type01 half " minlength="3" maxlength="20"   placeholder="비밀번호확인">
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_name"><span class="f-color">*</span>이름</label>
                        </div>
                        <div class="right-con">
                            <input type="text" id="reg_mb_name" name="mb_name" value=""   class="inp-type01 half  " placeholder="이름">
                                                                                </div>
                    </div>

                    <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_email"><span class="f-color">*</span>E-mail</label>
                        </div>
                        <div class="right-con">
                                                        <input type="hidden" name="old_email" value="">
                            <input type="email" name="mb_email" value="" id="reg_mb_email"  class="inp-type01 half email " size="50" maxlength="100" placeholder="E-mail">
                        </div>
                    </div>

                    
                                        <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_tel"><span class="f-color">*</span>전화번호</label>
                        </div>
                        <div class="right-con">
                            <input type="text" name="mb_tel" value="" id="reg_mb_tel" class="inp-type01 half " maxlength="20"  placeholder="전화번호">
                        </div>
                    </div>
                    
                                        <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_hp"><span class="f-color">*</span>휴대폰번호</label>
                        </div>
                        <div class="right-con">
                            <input type="text" name="mb_hp" value="" id="reg_mb_hp"  class="inp-type01 half " maxlength="20" placeholder="휴대폰번호">
                                                    </div>
                    </div>
                    
                    <div class="form-box">
                        <div class="left-con">
                            <label for="reg_mb_1"><span class="f-color">*</span>생년월일</label>
                        </div>
                        <div class="right-con">
                            <div class="box-birth">
                                <select name="mb_1" id="mb_1" class="deco-select" >
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
                                                                            <option value="2017">2017</option>
                                                                            <option value="2016">2016</option>
                                                                            <option value="2015">2015</option>
                                                                            <option value="2014">2014</option>
                                                                            <option value="2013">2013</option>
                                                                            <option value="2012">2012</option>
                                                                            <option value="2011">2011</option>
                                                                            <option value="2010">2010</option>
                                                                            <option value="2009">2009</option>
                                                                            <option value="2008">2008</option>
                                                                            <option value="2007">2007</option>
                                                                            <option value="2006">2006</option>
                                                                            <option value="2005">2005</option>
                                                                            <option value="2004">2004</option>
                                                                            <option value="2003">2003</option>
                                                                            <option value="2002">2002</option>
                                                                            <option value="2001">2001</option>
                                                                            <option value="2000">2000</option>
                                                                            <option value="1999">1999</option>
                                                                            <option value="1998">1998</option>
                                                                            <option value="1997">1997</option>
                                                                            <option value="1996">1996</option>
                                                                            <option value="1995">1995</option>
                                                                            <option value="1994">1994</option>
                                                                            <option value="1993">1993</option>
                                                                            <option value="1992">1992</option>
                                                                            <option value="1991">1991</option>
                                                                            <option value="1990">1990</option>
                                                                            <option value="1989">1989</option>
                                                                            <option value="1988">1988</option>
                                                                            <option value="1987">1987</option>
                                                                            <option value="1986">1986</option>
                                                                            <option value="1985">1985</option>
                                                                            <option value="1984">1984</option>
                                                                            <option value="1983">1983</option>
                                                                            <option value="1982">1982</option>
                                                                            <option value="1981">1981</option>
                                                                            <option value="1980">1980</option>
                                                                            <option value="1979">1979</option>
                                                                            <option value="1978">1978</option>
                                                                            <option value="1977">1977</option>
                                                                            <option value="1976">1976</option>
                                                                            <option value="1975">1975</option>
                                                                            <option value="1974">1974</option>
                                                                            <option value="1973">1973</option>
                                                                            <option value="1972">1972</option>
                                                                            <option value="1971">1971</option>
                                                                            <option value="1970">1970</option>
                                                                            <option value="1969">1969</option>
                                                                            <option value="1968">1968</option>
                                                                            <option value="1967">1967</option>
                                                                            <option value="1966">1966</option>
                                                                            <option value="1965">1965</option>
                                                                            <option value="1964">1964</option>
                                                                            <option value="1963">1963</option>
                                                                            <option value="1962">1962</option>
                                                                            <option value="1961">1961</option>
                                                                            <option value="1960">1960</option>
                                                                            <option value="1959">1959</option>
                                                                            <option value="1958">1958</option>
                                                                            <option value="1957">1957</option>
                                                                            <option value="1956">1956</option>
                                                                            <option value="1955">1955</option>
                                                                            <option value="1954">1954</option>
                                                                            <option value="1953">1953</option>
                                                                            <option value="1952">1952</option>
                                                                            <option value="1951">1951</option>
                                                                            <option value="1950">1950</option>
                                                                            <option value="1949">1949</option>
                                                                            <option value="1948">1948</option>
                                                                            <option value="1947">1947</option>
                                                                            <option value="1946">1946</option>
                                                                            <option value="1945">1945</option>
                                                                            <option value="1944">1944</option>
                                                                            <option value="1943">1943</option>
                                                                            <option value="1942">1942</option>
                                                                            <option value="1941">1941</option>
                                                                            <option value="1940">1940</option>
                                                                            <option value="1939">1939</option>
                                                                            <option value="1938">1938</option>
                                                                            <option value="1937">1937</option>
                                                                            <option value="1936">1936</option>
                                                                            <option value="1935">1935</option>
                                                                            <option value="1934">1934</option>
                                                                            <option value="1933">1933</option>
                                                                            <option value="1932">1932</option>
                                                                            <option value="1931">1931</option>
                                                                            <option value="1930">1930</option>
                                                                            <option value="1929">1929</option>
                                                                            <option value="1928">1928</option>
                                                                            <option value="1927">1927</option>
                                                                            <option value="1926">1926</option>
                                                                            <option value="1925">1925</option>
                                                                            <option value="1924">1924</option>
                                                                            <option value="1923">1923</option>
                                                                            <option value="1922">1922</option>
                                                                            <option value="1921">1921</option>
                                                                            <option value="1920">1920</option>
                                                                    </select>
                                <span class="bar">년</span>
                                <select name="mb_2" id="mb_2" class="deco-select" >
                                                                            <option value="01">01</option>
                                                                            <option value="02">02</option>
                                                                            <option value="03">03</option>
                                                                            <option value="04">04</option>
                                                                            <option value="05">05</option>
                                                                            <option value="06">06</option>
                                                                            <option value="07">07</option>
                                                                            <option value="08">08</option>
                                                                            <option value="09">09</option>
                                                                            <option value="10">10</option>
                                                                            <option value="11">11</option>
                                                                            <option value="12">12</option>
                                                                    </select>
                                <span class="bar">월</span>
                                <select name="mb_3" id="mb_3" class="deco-select" >
                                                                            <option value="01">01</option>
                                                                            <option value="02">02</option>
                                                                            <option value="03">03</option>
                                                                            <option value="04">04</option>
                                                                            <option value="05">05</option>
                                                                            <option value="06">06</option>
                                                                            <option value="07">07</option>
                                                                            <option value="08">08</option>
                                                                            <option value="09">09</option>
                                                                            <option value="10">10</option>
                                                                            <option value="11">11</option>
                                                                            <option value="12">12</option>
                                                                            <option value="13">13</option>
                                                                            <option value="14">14</option>
                                                                            <option value="15">15</option>
                                                                            <option value="16">16</option>
                                                                            <option value="17">17</option>
                                                                            <option value="18">18</option>
                                                                            <option value="19">19</option>
                                                                            <option value="20">20</option>
                                                                            <option value="21">21</option>
                                                                            <option value="22">22</option>
                                                                            <option value="23">23</option>
                                                                            <option value="24">24</option>
                                                                            <option value="25">25</option>
                                                                            <option value="26">26</option>
                                                                            <option value="27">27</option>
                                                                            <option value="28">28</option>
                                                                            <option value="29">29</option>
                                                                            <option value="30">30</option>
                                                                            <option value="31">31</option>
                                                                    </select>
                                <span class="bar">일</span>
                            </div>
                        </div>
                    </div>

                                        <div class="form-box align-top">
                        <div class="left-con">
                            <span class="f-color">*</span>주소
                        </div>
                        <div class="right-con">
                            <div class="box-adress">
                                <span class="frm_label sound_only">주소필수</span>
                                <label for="reg_mb_zip" class="sound_only">우편번호<strong class="sound_only"> 필수</strong></label>
                                <input type="text" name="mb_zip" value="" id="reg_mb_zip"  class="inp-type01 " size="5" maxlength="6" placeholder="우편번호">
                                <button type="button" class="btnset btn-type03 btn-fill-brown" onclick="win_zip('fregisterform', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr3', 'mb_addr_jibeon');">우편번호 검색</button><br>
                            </div>
                            <div class="box-adress-inp">
                                <label for="reg_mb_addr1" class="sound_only">주소<strong class="sound_only"> 필수</strong></label>
                                <input type="text" name="mb_addr1" value="" id="reg_mb_addr1"  class="inp-type01 " size="50" placeholder="기본주소"><br>
                                <label for="reg_mb_addr2" class="sound_only">상세주소</label>
                                <input type="text" name="mb_addr2" value="" id="reg_mb_addr2"  class="inp-type01 " size="50" placeholder="상세주소">
                            </div>
                            <input type="hidden" name="mb_addr3" value="">
                            <input type="hidden" name="mb_addr_jibeon" value="">
                        </div>
                    </div>
                    
                    <div class="form-box">
                        <div class="left-con">
                            <span class="f-color">*</span> 메일 수신
                        </div>
                        <div class="right-con">
                            <ul class="box-mailing">
                                <li class="chk-box type-radio">
                                    <input type="radio" name="mb_mailling" value="1" id="reg_mb_mailling1"  checked class="selec_chk">
                                    <label for="reg_mb_mailling1">예</label>
                                </li>
                                <li class="chk-box type-radio">
                                    <input type="radio" name="mb_mailling" value="0" id="reg_mb_mailling2"  checked class="selec_chk">
                                    <label for="reg_mb_mailling2">아니오</label>
                                </li>
                            </ul>
                        </div>
                    </div>

                    
                    
                    <div class="form-box">
                        <div class="left-con">
                            <span class="f-color">*</span>자동등록방지
                        </div>
                        <div class="right-con">
                            
<script>var g5_captcha_url  = "https://bxgs.co.kr/plugin/kcaptcha";</script>
<script src="https://bxgs.co.kr/plugin/kcaptcha/kcaptcha.js"></script>
<fieldset id="captcha" class="captcha">
<legend><label for="captcha_key">자동등록방지</label></legend>
<img src="https://bxgs.co.kr/plugin/kcaptcha/img/dot.gif" alt="" id="captcha_img"><input type="text" name="captcha_key" id="captcha_key"  class="captcha_box " size="6" maxlength="6">
<button type="button" id="captcha_mp3"><span></span>숫자음성듣기</button>
<button type="button" id="captcha_reload"><span></span>새로고침</button>
<span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
</fieldset>                        </div>
                    </div>
                </div>

                <div class="btn-confirm-wrap">
                    <a href="/" class="btnset btn-type04">취소</a>
                    <button type="submit" id="btn_submit" class="btnset btn-type04 btn-line-brown" accesskey="s">확인</button>
                </div>
            </form>
        </div>
    </div>
</section>






<script>
/* $(function() {
    //$("#reg_zip_find").css("display", "inline-block");

        });

// 인증체크
function cert_confirm()
{
    var val = document.fregisterform.cert_type.value;
    var type;

    switch(val) {
        case "ipin":
            type = "아이핀";
            break;
        case "hp":
            type = "휴대폰";
            break;
        default:
            return true;
    }

    if(confirm("이미 "+type+"으로 본인확인을 완료하셨습니다.\n\n이전 인증을 취소하고 다시 인증하시겠습니까?"))
        return true;
    else
        return false;
}

// submit 최종 폼체크
function fregisterform_submit(f)
{
    // 회원아이디 검사
    if (f.w.value == "") {
        var msg = reg_mb_id_check();
        if (msg) {
            alert(msg);
            f.mb_id.select();
            return false;
        }
    }

    if (f.w.value == '') {
        if (f.mb_password.value.length < 3) {
            alert('비밀번호를 3글자 이상 입력하십시오.');
            f.mb_password.focus();
            return false;
        }
    }

    if (f.mb_password.value != f.mb_password_re.value) {
        alert('비밀번호가 같지 않습니다.');
        f.mb_password_re.focus();
        return false;
    }

    if (f.mb_password.value.length > 0) {
        if (f.mb_password_re.value.length < 3) {
            alert('비밀번호를 3글자 이상 입력하십시오.');
            f.mb_password_re.focus();
            return false;
        }
    }

    // 이름 검사
    if (f.w.value=='') {
        if (f.mb_name.value.length < 1) {
            alert('이름을 입력하십시오.');
            f.mb_name.focus();
            return false;
        }
    }

    
    // E-mail 검사
    if ((f.w.value == "") || (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
        var msg = reg_mb_email_check();
        if (msg) {
            alert(msg);
            f.reg_mb_email.select();
            return false;
        }
    }

        // 휴대폰번호 체크
    var msg = reg_mb_hp_check();
    if (msg) {
        alert(msg);
        f.reg_mb_hp.select();
        return false;
    }
    
    if (typeof f.mb_icon != "undefined") {
        if (f.mb_icon.value) {
            if (!f.mb_icon.value.toLowerCase().match(/.(gif|jpe?g|png)$/i)) {
                alert("회원아이콘이 이미지 파일이 아닙니다.");
                f.mb_icon.focus();
                return false;
            }
        }
    }

    if (typeof f.mb_img != "undefined") {
        if (f.mb_img.value) {
            if (!f.mb_img.value.toLowerCase().match(/.(gif|jpe?g|png)$/i)) {
                alert("회원이미지가 이미지 파일이 아닙니다.");
                f.mb_img.focus();
                return false;
            }
        }
    }

    if (typeof(f.mb_recommend) != 'undefined' && f.mb_recommend.value) {
        if (f.mb_id.value == f.mb_recommend.value) {
            alert('본인을 추천할 수 없습니다.');
            f.mb_recommend.focus();
            return false;
        }

        var msg = reg_mb_recommend_check();
        if (msg) {
            alert(msg);
            f.mb_recommend.select();
            return false;
        }
    }

    if (!chk_captcha()) return false;

    document.getElementById("btn_submit").disabled = "disabled";

    return true;
}

var uploadFile = $('.filebox .uploadBtn');
uploadFile.on('change', function(){
    if(window.FileReader){
        var filename = $(this)[0].files[0].name;
    } else {
        var filename = $(this).val().split('/').pop().split('\\').pop();
    }
    $(this).siblings('.fileName').val(filename);
});


$("#btn-idchk").click(function(){
	var msg = reg_mb_id_check();
	if(msg == "" || msg == null){
		if(!confirm("가입할 수 있는 아이디입니다.\n현재 아이디를 사용하시겠습니까?")){
			document.getElementById("reg_mb_id").value = "";
		}
	}
	else
	{
		alert(msg);
	}
}); */

</script>    </main>
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
