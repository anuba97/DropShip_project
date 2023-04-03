<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 주문 상세</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script>

    </script>
</head>

<body class="sb-nav-fixed">
    <%-- 	<c:if test="${result == 0}"> --%>
    <!-- 		<script> -->
    // alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
    // location.href="admin_login";
    <!-- 			</script> -->
    <%-- 	</c:if> --%>
    <%-- 	<c:if test="${result == 1}"> --%>
    <!-- 		<script> -->
    // alert("로그인되었습니다");
    <!-- 			</script> -->
    <%-- 	</c:if> --%>
    <%-- 	<c:if test="${sessionAdminLoginId==null}"> --%>
    <!-- 		<script> -->
    // alert("관리자만 접근할 수 있습니다!");
    // location.href="admin_login";
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
                    <h1 class="mt-4">주문 현황</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 고객 주문 현황 상세 확인 페이지입니다. 주문 상태에 따라 진행해 주세요.</div>
                    </div>
                </div>
                <form action="order_condition" name="order_condition" method="post">
                    <table class="admin_customerTable">
                        <colgroup>
                            <col width="30%">
                            <col width="70%">
                        </colgroup>
                        <tr>
                            <th>주문 고유번호</th>
                            <td>
                                member_id
                            </td>
                        </tr>
                        <tr>
                            <th>주문자 아이디</th>
                            <td>
                                id
                            </td>
                        </tr>
                        <tr>
                            <th>주문자</th>
                            <td>
                                name
                            </td>
                        </tr>
                        <tr>
                            <th>주문 상품</th>
                            <td>
                                work_name
                            </td>
                        </tr>
                        <tr>
                            <th>주문 옵션</th>
                            <td>
                                Option
                            </td>
                        </tr>
                        <tr>
                            <th>결제 금액</th>
                            <td>
                                final_price
                            </td>
                        </tr>
                        <tr>
                            <th>주문 날짜</th>
                            <td>
                                order_date
                            </td>
                        </tr>
                        <tr>
                            <th>배송지 주소</th>
                            <td>
                                delivery_address
                            </td>
                        </tr>
                        <tr>
                            <th>받는 사람 이름</th>
                            <td>
                                delivery_name
                            </td>
                        </tr>
                        <tr>
                            <th>받는 사람 휴대폰번호</th>
                            <td>
                                delivery_phone
                            </td>
                        </tr>
                        <tr>
                            <th>배송 고유번호(송장)</th>
                            <td>
                                delivery_id
                            </td>
                        </tr>
                        <tr>
                            <th>처리 상태</th>
                            <td>
                                <select name="order_status" id="order_status">
                                    <option value="0">입금 확인 중</option>
                                    <option value="1">입금 완료</option>
                                    <option value="2">상품 준비 중</option>
                                    <option value="3">배송 중</option>
                                    <option value="4">배송 완료</option>
                                    <option value="5">주문 취소</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </form><br>
                <div class="admin_noticeBoard_div">
                    <button type="button" class="admin_noticeBoard_button" onClick="location.href=''" style="margin: 0 0 0 180px; color:red;">주문 수정</button>
                    <button type="button" class="admin_noticeBoard_button" onClick="location.href='admin_orderList'" style="margin: 0 auto;">주문 리스트</button>
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