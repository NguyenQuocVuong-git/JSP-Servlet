<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<%-- <jsp:include page="header.jsp" /> --%>
	<h2 style="text-align: center; color: blue;">UPDATE STUDENT</h2>

	<form method="POST"
		action="StudentsController?action=editStudentsManipulation">
		<fieldset>
			<div id="legend">
				<h4 style="color: red;">${errormessage}</h4>
			</div>
			<div class="control-group">

				<label class="control-label" for="fullname">ID</label>
				<div class="controls">
					<input type="text" name="id" value="${Student.studentID}"
						readonly="readonly" class="input-xlarge" required>
				</div>
			</div>
			<div class="control-group">

				<label class="control-label" for="username">Name</label>
				<div class="controls">
					<input input type="text" name="name" value="${Student.name}"
						class="input-xlarge" required> <span id="fullName-error"
						class="error"></span>
				</div>
			</div>

			<div class="control-group">

				<label class="control-label" for="age">Age</label>
				<div class="controls">
					<input input type="text" name="age" value="${Student.age}"
						class="input-xlarge" required>
				</div>
			</div>

			<div class="control-group">

				<label class="control-label" for="gender">Gender</label>
				<div class="controls">
					<input type="radio" name="gender" value="1"> Male<br>
					<input type="radio" name="gender" value="0"> Female<br>
				</div>
			</div>
			<div class="control-group">

				<label class="control-label" for="password">Role</label>
				<div class="controls">
					<input input type="text" name="role" value="${Student.role}"
						class="input-xlarge " required>
				</div>
			</div>
			<div class="control-group">

				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<input type="text" name="password" value="${Student.password}"
						class="input-xlarge " required>
				</div>
			</div>
			<div class="control-group">
				<!-- Button -->
				<div class="controls">
					<button class="btn btn-success">Update</button>
				</div>
			</div>
		</fieldset>
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
</form>
<style>
legend {
	border-bottom: none;
}
fieldset{
	    margin-left: 40%;
}
</style>
</html>