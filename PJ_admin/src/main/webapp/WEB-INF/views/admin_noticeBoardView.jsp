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
<title>DropShip Admin - 공지</title>
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
					<h1 class="mt-4">공지 관리</h1>
					<div class="card mb-4">
						<div class="card-body">DropShip 공지 게시판을 관리하는 메뉴입니다. 공지 게시판의 글을 확인하고 관리하세요.</div>
					</div>
				</div>
				<div>
					<table class="admin_noticeBoardAdd">
						<form action="admin_noticeBoardAdd" method="post" enctype="multipart/form-data">
								<colgroup>
									<col width="25%">
									<col width="75%">
								</colgroup>
								<tr>
									<th><label for="noticeTitle">공지 제목</label></th>
									<td><input type="text" id="noticeTitle" name="noticeTitle" style="width:100%;" required><br></td>
								</tr>
								<tr>
									<th><label for="noticeContent">공지 내용</label></th>
									<td>
										<textarea id="noticeContent" name="noticeContent" cols="50" rows="10" style="width:100%;" required></textarea>
									</td>
									
								</tr>
								<tr>
									<th><label for="eventFile">첨부 파일(이미지)</label></th>
									<td><input type="file" id="eventFile" name="eventFile" style="width:100%;"></td>
								</tr>
								<tr>
									<th><label for="eventLink">첨부 링크</label></th>
									<td><input type="text" id="eventLink" name="eventLink" style="width:100%;"></td>
								</tr>	
						</form>
					</table><br>
					<div class="admin_noticeBoard_div">
						<button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_noticeBoardModify'" style="margin: 0 0 0 500px; color:red;">공지 수정</button>
						<button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_noticeBoardList'" style="margin: 0 auto;">공지 리스트</button>
					</div>
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
