<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Student Manager</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container mt-3" class="DanhSach">
	<jsp:include page="header.jsp" />
		<h2>Trang quản lý sách</h2>
		<table class="table table-bordered table-striped " id="example"
			cellpadding="5">
			<thead>
				<tr>
					<th>Mã Sách</th>
					<th>Tên sách</th>
					<th>Tổng Số Trang</th>
					<th>Loại sách</th>
					<th>Số Lượng sách</th>
					<th>Số sách còn lại trong kho</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${listBooks}" var="book">
					<tr>
						<td>${book.bookID}</td>
						<td>${book.name}</td>
						<td>${book.totalPage}</td>
						<td>${book.type}</td>
						<td>${book.quantity}</td>
						<td>
							<div class="dropdown">
								<button type="button" class="btn btn-primary dropdown-toggle"
									data-toggle="dropdown">Option</button>
								<div class="dropdown-menu">
									<a class="dropdown-item"
										href="BookController?action=editbook&idBooks=${book.bookID}">Edit</a> <a
										class="dropdown-item"
										href="BookController?action=deleteBook&idBooks=${book.bookID}">Delete</a>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="two-button">
		<button type="button" class="btn btn-primary btn-lg btn-block" ><a href="BookController?action=redirectCreateBook">ADD NEW BOOK</a></button>
		<button type="button" class="btn btn-secondary btn-lg btn-block">EXPORT EXCEL</button>
		</div>
	</div>
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
    margin-left: 36%;
    padding-bottom: 2%;
    margin= 1%;
}
a{
	color:white;
}
</style>
</html>