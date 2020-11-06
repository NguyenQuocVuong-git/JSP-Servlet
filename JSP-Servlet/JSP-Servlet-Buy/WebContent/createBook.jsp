<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Book list</title>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<!------ Include the above in your HEAD tag ---------->
<html>
<body>
	<form name='myForm' class="form-horizontal" action='BookController?action=createBook' method="POST" >
		<fieldset>
			<div id="legend">
				<h2 style=" color: blue;">UPDATE BOOK</h2>
			</div>
			<div class="control-group">
				<!-- Username -->
				<label class="control-label" for="name">Tên sách</label>
				<div class="controls">
					<input type="text" id="name" name="nameBook" placeholder=""
						class="input-xlarge" required>
				</div>
			</div>
			<div class="control-group">
				<!-- Username -->
				<label class="control-label" for="totalPage">Tổng số trang</label>
				<div class="controls">
					<input type="text" id="totalPage" name="totalPage" placeholder=""
						class="input-xlarge" required>
				</div>
			</div>

			<div class="control-group">
				<!--age -->
				<label class="control-label" for="type">Loại sách</label>
				<div class="controls">
					<input type="text" id="type" name="type" placeholder=""
						class="input-xlarge" required>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="quantity">Tổng số sách</label>
				<div class="controls">
					<input type="text" id="quantity" name="quantity" placeholder=""
						class="input-xlarge " required>
				</div>
			</div>
				<!-- Button -->
				<div class="controls">
					<button class="btn btn-success">UPDATE</button>
				</div>
			</div>
		</fieldset>
	</form>
	<script
		src='https://cdn.jsdelivr.net/g/lodash@4(lodash.min.js+lodash.fp.min.js)'></script>
	<script scr="./WebContent/JS/Validate.js"></script>
</body>
</html>
<style>
div#legend {
	margin-left: 50%;
}

legend {
	border-bottom: none;
}

div.control-group {
	margin-left: 30%;
}

h4 {
	margin-left: -142px;
}

h2 {
	margin-left: -15%;
	margin-bottom: 5%;
}
</style>
