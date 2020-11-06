<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
	
<title>Sign Up</title>
    <jsp:include page="../common/head.jsp"/>

    <link rel="stylesheet" href="<c:url value='/css/login.css'/> ">
</head>
<body>
 	<header class="container-fluid">
		<div class="container">
			<div class="main-logo">JAVA PILOT PROJECT</div>
		</div>
	</header>

	<div class="container-fluid">
		<div class="container form-area">
			<div class="signup">
				<c:if test="${not empty errMessage}">
					<div class="message-area">
						<div class="err-message-invalid">${errMessage}</div>
					</div>
				</c:if>
				<form action="/signup" id="userInfoForm" role="form" enctype="multipart/form-data" class="signup-form" autocomplete="off" method="POST">
					<h2 class="signup-heading">Register New User</h2>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" id="userName" name="userName"
								class="form-input" placeholder="Username (*)" required>
						</div>
						<div class="form-group">
							<input type="password" id="password" name="password" 
								class="form-input" placeholder="Password (*)" required>
						</div>
						<div class="form-group">
							<input type="password" id="rePassword" name="rePassword"
								class="form-input" placeholder="Re-type Password (*)" required>
						</div>
						<div class="form-group">
							<button type="submit" class="form-submit" id="regisBtn">
								<span class="form-submit-text">Register</span> <i
									class="fa fa-long-arrow-right form-submit-icon"></i>
							</button>
						</div>
						<hr>
						<p id="askToSwitchText">
								Or
						</p>
						<div class="form-group">
							<a href="/login" class="btn form-submit switch-sign-link switch-sign-link--underline">
							<span class="form-submit-text">Back to Login</span> 
						</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
	
	<script src="<c:url value='/js/login.js'/>"></script>
</body>
</html>