$(document).ready(function() {
	
	var $userInfoForm = $('#userInfoForm');
	
	//Validate Form
	$('#regisBtn').click( function(e) {
		e.preventDefault;
		$userInfoForm.validate({
			ignore : [],
			rules: {
				userName:  {
					required: true,
					minlength: 6,
					maxlength: 20
				},
				password: "required",
				rePassword: {
					required: true,
					equalTo: "#password"
				}
			},
			meassages: {
				userName:  {
					required: "Please enter your username",
					minlength: "Username must consist of at least 6 charaters",
					maxlength: "Username must be not longer than 20 characters"
				},
				password: "Please enter your password",
				rePassword: {
					required: "Please retype your password",
					equalTo: "Password should be the same as above"
				}
			},
			errorElement : "div",
			errorClass : "err-message-invalid"
		});
	});
	
});