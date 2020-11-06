$(document).ready(function() {
	
	// Load product list for product index page
	loadAllProducts(1);
	
	var pgNum;
	var keyword;
	var priceFrom;
	var priceTo;
	var brandIds = [];
	
	// Load product list by page
    $('.pagination').on( 'click', '.page-link', function() {
    	pgNum = $(this).attr("data-index");
    	brandIds = $("input[type=checkbox]:checked").map( function() {
    		return $(this).val();
		});
    	
    	// Orienting for pagination
    	if (!isConditionEmpty(keyword, priceFrom, priceTo) || brandIds.length > 0) {
    		searchProduct(pgNum, brandIds);
    	} else {
    		loadAllProducts(pgNum);
    	}
    })
    
    // Executing search process
    $("#prodSearchBtn").on( 'click', function() {
    	pgNum = undefined;
    	brandIds = $("input[type=checkbox]:checked").map( function() {
    		return $(this).val();
		});
    	if (!isConditionEmpty(keyword, priceFrom, priceTo) || brandIds.length > 0) {
    		searchProduct(1, brandIds);
    	}
    })
    
    // Reset search criteria
    $("#resetSearchProd").on( 'click', function() {
    	$("#keyword").val(""),
		$("#priceFrom").val(null),
		$("#priceTo").val(null),
		$(".check-area-checked").removeClass('check-area-checked'),
		$('input[type="checkbox"]').prop("unchecked", $(this).prop("unchecked")),
		brandIds = [];
    	pgNum = undefined;
		$('#searchResultNotify').text('');
		
    	loadAllProducts(1);
    	$('.pagination').removeClass("d-none");
    })
    	
    var $productModifyModal = $('#productModifyModal');
    var $productInputForm = $('#productInputForm');
    
    // Load Add-product Modal
    $('#addProdLink').click( function() {
    	resetFormModal($productInputForm);
    	showModalWithCustomizedTitle($productModifyModal, "Add New Product");
    	$('#prodImgThumb img').attr('src', '/images/image-demo.png');
    	$('#productId').closest(".form-group").addClass('d-none');
    	$('#productImg .required-mask').removeClass('d-none');
    });
    
    // Load Update-product Modal
    $('#productDetailTable').on( 'click', '.edit-btn', function() {
    	
    	$('#productImg .required-mask').addClass("d-none");
    	
    	// Load product details by productId
    	$.ajax({
    		url  : "/product/api/find?id=" + $(this).data("id"),
    		type : 'GET',
    	    dataType : 'json',
    	    contentType : 'application/json',
    	    success : function(responseData) {

    	    	// Hide modal then show success message after saving successfully
    	    	// Else show error message in modal
    	    	if (responseData.responseCode == 100) {
    	    		var prodDetails = responseData.data;
    	    		resetFormModal($productInputForm);
    	    		showModalWithCustomizedTitle($productModifyModal, "Edit Product #" + prodDetails.productId);

    	    		$('#productId').val(prodDetails.productId);
    	    		$('#productName').val(prodDetails.productName);
    	    		$('#quantity').val(prodDetails.quantity);
    	    		$('#price').val(prodDetails.price);
    	    		$('#brandId').val(prodDetails.brandEntity.brandId);
    	    		$('#saleDate').val(prodDetails.saleDate);
    	    		$('#prodDesct').val(prodDetails.prodDesct);

    	    		var productImg = prodDetails.prodImg;
    	    		if (productImg == null || productImg == "") {
    	    			productImg = "/images/image-demo.png";
    	    		}

    	    		$('#prodImgThumb img').attr("src", productImg);
    	    		$('#prodImg').val(productImg);
    	    		$('#productId').closest(".form-group").removeClass("d-none");
    	    	}
    	    }
    	});
    });
    
    // Submit Data from Modal
    $('#productSaveBtn').click( function(event) {
    	event.preventDefault();
    	var formData = new FormData($productInputForm[0]);
    	var productId = formData.get("productId");
    	var brandId = formData.get("brandEntity.brandId");
    	var isAddAction = productId == undefined || productId == "";

    	$productInputForm.validate({
    		ignore : '',
    		rules : {
    			productName : {
    				required : true,
    				maxlength : 50
    			},
    			quantity : {
    				required : true,
    				max : 1000
    			},
    			price : {
    				required : true
    			},
    			brandName : {
    				required : true
    			},
    			saleDate : {
    				required : true,
    				date : true
    			},
    			prodImgFiles : {
    				required : isAddAction
    			},
    			description : {
    				maxlength : 150
    			}
    		}, 
    		messages : {
    			productName : {
    				required : "Product name is required.",
    				maxlength : "Product name must not be longer than 50 characters!"
    			},
    			quantity : {
    				required : "Quantity of product is required.",
    				max : "Quantity must not be larger than 1000!"
    			},
    			price : {
    				required : "Price of product is required."
    			},
    			brandName : {
    				required : "Brand name is required."
    			},
    			saleDate : {
    				required : "Sale date is required.",
    				date : "Please enter valid date!"
    			},
    			prodImgFiles : {
    				required : "Product image is required for new Product."
    			},
    			description : {
    				maxlength : "Description must not be longer than 150 characters!"
    			}
    		},
    		errorElement : "div",
			errorClass : "err-message-invalid"
    	});
    	
    	// Save data if valid
    	if ($productInputForm.valid()) {
    		
    		// Post data to server-side by AJAX
    		$.ajax({
    			url  : "/product/api/" + (isAddAction ? "add" : "update"),
    			type : 'POST',
    	        enctype : 'multipart/form-data',
    	        processData : false,
    	        contentType : false,
    	        cache : false,
    	        timeout : 10000,
    	        data : formData,
    	        success : function(responseData) {
    	        	
    	        	// Hide modal then show success message after saving successfully
    	        	// Else show error message in modal
    	            if (responseData.responseCode == 100) {
    	            	$productModifyModal.modal('hide');
    	            	if (isAddAction) {
    	            		loadAllProducts(1);
    	            	} else {
    	            		if (!isConditionEmpty(keyword, priceFrom, priceTo) || brandIds.length > 0) {
    	            			searchProduct(pgNum, brandIds);
    	            		} else {
    	            			loadAllProducts(pgNum);
    	            		}
    	            	}
    	            	showNotif(true, responseData.responseMessg);
    	            } else {
    	            	showMessgBelowInput($productInputForm.find("#productName"), responseData.responseMessg);
    	            }
    	        }
    		});
    	}
    });
    
    // Show Confirm-To-Delete-Product Modal
    $('#productDetailTable').on( 'click', '.delete-btn', function() {
    	$('#productToBeDeleted').text($(this).data('name'));
    	$('#delSubmmitBtn').attr('data-id', $(this).data('id'));
    	$('#confirmDeleteModal').modal('show');
    });
    
    // Execute delete action
    $('#delSubmmitBtn').on( 'click', function() {
		$.ajax({
			url  : "/product/api/delete/" + $(this).attr("data-id"),
    		type : 'DELETE',
    	    dataType : 'json',
    	    contentType : 'application/json',
    	    success : function(responseData) {
    	    	$('#confirmDeleteModal').modal('hide');
    	    	showNotif(responseData.responseCode == 100, responseData.responseMessg);
    	    	if (!isConditionEmpty(keyword, priceFrom, priceTo) || brandIds.length > 0) {
        			searchProduct(pgNum, brandIds);
        		} else {
        			loadAllProducts(pgNum);
        		}
    	    }
		});
    });
    
    // Shon only 13 logos for search
    $(".all-brands .checkbox-wrapper").each(function() {
    	$('.checkbox-wrapper:gt(12)').addClass("d-none");
    })

    // Show more-less brands for search
    $(".more-less").on( "click", function(e) {
    	e.preventDefault();
    	var $this = $(this); 
    	var linkText = $this.text();    

    	if(linkText === "Show more"){
    		linkText = "Hide less";
    		$('.checkbox-wrapper:gt(12)').toggleClass("d-none");
    	} else {
    		linkText = "Show more";
    		$('.checkbox-wrapper:gt(12)').toggleClass("d-none");
    	};

    	$this.text(linkText);
    });

    // Init the state from the input
    $(".check-area").each(function () {
    	if ($(this).find('input[type="checkbox"]').first().attr("checked")) {
    		$(this).addClass('check-area-checked');
    	}
    	else {
    		$(this).removeClass('check-area-checked');
    	}
    });

    // Sync the state to the input
    $(".check-area").on( "click", function (e) {
    	e.preventDefault();
    	$(this).toggleClass('check-area-checked');
    	var $checkbox = $(this).find('input[type="checkbox"]');
    	$checkbox.prop("checked", !$checkbox.prop("checked"))
    });
    
    // Prevent default submit event from enter key press
    $('#keyword').on( 'keydown', function(e) {
        if (e.which === 13) {
            e.preventDefault();
        }
    });
});

