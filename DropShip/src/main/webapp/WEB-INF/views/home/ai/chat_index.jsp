<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<title>ChatGPT & Spring demo</title>
	<link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css" />
</head>
<body>
	<main role="main" class="container">
		<div class="starter-template">
			<h1>지피티 선생님<br/>지피티 선생님</h1>
			<h2>Send message to ChatGPT</h2>
			<form action="<%= request.getContextPath() %>" method="post">
<%-- 			<form action="<%= request.getContextPath() %>/" method="post"> 원래 이렇게 action맨 뒤에 슬래쉬(/) 있었음 --%>
			    <fieldset>
			        <div class="form-group">
			            <input type="text" name="prompt" value="${request}" required autofocus/>
			        </div>
			        <div class="row">
			            <input type="submit" value="Send" />
			        </div>
			    </fieldset>
			</form>
			<c:if test="${response ne null}">
				<h2>ChatGPT responded with:</h2>
				<p>${response}</p>
			</c:if>
		</div>
	</main>
</body>
</html>