$(document).ready(function () {

    // Add "active" class for link in header
    var pathName = window.location.pathname;
    $("header .nav-link").each(function () {
        $this = $(this);
        if (pathName.includes($this.attr("href"))) {
            $this.addClass("active");
        }
    });
    
    // Adjust input width fits to placeholder length
    $("input[placeholder]").each(function () {
        $(this).attr('size', $(this).attr('placeholder').length);
    });
    
    // Upload image preview
    $('input.upload-img').on( 'change', function () {
        var url = window.URL || window.webkitURL;
        var file = this.files[0];
        var fileURL;
        var $parent = $(this).parent();
        if (file) {
        	fileURL = url.createObjectURL(file);
        	$parent.find('.err-message-invalid[id$="-error"]').remove();
        	$parent.find('.err-message-invalid').removeClass("err-message-invalid");
        } else {
            var oldImagePath = $parent.find(".old-img").val();
            if (oldImagePath) {
            	fileURL = oldImagePath;
            } else {
            	fileURL = "/images/image-demo.png";
            }
        }
        $parent.find(".preview-img-upload img").attr('src', fileURL);
    });
    
    //See full size image by clicking
    $(document).on( 'click', '[data-toggle="lightbox"]', function (event) {
    	event.preventDefault();
    	$(this).ekkoLightbox({
    		alwaysShowClose: true
    	});
    });
    
    /**
     * Clearable text inputs
     */
    $(".clearable").each(function() {
      
      var $inp = $(this).find("input:text"),
          $cle = $(this).find(".clearable__clear");

      $inp.on("input", function(){
        $cle.toggle(!!this.value);
      });
      
      $cle.on("touchstart click", function(e) {
        e.preventDefault();
        $inp.val("").trigger("input");
      });
      
    });
});

/**
 * Validate Form
 *
 * @param $formElement
 * @param validationInfo
 * @returns true if form is valid
 */

function formValidate($formElement, validationInfo) {
	
    $formElement.validate( {
        rules: validationInfo.rules,
        messages: validationInfo.errorMessages,
        errorElement: "div",
        errorClass: "err-message-invalid",
        ignore: 'input[type=hidden], .select2-input, .select2-focusser'
    });
    return $formElement.valid();
}

/**
 * Add customized title for Modal
 *
 * @param $selectedModal
 * @param cuzTitle
 */
function showModalWithCustomizedTitle($selectedModal, cuzTitle) {
	$selectedModal.find(".modal-title").text(cuzTitle);
	$selectedModal.modal('show');
}

/**
 * Reset form for Modal before showing
 *
 * @param $formElement
 */
function resetFormModal($formElement) {
	
	$formElement[0].reset();
	$formElement.find("input[type*='file']").val("");
	$formElement.validate().destroy();
	$formElement.find(".err-message-invalid").remove();
	$formElement.find("img").attr('src', '');
}

/**
 * Show Notification
 *
 * @param isSuccess to show notif. if process succeeded
 * @param message to display on notif.
 */
function showNotif(isSuccess, message) {
	
	if (isSuccess) {
		$.notify({
			icon : 'glyphicon glyphicon-ok',
			message	: message	
		}, {
			type : 'info',
			delay : 3000
		});
	} else {
		$.notify({
			icon : 'glyphicon glyphicon-warning-sign',
			message	: message	
		}, {
			type : 'danger',
			delay : 5000
		});
	}
}

/**
 * Show Message on popup
 *
 * @param $element
 * 				element to show error message
 * @param isSuccessMessg
 * 				true if message is an inform (alert-info)
 * 				false if message is an error message
 * @param messg
 */
function showMessgOnPopup($element, messg, isSuccessMessg) {
	
	var className = isSuccessMessg ? "alert-info" : "err-message-invalid";
	$element.find(".form-messg").remove();
	$element.prepend("<div class='"	+	className	+	" form-messg'>"	+	messg	+	"</div>");
}

/**
 * Show Message below input field
 *
 * @param $element
 * 				element to show error message
 * @param isSuccessMessg
 * 				true if messg is an inform(alert-info)
 * 				false if messg is an error message
 * @param messg
 */
function showMessgBelowInput($element, messg, isSuccessMessg) {
	
	var className = isSuccessMessg ? "alert-info" : "err-message-invalid";
	$element.find(".form-messg").remove();
	$element.parent().append("<div class='" + className + " form-messg'>" + messg + "</div>");
}

/**
 * Show search result message
 * 
 * @param isSuccess
 * @param message
 * @returns
 */
function showResultSearchNotify(isSuccess, message) {
	if (isSuccess) {
		document.getElementById("searchResultNotify").innerHTML = message;
	}
}

/**
 * Back to Top Button
 *
 */
//Get the Button:
var mybutton = document.getElementById("myTopBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.style.display = "block";
    } else {
        mybutton.style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; //for Safari
    document.documentElement.scrollTop = 0; //Chrome, IE, ...
}

