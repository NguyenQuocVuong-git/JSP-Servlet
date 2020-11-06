$(document).ready(function() {
	
	// Add "active" class for link in Header
	var pathName = window.location.pathname;
	$("header .nav-link").each(function() {
		$this = $(this);
		if (pathName.includes($this.attr("href"))) {
			$this.parent().addClass("active");
		}
	});

	// Upload image preview
	$('input.upload-image').on('change', function() {
		var url = window.URL || window.webkitURL;
		var file = this.files[0];
		var fileUrl;
		var $parent = $(this).parent();
		if (file) {
			fileUrl = url.createObjectURL(file);
			$parent.find(".error-message-invalid").removeClass("error-message-invalid");
		} else {
			var oldImagePath = $parent.find(".old-img").val();
			if (oldImagePath) {
				fileUrl = oldImagePath;
			} else {
				fileUrl = "/images/image-demo.png";
			}
		}
		$parent.find('.preview-image-upload img').attr('src', fileUrl);
	});
	
	//dùng lightbox mở ảnh full-size
	//tất cả các thẻ a nào có data-toggle thì nó sẽ add event lightbox 
	$(document).on('click', '[data-toggle="lightbox"]', function (event) {
		event.preventDefault();
		$(this).ekkoLightbox({
			alwaysShowClose: true
		});
	});
});

/**
 * Add title for selected modal after that show modal
 * @param $selectedModal
 * @param title
 */
function showModalWithCustomizedTitle($selectedModal, title) {
	$selectedModal.find(".modal-title").text(title);
	$selectedModal.modal('show');
}

/**
 * Reset form of modal before open modal
 * @param $formElement
 */
function resetFormModal($formElement) {

	$formElement[0].reset();
	$formElement.find("input[type*='file']").val("");
	$formElement.validate().destroy();
	$formElement.find(".error-message-invalid").remove();
	$formElement.find("img").attr('src', '');
}

/**
 * Validate Form
 *
 * @param $formElement
 * @param validationInfo
 * @returns true if form is valid
 */
function formValidate($formElement, validationInfo) {

	$formElement.validate({
		rules: validationInfo.rules,
		messages: validationInfo.errorMessages,
		errorElement: "div",
		errorClass: "error-message-invalid",
		ignore: 'input[type=hidden], .select2-input, .select2-focusser'
	});
	return $formElement.valid();
}

/**
 * Show notification common 
 * 
 * @param isSuccess	show notify is success
 * @param message display on notify
 */
function showNotification(isSuccess, message) {

	if (isSuccess) {
		$.notify({
			icon: 'glyphicon glyphicon-ok',
			message: message
		}, {
			type: 'info',
			delay: 3000
		});
	} else {
		$.notify({
			icon: 'glyphicon glyphicon-warning-sign',
			message: message
		}, {
			type: 'danger',
			delay: 6000
		});
	}
}

/**
 * Show message on popup 
 * 
 * @param $element
 *				element show error message
 * @param isSuccessMsg
 *				true if message is a inform message
 *				false if message is error message
 * @param message
 */
function showMsgOnForm($element, message, isSuccessMsg) {

	var className = isSuccessMsg ? "alert-info" : "error-message-invalid";
	$element.find(".form-msg").remove();
	$element.prepend("<div class='" + className + " form-msg'>" + message + "</div>");
}

/**
 * Show message below input field
 * 
 * @param $element
 *				element show error message
 * @param isSuccessMsg
 *				true if message is a inform message
 *				false if message is error message
 * @param message
 */
function showMsgOnField($element, message, isSuccessMsg) {

	var className = isSuccessMsg ? "alert-info" : "error-message-invalid";
	$element.find(".form-msg").remove();
	$element.parent().append("<div class='" + className + " form-msg'>" + message + "</div>");
}