$(document).ready(function() {

    // Load brand list for brand index page
    loadAllBrands(1);

    var pgNum;
    var keyword;
  
    // Load brand list by page
    $('.pagination').on( 'click', '.page-link', function() {
    	pgNum = $(this).attr("data-index");
    	keyword = $('#keyword').val();

    	// Orienting for pagination
    	if (keyword != "") {
    		searchBrand(keyword, pgNum);
    	} else {
    		loadAllBrands(pgNum);
    	}
    });
    
    // Executing search process
    $("#brandSearchBtn").on( 'click', function() {
    	pgNum = undefined;
    	keyword = $("#keyword").val();
    	if (keyword != "") {
    		searchBrand(keyword, 1);
    	}
    });
    
    // Reset search criteria//clear on focus
    $("#resetSearchBrand").on( 'click', function() {
    	keyword = "",
    	pgNum = undefined;
    	$('#searchResultNotify').text('');
    	loadAllBrands(1);
    	$('.pagination').removeClass("d-none");
    })

    var $brandModifyModal = $('#brandModifyModal');
    var $brandInfoForm = $('#brandInfoForm');
    
    // Load Add-Brand Modal
    $('#addBrandLink').click( function() {
    	resetFormModal($brandInfoForm);
    	showModalWithCustomizedTitle($brandModifyModal, "Add New Brand");
    	$('#logoImg img').attr('src', '/images/image-demo.png');
    	$('#brandId').closest(".form-group").addClass("d-none");
    	$('#brandLogo .required-mask').removeClass("d-none");
    });
    
    // Load Update-brand Modal
    $("#brandDetailsTable").on( 'click', '.edit-btn', function() {
		
    	$('#brandLogo .required-mask').addClass("d-none");
    	
    	//Load brand details by brandId
    	$.ajax({
    		url  : "/brand/api/find?id=" + $(this).data("id"),
    		type : 'GET',
    	    dataType : 'json',
    	    contentType : 'application/json',
    	    success : function(responseData) {

    	    	// Hide modal then show success message after saving successfully
    	    	// Else show error message in modal
    	    	if (responseData.responseCode == 100) {
    	    		var brandDetails = responseData.data;
    	    		resetFormModal($brandInfoForm);
    	    		showModalWithCustomizedTitle($brandModifyModal, "Edit Brand #" + brandDetails.brandId);

    	    		$('#brandId').val(brandDetails.brandId);
    	    		$('#brandName').val(brandDetails.brandName);
    	    		$('#description').val(brandDetails.description);

    	    		var brandLogo = brandDetails.logo;
    	    		if (brandLogo == null || brandLogo == "") {
    	    			brandLogo = "/images/image-demo.png";
    	    		}

    	    		$('#logoImg img').attr("src", brandLogo);
    	    		$('#logo').val(brandLogo);
    	    		$('#brandId').closest(".form-group").removeClass("d-none");
    	    	}
    	    }
    	});
	});
    
    // Submit Data from Modal
    $('#brandSaveBtn').click( function(event) {
    	event.preventDefault();
    	var formData = new FormData($brandInfoForm[0]);
    	var brandId = formData.get("brandId");
    	var isAddAction = brandId == undefined || brandId == "";
    	
    	$brandInfoForm.validate({
    		ignore : '',
    		rules : {
    			brandName : {
    				required : true,
    				maxlength : 20
    			},
    			logoFiles : {
    				required : isAddAction
    			},
    			description : {
    				maxlength : 50
    			}
    		},
    		messages: {
    			brandName : {
    				required : "Brand name is required.",
    				maxlength : "Brand name must not be longer than 20 characters!"
    			},
    			logoFiles : {
    				required : "Brand logo is required for new Brand."
    			},
    			description : {
    				maxlength : "Description must not be longer than 50 characters!"
    			}
			},
			errorElement : "div",
			errorClass : "err-message-invalid"
    	});
    	
    	// Save data if form is validated
    	if ($brandInfoForm.valid()) {
    		
    		//Post data to server-side by AJAX
    		$.ajax({
    			url  : "/brand/api/" + (isAddAction ? "add" : "update"),
    			type : 'POST',
    	        enctype : 'multipart/form-data',
    	        processData : false,
    	        contentType : false,
    	        cache : false,
    	        timeout : 10000,
    	        data : formData,
    	        success : function(responseData) {
    	        	
    	        	//Hide modal then show success message after saving successfully
    	        	//Else show error message in modal
    	        	if (responseData.responseCode == 100) {
    	        		$brandModifyModal.modal('hide');
    	        		if (isAddAction) {
    	        			loadAllBrands(1);
    	        		} else {
    	        			if (keyword != undefined && keyword != "") {
    	        				searchBrand(keyword, pgNum);
    	        			} else {
    	        				loadAllBrands(pgNum);
    	        			}
    	        		}
    	        		showNotif(true, responseData.responseMessg);
    	        	} else {
    	        		showMessgBelowInput($brandInfoForm.find("#brandName"), responseData.responseMessg);
    	        	}
    	        }
    		});
    	} 
	});
    
    // Show Delete-brand Confirmation Modal
    $("#brandDetailsTable").on( 'click', '.delete-btn', function() {
    	$("#brandToBeDeleted").text($(this).data("name"));
    	$("#delSubmmitBtn").attr("data-id", $(this).data("id"));
    	$("#confirmDeleteModal").modal('show');
    });
    
    // Execute delete action
    $("#delSubmmitBtn").on( 'click', function() {
    	$.ajax({
    		url  : "/brand/api/delete/" + $(this).attr("data-id"),
    		type : 'DELETE',
    	    dataType : 'json',
    	    contentType : 'application/json',
    	    success : function(responseData) {
    	    	$('#confirmDeleteModal').modal('hide');
    	    	showNotif(responseData.responseCode == 100, responseData.responseMessg);
    	    	if (keyword != undefined && keyword != "") {
    	    		searchBrand(keyword, pgNum);
    	    	} else {
    	    		loadAllBrands(pgNum);
    	    	}
    	    }
    	});
    });
    
    // Prevent default submit event from enter key press
    $('#keyword').on( 'keydown', function(e) {
    	keyword = $("#keyword").val();
        if (e.which === 13) {
            e.preventDefault();
            if (keyword !== ''){
            	searchBrand(keyword, 1);	
            }
        }
    });
    
});

