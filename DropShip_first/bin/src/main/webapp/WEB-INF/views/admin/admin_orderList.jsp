<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 고객 관리</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
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
                    <h1 class="mt-4">주문 현황</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 고객 주문 현황 확인 페이지입니다. <span style="color:blue;">결제 완료된 주문</span>을 눌러 배송처리를 진행해 주세요.</div>
                    </div>
                </div>
                <span style="padding-left:24px;">총 ${map.listCount}건의 주문이 있습니다.</span>
                <div class="admin_orderListDiv">
                    <table class="admin_orderListTable">
                        <colgroup>
                            <col width="10%">
                            <col width="10%">
                            <col width="45%">
                            <col width="10%">
                            <col width="15%">
                            <col width="10%">
                        </colgroup>
                        <tr id="admin_orderListTableTr">
                            <th>주문 고유번호</th>
                            <th>주문자명</th>
                            <th>주문 상품</th>
                            <th>결제 가격</th>
                            <th>주문 날짜</th>
                            <th>주문 상태</th>
                        </tr>
                        <c:forEach items="${map.list}" var="aol">
	                        <tr onClick="location.href='admin_orderView?id=${aol.id}&page=${map.page}'" style="cursor:pointer;">
	                            <td>${aol.id}</td>
	                            <td>${aol.member_name}</td>
	                            <td>${aol.work_name} || 작품ID: ${aol.work_id}</td>
	                            <td><fmt:formatNumber value="${aol.final_price}" type="number"/> 원</td>
	                            <td><fmt:formatDate value="${aol.order_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                            <c:if test="${aol.order_status == '0'}">
	                            	<td>0. 입금 확인 중</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '1'}">
	                            	<td>1. 입금 완료</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '2'}">
	                            	<td>2. 상품 준비 중</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '3'}">
	                            	<td>3. 배송 중</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '4'}">
	                            	<td>4. 배송 완료</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '5'}">
	                            	<td>5. 주문 취소</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '6'}">
	                            	<td>6. 환불 완료</td>
	                            </c:if>
	                        </tr>
                        </c:forEach>
                    </table>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="admin/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="admin/js/datatables-simple-demo.js"></script>
</body>

</html>