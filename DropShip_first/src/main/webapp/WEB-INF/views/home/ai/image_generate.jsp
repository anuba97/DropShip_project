<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">

<c:if test="${sessionMember_id == null}">
	<script>
      alert("로그인 후 사용 해주시기 바랍니다");
      location.href = "login";
      
      return false;
	</script>
</c:if>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <title>AI 그림 생성</title>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
    <link rel="stylesheet" href="../../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script>
    <script src="../home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
    <script src="../home/js/common3816.js?ver=210618"></script>
    <script src="../home/js/wrest3816.js?ver=210618"></script>
    <script src="../home/js/placeholders.min3816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/aos3816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
    <script src="../home/js/modernizr.custom.701113816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
    <script src="../home/theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
    <style>
    	#btn_generate {
		    width: 550px;
		    margin: 50px auto;
		    text-align: center;
		}
		#generated_work_show {
		    margin: 0 auto;
		    text-align: center;
		}
		.btnwrap button {
		  margin-right: 35px;
		}
    </style>
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

            <section class="sub-tit-wrap" data-aos="fade-up">
                <div class="maxinner">
                    <span class="sub-txt">DALL-E2 AI를 사용하여 그림을 직접 만들어보세요</span>
                    <h2 class="sub-tit">AI 그림생성</h2>
                </div>
            </section>

            <section id="board-write" class="board">
                <div class="maxinner">
                    <!-- ai form태그 -->
                    <form action="<c:url value='/ai/image_generate' />" method="post">
                        <input type="hidden" name="member_id" value="${sessionMember_id}">

                        <div class="form-box-wrap">

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>제목</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="generate_work_name" id="generate_work_name" id="qa_subject"  required 
                                    class="inp-type01 required" maxlength="255" placeholder="제목">
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>프롬프트</label>
                                </div>
                                <div class="right-con">
						            <input type="text" name="prompt" value="${request}" required autofocus id="qa_subject" value="${prompt}" required 
						            class="inp-type01 required" maxlength="255" placeholder="제작할 이미지를 적어주세요"/><!-- name="prompt" 바꾸면 안됨 -->
						        </div>
                            </div>

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_content"><span class="f-color">*</span>작품 설명</label>
                                </div>
                                <div class="right-con">
                                    <div class="wr_content">
                                        <span class="sound_only">웹에디터 시작</span>
                                        	<textarea id="qa_content" id="generate_work_content" name="generate_work_content" class="textarea-type01" 
                                        	maxlength="65536" style="width:100%;height:300px" placeholder="제작할 이미지의 내용을 입력해주세요.">${generate_work_content}</textarea>
                                        <span class="sound_only">웹 에디터 끝</span> 
                                    </div>
                                </div>
                            </div>
                            <div id="btn_generate">
						        <button type="submit" class="btnset btn-type01"  accesskey="s">
	                                <svg height="50" width="180">
	                                    <rect height="50" width="180"></rect>
	                                </svg>
	                                <span>그림 생성하기</span>
	                            </button>
	                        </div>
                        </div>
					</form>
						
					<div id="generated_work_show">
						<!-- 이미지가 존재하면  -->
	                    <c:if test="${imageUri ne null}">
						    <h1>제목 : ${generate_work_name} </h1>	<!-- input으로 입력했던 제목 넣기 -->
						    <h2>작가 : ${member_name} </h2>
						    <h2>사용한 프롬프트 : ${prompt} </h2>
						    <h2>작품 설명 : ${generate_work_content} </h2>
						    <br>
						    <img src="${imageUri}" alt="DALL-E가 그린 그림" />
						    
		                    <!-- 하단 버튼들 -->
		                    <div class="btnwrap">
		                        <button type="button" id="btn_submit" class="btnset btn-type01" onclick="buyBtn()" accesskey="s">
		                            <svg height="50" width="180">
		                                <rect height="50" width="180"></rect>
		                            </svg>
		                            <span>바로 구매하기</span>
		                        </button>
		                        <button type="button" id="btn_submit" class="btnset btn-type01" onclick="submitWorkBtn()" accesskey="s">
		                            <svg height="50" width="180">
		                                <rect height="50" width="180"></rect>
		                            </svg>
		                            <span>작품 등록하기</span>
		                        </button>
			                    <button type="button" id="btn_submit" class="btnset btn-type01" onclick="backBtn()" accesskey="s">
			                        <svg height="50" width="180">
			                            <rect height="50" width="180"></rect>
			                        </svg>
			                        <span>뒤로 가기</span>
			                    </button>
		                    </div>
						</c:if>
                    <div>
                    
               		<!-- 이미지가 존재하지 않으면  -->
                    <c:if test="${imageUri == null}">
	                    <button type="button" id="btn_submit" class="btnset btn-type01" onclick="backBtn()" accesskey="s">
	                        <svg height="50" width="180">
	                            <rect height="50" width="180"></rect>
	                        </svg>
	                        <span>뒤로 가기</span>
	                    </button>
                    </c:if>
                    
                    <script>
                    	buyBtn() {
                    		if()
                    	}// buyBtn()
                    </script>
                    
                    
                    
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


    <script src="https://bxgs.co.kr/js/sns.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
    <script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>
</body>

</html>