/**
 * Load products with pager API
 * 
 * @param pgNum
 */ 
function loadAllProducts(pgNum) {
	if (pgNum == undefined) {
		pgNum = 1;
	}
    $.ajax({
        url : "/product/api/findAll/" + pgNum,
        type : 'GET',
        dataType : 'json',
        contentType : 'application/json',
        success : function(responseData) {
            if (responseData.responseCode == 100) {
            	renderProductTable(responseData.data.prodList);
                renderPagination(responseData.data.paginationInfo);
            }
        }
    });
}

/**
 * Search product with pager API
 * 
 * @param pgNum
 * @returns 
 */
function searchProduct(pgNum, brandIds) {
	if (pgNum == undefined) {
		pgNum = 1;
	}
	var searchConditionMap = {
			keyword: $("#keyword").val(),
			priceFrom:$("#priceFrom").val(),
			priceTo: $("#priceTo").val(),
			brandIds: brandIds.get()
	}	
	$.ajax({
		url: '/product/api/search/' + pgNum,
		type : 'POST',
		dataType : 'json',
		contentType : 'application/json',
		data: JSON.stringify(searchConditionMap),
		success : function(responseData) {
			if (responseData.responseCode == 100) {
				renderProductTable(responseData.data.prodResultList);
				renderPagination(responseData.data.resultPaginationInfo);
				if(responseData.data.resultPaginationInfo.pgNumList.length < 2){
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
 * Check if search conditions is empty
 * 
 * @param keyword
 * @param priceFrom
 * @param priceTo
 * @returns
 */
function isConditionEmpty(keyword, priceFrom, priceTo) {
	keyword = $('#keyword').val();
	priceFrom = $('#priceFrom').val();
	priceTo = $('#priceTo').val();
	var conditionArr = [keyword, priceFrom, priceTo];
	for (var i = 0; i < conditionArr.length; i++) {
		if (conditionArr[i] !== "" && conditionArr[i] !== null)   
			return false;
	}
	return true;
}

/**
 * Format number as currency
 * 
 * @param number
 */ 
function formatCurrency(number) {
	return number.toFixed(0).replace(/./g, function(c, i, a) {
		return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
	});
}

/**
 * Setting max value for sale date is the current date
 */
document.getElementById('saleDate').max = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];

/**
 * Format for displayed date on table
 * 
 * @param date
 * @returns
 */
function renderDate(date){
	let data= new Date(date)
    let month = data.getMonth() + 1
    let day = data.getDate()
    let year = data.getFullYear()
    if(day<=9)
      day = '0' + day
    if(month<10)
      month = '0' + month
    const postDate = day + '-' + month + '-' + year
    return postDate
}


function showResultSearchNotify(isSuccess, message) {
	if (isSuccess) {
		document.getElementById("searchResultNotify").innerHTML = message;
	}
}

/**
 * Render Html for product table
 * 
 * @param prodList
 */ 
function renderProductTable(prodList) {
	
	var rowHtml = "";
	$('#productDetailTable tbody').empty();
	$.each(prodList, function(key, value) {
		rowHtml = "<tr>"
			+       "<td>"  + value.productId  +   "</td>"
			+       "<td>"  + value.productName  +   "</td>"
			+       "<td class='text-center'>"  + value.quantity  +   "</td>"
			+       "<td class='text-right'>" +	formatCurrency(value.price) + "</td>"
			+       "<td class='text-center'>" +	value.brandEntity.brandName	+	"</td>"
			+       "<td class='text-right'>"  + renderDate(value.saleDate)  +   "</td>"
			+       "<td class='text-center logo-cell'><a href='"  +   value.prodImg    + "' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='"  +   value.prodImg    + "'></td>"
			+       "<td>"  + value.prodDesct  +   "</td>"
			+       "<td class='action-btns'>"
			+	         "<a class='edit-btn' data-id='" +   value.productId   +   
			"'><i class='fas fa-edit'></i></a> | <a class='delete-btn' data-name='" +   value.productName   +	
			"' data-id='" +   value.productId   + "'><i class='fas fa-trash-alt'></i></a>"
			+		"</td>"
			+   "</tr>"; 
		$('#productDetailTable tbody').append(rowHtml);
	});
}

/**
 * Render Html for pagination bar in Product page
 * 
 * @param paginationInfo
 */ 
function renderPagination(paginationInfo) {
	
	var paginationInnerHtml = "";
	$("ul.pagination").empty();
	if (paginationInfo.pgNumList.length > 0) {
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
