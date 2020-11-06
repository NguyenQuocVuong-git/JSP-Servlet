
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
	<form class="form-horizontal" action='PageController?action=createStudentTT' method="POST">
		<fieldset>
			<div id="legend">
				<legend class="">Register</legend>
				<h4 style="color: red;">${errormessage}</h4>
			</div>
			<div class="control-group">
				<!-- Username -->
				<label class="control-label" for="fullname">Full Name</label>
				<div class="controls">
					<input type="text" id="fullname" name="fullname" placeholder=""
						class="input-xlarge" required>
					<p class="help-block">Input full name</p>
				</div>
			</div>
			<div class="control-group">
				<!-- Username -->
				<label class="control-label" for="username">Username</label>
				<div class="controls">
					<input type="text" id="username" name="username" placeholder=""
						class="input-xlarge" required>
					<p class="help-block">Username can contain any letters or
						numbers, without spaces</p>
					<span id="fullName-error" class="error"></span>
				</div>
			</div>

			<div class="control-group">
				<!--age -->
				<label class="control-label" for="age">Age</label>
				<div class="controls">
					<input type="text" id="age" name="age" placeholder=""
						class="input-xlarge" required>
					<p class="help-block">Please provide your age</p>
				</div>
			</div>
			<div class="control-group">
				<!-- Gender-->
				<label class="control-label" for="gender">Gender</label>
				<div class="controls">
					<input type="radio" name="gender" value="1"> Male<br>
					<input type="radio" name="gender" value="0"> Female<br>
				</div>
			</div>

			<div class="control-group">
				<!-- Password -->
				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<input type="password" id="password" name="password" placeholder=""
						class="input-xlarge " required>
					<p class="help-block">Please provide password</p>
				</div>
			</div>
			<div class="control-group">
				<!-- Button -->
				<div class="controls">
					<button class="btn btn-success">Register</button>
				</div>
			</div>
		</fieldset>
	</form>
	<script src='https://cdn.jsdelivr.net/g/lodash@4(lodash.min.js+lodash.fp.min.js)'></script>
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
.error{
	color:red;
}
</style>
