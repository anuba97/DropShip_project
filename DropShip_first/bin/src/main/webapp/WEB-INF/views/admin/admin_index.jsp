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
    <title>DropShip - ADMIN</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css?after" rel="stylesheet" />
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
                    <h1 class="mt-4">DropShip 관리자 페이지</h1>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-area me-1"></i>
                                    DropShip 방문자수
                                </div>
                                <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-bar me-1"></i>
                                    DropShip 주문건수
                                </div>
                                <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            DropShip 가입자
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>회원 ID</th>
                                        <th>회원 이름</th>
                                        <th>회원 E-mail</th>
                                        <th>가입일</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>회원 ID</th>
                                        <th>회원 이름</th>
                                        <th>회원 E-mail</th>
                                        <th>가입일</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                    <tr>
                                        <td>abcd</td>
                                        <td>홍길동</td>
                                        <td>abcd@abcd.com</td>
                                        <td>2023.03.15</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Team DropShip ADMIN
                            Project</div>
                        <div></div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="admin/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="admin/assets/demo/chart-area-demo.js"></script>
    <script src="admin/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="admin/js/datatables-simple-demo.js"></script>
</body>

</html>