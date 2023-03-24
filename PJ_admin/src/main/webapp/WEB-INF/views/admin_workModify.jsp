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
<title>DropShip Admin - 작품 관리</title>
<link rel="shortcut icon" href="/img/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
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
					<h1 class="mt-4">작품 관리</h1>
					<div class="card mb-4">
						<div class="card-body">DropShip 작품을 관리하는 메뉴입니다. 작품을 등록, 수정, 삭제할 수 있습니다..</div>
					</div>
				</div>
				<form action="admin_memberAdd" name="admin_memberAdd" method="post">
					<table class="admin_memberAddTableDiv">
<%-- 						<colgroup> --%>
<%-- 							<col width="30%"> --%>
<%-- 							<col width="70%"> --%>
<%-- 						</colgroup> --%>
						<tr>
							<th>작품 이름</th>
							<td>
								<input type="text" name="work_name" id="work_name" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>아티스트 고유번호</th>
							<td>
								<input type="text" name="artist_id" id="artist_id" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>장르 이름</th>
							<td>
								<input type="text" name="work_genre_name" id="work_genre_name" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>주제 이름</th>
							<td>
								<input type="text" name="work_subject_name" id="work_subject_name" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>작품 이미지 url</th>
							<td>
								<input type="url" name="work_img_url" id="work_img_url" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>작품 설명</th>
							<td>
								<textarea id="noticeContent" name="noticeContent" cols="50" rows="10" style="width:100%;" required></textarea>
							</td>
						</tr>
						<tr>
							<th>베스트 체크</th>
							<td>
								<input type="radio" id="true" name="work_isBest" value="true"> 
								<label for="true">사용</label> 
								<input type="radio" id="false" name="work_isBest" value="false">
								<label for="false">정지</label>
							</td>
						</tr>
						<tr>
							<th>작품 원가</th>
							<td>
								<input type="text" name="work_price" id="work_price" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>전시 위치</th>
							<td>
								<input type="url" name="work_dp" id="work_dp" style="width: 100%;" required>
							</td>
						</tr>
						<tr>
							<th>작품 노출 상태</th>
							<td>
								<input type="radio" id="true" name="admin_ban" value="true"> 
								<label for="true">사용</label> 
								<input type="radio" id="false" name="admin_ban" value="false">
								<label for="false">정지</label>
							</td>
						</tr>
					</table><br>
					<div class="admin_noticeBoard_div">
						<button type="button" class="admin_noticeBoard_button" onClick="location.href=''" style="margin: 0 0 0 130px; color:red;">수정 완료</button>
						<button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_workList'" style="margin: 0 auto;">작품 리스트</button>
					</div>
				</form>
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