/**
 * Load brands with pager API
 * 
 * @param pgNum
 */ 
function loadAllBrands(pgNum) {
	if (pgNum == undefined) {
		pgNum = 1;
	}
    $.ajax({
        url : "/brand/api/findAll/" + pgNum,
        type : 'GET',
        dataType : 'json',
        contentType : 'application/json',
        success : function(responseData) {
            if (responseData.responseCode == 100) {
            	renderBrandTable(responseData.data.brandList);
                renderPagination(responseData.data.paginationInfo);                
            }
        }
    });
}

/**
 * Search Brand with pager API
 * 
 * @param pgNum
 * @returns
 */
function searchBrand(keyword, pgNum) {
	if (pgNum == undefined) {
		pgNum = 1;
	}
	$.ajax({
		url : "/brand/api/search/" + keyword + "/" + pgNum,
		type : 'GET',
		dataType : 'json',
		contentType : 'application/json',
		success : function(responseData) {
			if (responseData.responseCode == 100) {
				renderBrandTable(responseData.data.brandList);
				renderPagination(responseData.data.paginationInfo);
				if(responseData.data.paginationInfo.pgNumList.length < 2){
					$('.pagination').addClass("d-none");
				} else {
					$('.pagination').removeClass("d-none");
				}
			}
			showResultSearchNotify(responseData.responseCode, responseData.responseMessg);
		}
	});	
}

/**
 * Render Html for brand table
 * 
 * @param brandList
 */ 
function renderBrandTable(brandList) {

    var rowHtml = "";
    $("#brandDetailsTable tbody").empty();
    $.each(brandList, function(key, value) {
        rowHtml = "<tr>"
                +       "<td>"  + value.brandId  +   "</td>"
                +       "<td>"  + value.brandName  +   "</td>"
                +       "<td class='text-center logo-cell'><a href='"  +   value.logo    + "' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='"  +   value.logo    + "'></td>"
                +       "<td>"  + value.description  +   "</td>"
                +       "<td class='action-btns'>"
                +	         "<a class='edit-btn' data-id='" +   value.brandId   +   
                				"'><i class='fas fa-edit'></i></a> | <a class='delete-btn' data-name='" +   value.brandName   +	
                				"' data-id='" +   value.brandId   + "'><i class='fas fa-trash-alt'></i></a>"
                +		"</td>"
                +   "</tr>"; 
        $("#brandDetailsTable tbody").append(rowHtml);
    });
}

/**
 * Render Html for pagination bar in Brand page
 * 
 * @param paginationInfo
 */ 
function renderPagination(paginationInfo) {

    var paginationInnerHtml = "";
    if (paginationInfo.pgNumList.length > 0) {
        $("ul.pagination").empty();
        paginationInnerHtml += '<li class="page-item"><a class="page-link ' +    (paginationInfo.firstPage == 0 ? 'disabled' : '')  +   '" href="javascript:void(0)" data-index= "'    +   paginationInfo.firstPage    +     '">First</a></li>'
        paginationInnerHtml += '<li class="page-item"><a class="page-link ' +    (paginationInfo.prvsPage == 0 ? 'disabled' : '')  +   '" href="javascript:void(0)" data-index= "'    +   paginationInfo.prvsPage    +     '">Previous</a></li>'
        $.each(paginationInfo.pgNumList, function(key, value) {
            paginationInnerHtml += '<li class="page-item"><a class="page-link ' +    (value == paginationInfo.currtPage ? 'active' : '')  +   '" href="javascript:void(0)" data-index= "'    +   value    +     '">'   +  value   + '</a></li>';
        });
        paginationInnerHtml += '<li class="page-item"><a class="page-link ' +    (paginationInfo.nextPage == 0 ? 'disabled' : '')  +   '" href="javascript:void(0)" data-index= "'    +   paginationInfo.nextPage    +     '">Next</a></li>'
        paginationInnerHtml += '<li class="page-item"><a class="page-link ' +    (paginationInfo.lastPage == 0 ? 'disabled' : '')  +   '" href="javascript:void(0)" data-index= "'    +   paginationInfo.lastPage    +     '">Last</a></li>'
        $("ul.pagination").append(paginationInnerHtml);
    }
}
