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
		
		<h2>kết quả</h2>
		<h4 style="color: red;">${errormessage}</h4>
		<table class="table table-bordered table-striped " id="example"
			cellpadding="5">
			<thead>
				<tr>
					<th>Book ID</th>
					<th>Tên sách</th>
					<th>Ngày Mượn</th>
					<th>Students ID</th>
					<th>Tên Học Sinh</th>
					<th>Số lượng</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${listHBook}" var="book">
					<tr>
						<td>${book.bookID}</td>
						<td>${book.nameBook}</td>
						<td>${book.bookDate}</td>
						<td>${book.studentID}</td>
						<td>${book.nameStudents}</td>
						<td>${book.quantity}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
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