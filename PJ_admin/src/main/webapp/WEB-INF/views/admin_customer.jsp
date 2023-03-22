<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>DropShip Admin - 관리자 추가</title>
<link rel="shortcut icon" href="/img/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script>
 
</script>
</head>
<body class="sb-nav-fixed">
<%-- 	<c:if test="${result == 0}"> --%>
<!-- 		<script> -->
// 				alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
// 				location.href="admin_login";
<!-- 			</script> -->
<%-- 	</c:if> --%>
<%-- 	<c:if test="${result == 1}"> --%>
<!-- 		<script> -->
// 				alert("로그인되었습니다");
<!-- 			</script> -->
<%-- 	</c:if> --%>
<%-- 	<c:if test="${sessionAdminId==null}"> --%>
<!-- 		<script> -->
// 				alert("관리자만 접근할 수 있습니다!");
// 				location.href="admin_login";
<!-- 			</script> -->
<%-- 	</c:if> --%>
	<!-- navBar 부분 시작 -->
		<%@ include file ="include/navBar.jsp" %>
	<!-- navBar 부분 끝 -->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<!-- sideMenu 부분 시작 -->
			<%@ include file ="include/sideMenu.jsp" %>
			<!-- sideMenu 부분 끝 -->
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">고객 관리</h1>
					<div class="card mb-4">
						<div class="card-body">고객 정보를 확인하는 페이지입니다.</div>
					</div>
				</div>
					<table class="admin_customerTable">
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tr>
							<th>회원 고유번호</th>
							<td>
								id
							</td>
						</tr>
						<tr>
							<th>회원 로그인 아이디</th>
							<td>
								m_login_id
							</td>
						</tr>
						<tr>
							<th>회원 이름</th>
							<td>
								m_name
							</td>
						</tr>
						<tr>
							<th>회원 이메일</th>
							<td>
								m_email
							</td>
						</tr>
						<tr>
							<th>회원 전화번호</th>
							<td>
								m_phone
							</td>
						</tr>
						<tr>
							<th>회원 생년월일</th>
							<td>
								m_birth
							</td>
						</tr>
						<tr>
							<th>회원 우편번호</th>
							<td>
								m_zip
							</td>
						</tr>
						<tr>
							<th>회원 도로명주소</th>
							<td>
								m_road
							</td>
						</tr>
						<tr>
							<th>회원 상세주소</th>
							<td>
								m_addr
							</td>
						</tr>
						<tr>
							<th>회원 닉네임</th>
							<td>
								m_nName
							</td>
						</tr>
						<tr>
							<th>회원 가입일</th>
							<td>
								m_reg_date
							</td>
						</tr>
						<tr>
							<th>최근 주문 내역</th>
							<td>
								Order_Member id
							</td>
						</tr>
					</table>
					<div class="button-wrapper">
						<a href="admin_customerList"><button type="button">고객 리스트</button></a>
					</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Team DropShip ADMIN Project</div>
						<div></div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
