<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Books"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Simple Web Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp" />
		<h2>Chọn sách bạn muốn mượn:</h2>
		<h4 style="color: red;">${errormessage}</h4>
		<!-- 	<form action="BookServlet" method="POST"> -->
		<form action="PageController?action=borrowsbooksManager" method="POST">
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<select class="browser-default custom-select" name="bookId">
						<option selected>Chọn sách</option>
						<c:forEach items="${listBook}" var="book">
							<option value="${book.bookID}">${book.name}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-3"></div>
			</div>
			<div class="row">
				<div class="col-3"></div>
				<div class="col-6">
					<input name="soLuong" id="soLuongMuon" type="number" min="1"
						placeholder="Nhap so luong" class="form-control">
				</div>
				<button class="btn btn-primary" type="submit">Submit</button>
				<div class="col-3"></div>
			</div>
		</form>
	</div>
	<style>
.row {
	padding-top: 20px;
}
</style>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
<style>
h2 {
	margin-left: 30%;
}

h4 {
	margin-left: 36%;
}
</style>
</html>