<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>
			<form method="POST" action="PageController?action=searchByInputEnforcement">
			<h4 style="color: red;">${errormessage}</h4>
				<div class="form-group">
					<label for="InputIDBOOK">Enter ID books</label> <input type="number"
						class="form-control" id="exampleInputEmail1"
						aria-describedby="IdBooks" placeholder="Enter ID BOOK"
						name="IdBook">
				</div>
				<div class="form-group">
					<label for="InputNameBook">Enter Name books</label> <input
						type="text" class="form-control" id="exampleInputPassword1"
						placeholder="Enter Name books" name="bookName">
				</div>
				<div class="form-group">
					<label for="InputNameStudents">Enter Name Students</label> <input
						type="text" class="form-control" id="exampleInputPassword1"
						placeholder="Enter Name books" name="nameStudents">
				</div>
				<div class="form-group">
					<label for="InputIDBook">Enter ID Students</label> <input
						type="number" class="form-control" id="exampleInputPassword1"
						placeholder="Enter ID Students" name="IdStudents">
				</div>
				<div class="form-group">
					<label for="InputQuantity">Enter Quantity</label> <input type="text"
						class="form-control" id="exampleInputPassword1"
						placeholder="Enter Quantity" name="quantity">
				</div>
				<div class="form-group row">
					<label for="example-date-input" class="col-2 col-form-label">Date</label>
					<div class="col-10">
						<input class="form-control" type="date"
							id="example-date-input" name="date">
					</div>
				</div>
				
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
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
</html>