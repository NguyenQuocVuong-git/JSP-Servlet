<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Student Manager</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/font-awesome/css/all.min.css">
</head>
<body>
	<div class="container mt-3" class="DanhSach">
		<%@ include file="header.jsp"%>
		<h2>Trang quản Lý Mượn sách</h2>
		<table class="table table-bordered table-striped " id="example"
			cellpadding="5">
			<thead>
				<tr>
					<th>Tên học sinh</th>
					<th>Tên sách</th>
					<th>Ngày Mượn</th>
					<th>Số lượng</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${listMuon}" var="stu">
					<tr>
						<td>${stu.studentName}</td>
						<td>${stu.bookName}</td>
						<td>${stu.dateBorrows}</td>
						<td>${stu.quantity}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="two-button">
			<button type="button" class="btn btn-secondary btn-lg btn-block">EXPORT
				EXCEL</button>
		</div>
	</div>
	<!-- Footer -->
	<!-- Footer -->
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
	margin-left: 33%;
	margin-top: 1%;
	margin-bottom: 2%;
}
</style>
</html>