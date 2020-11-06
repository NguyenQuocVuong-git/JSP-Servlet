<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<form class="form-horizontal" action='StudentsController?action=CreateStudentByAdminTT'
	method="POST">
	<fieldset>
		<div id="legend">
			<h2 style="text-align: center; color: blue;">UPDATE STUDENT</h2>
		</div>
		<div class="control-group">
			<!-- Username -->
			<label class="control-label" for="fullname">Full Name</label>
			<div class="controls">
				<input type="text" id="fullname" name="fullname" placeholder=""
					class="input-xlarge">
				<p class="help-block">Input full name</p>
			</div>
		</div>
		<div class="control-group">
			<!-- Username -->
			<label class="control-label" for="username">Username</label>
			<div class="controls">
				<input type="text" id="username" name="username" placeholder=""
					class="input-xlarge">
				<p class="help-block">Username can contain any letters or
					numbers, without spaces</p>
			</div>
		</div>
		<div class="control-group">
			<!--age -->
			<label class="control-label" for="age">Age</label>
			<div class="controls">
				<input type="text" id="age" name="age" placeholder=""
					class="input-xlarge">
				<p class="help-block">Please provide your age</p>
			</div>
		</div>
		<div class="control-group">
			<!-- Gender-->
			<label class="control-label" for="gender">Gender</label>
			<div class="controls">
				<input type="radio" name="gender" value="1"> Male<br> <input
					type="radio" name="gender" value="0"> Female<br>
			</div>
		</div>
		<div class="control-group">
			<!-- Password -->
			<label class="control-label" for="role">Role</label>
			<div class="controls">
				<input type="role" id="role" name="role" placeholder=""
					class="input-xlarge">
				<p class="help-block">Please provide role</p>
			</div>
		</div>
		<div class="control-group">
			<!-- Password -->
			<label class="control-label" for="password">Password</label>
			<div class="controls">
				<input type="password" id="password" name="password" placeholder=""
					class="input-xlarge">
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
<style>
div#legend {
	margin-left: 45%%;
}

#legend {
	border-bottom: none;
	margin-left: 5%;
	margin-bottom: 3%;
}

div.control-group {
	margin-left: 30%;
}
</style>