<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<div class="container">
	<div class="row">
		<aside class="col-sm-4">
			<div class="card">
				<article class="card-body">
					<!-- <a href="PageController?action=loginTT" class="float-right btn btn-outline-primary">Sign up</a> -->
					<a href="PageController?action=createStudent" class="float-right btn btn-outline-primary">Sign up</a>
					<h4 class="card-title mb-4 mt-1">Sign in</h4>
					<h4 style="color: red;">${errormessage}</h4>
					<form action="PageController?action=loginTT" method=POST>
						<div class="form-group">
							<label>Your User Name</label> <input name="user" class="form-control"
								placeholder="Input User Name" type="text" required="required">
						</div>
						<div class="form-group">
							<a class="float-right" href="#">Forgot?</a> <label>Your
								password</label> <input class="form-control" name="pass" placeholder="Input Password"
								type="password" required="required">
						</div>
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox"> Save password
								</label>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">
								Login</button>
						</div>
					</form>
				</article>
			</div>
			<!-- card.// -->
		</aside>
		</form>
		</article>
	</div>
</div>
</div>
<br>
<br>
<br>
<article class="bg-secondary mb-3">
	<div class="card-body text-center"></div>
	<br> <br> <br>
</article>
<style>
.container {
    margin-top: 2%;
    margin-left: 36%;
}
</style>