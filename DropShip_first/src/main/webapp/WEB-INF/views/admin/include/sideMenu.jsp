<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
<div class="sb-sidenav-menu">
	<div class="nav">
		<!-- 슈퍼 어드민만 접근할 수 있도록 해야하는 단일 메뉴 -->
		<c:if test="${sessionSuperAdmin == 1}">
			<div class="sb-sidenav-menu-heading">
				<a href="admin_memberList">관리자 설정</a>
			</div>
		</c:if>
		<!-- 슈퍼 어드민만 접근할 수 있도록 해야하는 단일 메뉴 -->
		<div class="sb-sidenav-menu-heading">사이트 관리</div>
			<a class="nav-link collapsed" href="dropship_memberList">
				<div class="sb-nav-link-icon"></div> 고객 관리
			</a>
			<a class="nav-link collapsed" data-bs-target="#collapseLayouts" aria-expanded="true" aria-controls="collapseLayouts">
                <div class="sb-nav-link-icon"></div><span id="bigTitle">주문 관리 &nabla;</span>
				<div class="sb-sidenav-collapse-arrow"></div>
			</a>
			<div class="collapse show" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                <c:set var="statusSet" value="false"/>
				<c:set var="allStatusGreater" value="true"/>
				<c:forEach items="${order.list}" var="order">
				    <c:if test="${order.order_status le 0}">
				        <c:set var="statusSet" value="true"/>
				        <c:set var="allStatusGreater" value="false"/>
				    </c:if>
				</c:forEach>
				<c:if test="${statusSet}">
				    <a class="nav-link" href="admin_orderList">주문 현황 🛒</a>
				</c:if>
				<c:if test="${allStatusGreater}">
				    <a class="nav-link" href="admin_orderList">주문 현황</a>
				</c:if>
				                
<%--                 <c:forEach items="${order.list}" var="order"> --%>
<%--                 	<c:if test="${order.order_status eq '0'}"> --%>
<!--                     	<a class="nav-link" href="admin_orderList">주문 현황 🛒</a> -->
<%--                     </c:if> --%>
<%--                 	<c:if test="${order.order_status gt '0'}"> --%>
<!--                     	<a class="nav-link" href="admin_orderList">주문 현황</a> -->
<%--                     </c:if> --%>
<%--                 </c:forEach>     --%>
                    <a class="nav-link" href="admin_printingList">인화주문 관리</a>
                </nav>
            </div>
				<a class="nav-link collapsed" data-bs-target="#collapseLayouts" aria-expanded="true" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"></div><span id="bigTitle">게시판 관리 &nabla;</span>
					<div class="sb-sidenav-collapse-arrow"></div>
				</a>
			<div class="collapse show" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="admin_noticeBoardList">공지 게시판</a>
                    <a class="nav-link" href="admin_eventBoardList">이벤트 게시판</a>
                    <a class="nav-link" href="admin_freeBoardList">일반 게시판</a>
                </nav>
            </div>
		<div class="sb-sidenav-menu-heading"> 작품&작가 관리</div>
			<a class="nav-link collapsed" href="admin_workList">
				<div class="sb-nav-link-icon"></div> 작품 관리
			</a> 
			<a class="nav-link collapsed" href="admin_artistList">
				<div class="sb-nav-link-icon"></div> 작가 관리
			</a>
		<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
		</div>
	</div>
	<div class="sb-sidenav-footer">
		<div class="small">${sessionAdminName} 님</div>
	</div>
</nav>