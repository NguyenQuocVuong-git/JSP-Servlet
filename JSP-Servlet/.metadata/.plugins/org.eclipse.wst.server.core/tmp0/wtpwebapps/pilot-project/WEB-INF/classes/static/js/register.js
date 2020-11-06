$(document).ready(function() {

	renderGoogleToken();
	jQuery.validator.addMethod('lettersonly', function(value, element) {
		return this.optional(element) || /^[- a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềếéểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+$/i.test(value);
	}, "Letters and spaces only please");
	jQuery.validator.addMethod('username', function(value, element) {
		return this.optional(element) || /^[a-z0-9_-]+$/i.test(value);
	}, "Username format");
	jQuery.validator.addMethod('passwordChars', function(value, element) {
		return this.optional(element) || /^.*(?=.*\d)(?=.*[a-zA-Z]).*$/i.test(value);
	}, "Password format");

	// Validate and Submit Register Form
	$registerForm = $("#registerForm");
	$registerForm.submit(function(event) {
		event.preventDefault();
	}).validate({
		rules: {
			username: {
				required: true,
				minlength: 5,
				maxlength: 20,
				username: true
			},
			newPassword: {
				required: true,
				minlength: 6,
				maxlength: 20,
				passwordChars: true
			},
			confirmPassword: {
				required: true,
				minlength: 6,
				maxlength: 20,
				equalTo: "#newPassword",
				passwordChars: true
			},
			email: {
				required: true,
				email: true
			},
			fullName: {
				required: true,
				maxlength: 50,
				lettersonly: true
			},
			agreeWithTerm: {
				required: true
			}
		},
		messages: {
			username: {
				required: "Vui lòng nhập Tên Truy Cập",
				minlength: "Vui lòng nhập tối thiểu 5 kí tự",
				maxlength: "Vui lòng nhập tối đa 20 kí tự",
				username: "Vui lòng không nhập kí tự đặc biệt"
			},
			newPassword: {
				required: "Vui lòng nhập Mật Khẩu",
				minlength: "Vui lòng nhập tối thiểu 6 kí tự",
				maxlength: "Vui lòng nhập tối đa 20 kí tự",
				passwordChars: "Vui lòng nhập Mật Khẩu bao gồm cả chữ (a-z) và số (0-9)"
			},
			confirmPassword: {
				required: "Vui lòng nhập Mật Khẩu Xác Nhận",
				equalTo: "Xác nhận Mật Khẩu chưa đúng",
				minlength: "Vui lòng nhập tối thiểu 6 kí tự",
				maxlength: "Vui lòng nhập tối đa 20 kí tự",
				passwordChars: "Vui lòng nhập Mật Khẩu bao gồm cả chữ (a-z) và số (0-9)"
			},
			email: {
				required: "Vui lòng nhập Email",
				email: "Email chưa đúng định dạng"
			},
			fullName: {
				required: "Vui lòng nhập Họ Và Tên",
				lettersonly: "Vui lòng nhập Họ Và Tên chỉ bao gồm các chữ cái",
				maxlength: "Vui lòng nhập tối đa 50 kí tự"
			},
			agreeWithTerm: {
				required: "Vui lòng tham khoản các Điều Khoản Dịch Vụ"
			}
		},
		errorElement: "div",
		errorClass: "error-message-invalid",
		submitHandler : function() {

			var formData = new FormData($registerForm[0]);
			var data = convertFormDataToJson(formData);
			$.ajax({
				url: '/dang-ki-tai-khoan',
				type: 'POST',
				dataType: 'json',
				contentType: 'application/json',
				data: data,
				success: function (responseData) {
					if (responseData.responseCode == 100) {
						alert("Đăng Kí Tài Khoản Thành Công");
						window.history.back();
					} else {
						showMsgOnForm($(".main-input-group"), responseData.responseMsg, false);
						renderGoogleToken();
					}
				},
			});
		}
	});
});

/**
 * Render Google Recaptcha 3 Token
 */
function renderGoogleToken() {
	var googleDataSiteKey = $("#googleDataSiteKey").val();
	grecaptcha.ready(function() {
		grecaptcha.execute(googleDataSiteKey, { action : 'dangki'})
			.then(function(token) {
				$("#recapchaToken").val(token);
			}
		);
	});
}