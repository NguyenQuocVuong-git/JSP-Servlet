$(document).ready(function() {
	
	findProductList(1);
	
	$('.checkbox').each(function() {
		$(this).find('.itemlogo').each(function(index) {
			if (index >= 6) {
				$(this).hide();
			}
		})
	})
	
	$('.hidden-item').on('click', function(event) {
		event.preventDefault();
		$('.hidden-item').addClass("d-none");
		$('.show-more').removeClass("d-none");
		$('.checkbox').each(function() {
			$(this).find('.itemlogo').each(function(index) {
				if (index >= 6) {
					$(this).hide();
				}
			})
		})
	})
	$('.show-more').on('click', function(event) {
		event.preventDefault();
		$('.hidden-item').removeClass("d-none");
		$('.show-more').addClass("d-none");
		$('.checkbox').each(function() {
			$(this).find('.itemlogo').each(function(index) {
				$(this).show();
			})
		})
	})
	
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
	
	var listBrand = [];
	$('.brandClass').on('click', function() {
		listBrand = [];
		$('.checkbox').find('input[name="brand.logo"]:checked').each( function() {
			listBrand.push($(this).val());
		});
		console.log(listBrand);
	})

	$('#btnSearch').on('click', function() {
		searchProductByInfo(1, true,listBrand);
	});
	
	$('#reset').on('click', function() {
		$('input[type=checkbox]').each(function(){
			this.checked = false;
		})
		$('#keyword').val("");
		listBrand = [];
		$('#priceFrom').val('0');
		$('#priceTo').val('');
		$('.hidden-item').addClass("d-none");
		$('.show-more').removeClass("d-none");
		$('.checkbox').each(function() {
			$(this).find('.itemlogo').each(function(index) {
				if (index >= 6) {
					$(this).hide();
				}
			})
		})
		findProductList(1);
	});
	
	// Show brand on pagination
	$('.pagination').on('click', '.page-link', function() {
		var pageNumber = $(this).attr("data-index");
		var keyword = $('#keyword').val();
		var priceFrom = $('#priceFrom').val();
		var priceTo = $('#priceTo').val();
		if ( keyword != "" || listBrand !="" || priceFrom !== "0" || priceTo !="") {
			searchProductByInfo(pageNumber,true,listBrand);		
		} else {
			findProductList(pageNumber);
		}
	});	

	// Form add product
	var $productInfoForm = $('#productInfoForm');
	var $productInfoModal = $('#productInfoModal');

	// Show form add brand with js
	$('#addProductInfoModal').on('click', function() {
		resetFormModal($productInfoForm);
		showModalWithCustomizedTitle($productInfoModal, "Add Product");
		$('#logoImg img').attr('src', '/images/image-demo.png');
		$('#productId').closest(".form-group").addClass("d-none");
	});
	
	// Form add
	$("#productInfoTable").on('click', '.edit-btn', function() {
		$.ajax({
			url : "/product/api/find?id=" + $(this).data("id"),
			type : 'GET',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				if (responseData.responseCode == 100) {
					var productInfo = responseData.data;
					resetFormModal($productInfoForm);
					showModalWithCustomizedTitle($productInfoModal , "Edit Product");
					
					$('#productId').val(productInfo.productId);
					$('#productName').val(productInfo.productName);
					$('#price').val(productInfo.price);
					$('#quantity').val(productInfo.quantity);
					$('#brandName').val(productInfo.brandEntity.brandName);
					$('#openForSale').val(productInfo.saleDate);
					$('#description').val(productInfo.description);
					
					var productLogo = productInfo.image;
					if (productLogo == null || productLogo == "") {
						productLogo = "/images/image-demo.png";
					}
					$("#logoImg img").attr("src", productLogo);
					// Must mapping logo with productEntity == ajax like jsp and like productEntity
					$("#image").val(productLogo);
					$('#productdId').closest(".form-group").removeClass("d-none");
				}
			}
		});
	});
	
	// Show popup delete
	$("#productInfoTable").on('click', '.delete-btn', function() {
		$("#deletedProductName").text($(this).data("name"));
		$("#deleteSubmitBtn").attr("data-id", $(this).data("id"));
		$('#confirmDeleteModal').modal('show');
	});
	
	// Submit delete brand
	// After displaying the delete popup - it will pass down an id and pass ajax to call handler function
	$("#deleteSubmitBtn").on('click' , function() {
		$.ajax({
			url : "/product/api/delete/" + $(this).attr("data-id"),
			type : 'DELETE',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				$('#confirmDeleteModal').modal('hide');
				showNotification(responseData.responseCode == 100, responseData.responseMsg);
				findProductList(1)
			}
		});
	});
	
	// Validate FE + handler info add || update
	$('#saveProductBtn').on('click', function (event) {

		event.preventDefault();
		var formData = new FormData($productInfoForm[0]);
		// Form data will mapping as Entity
		var productId = formData.get("productId");
		var isAddAction = productId == undefined || productId == "";
	
		$productInfoForm.validate({
			ignore: [],
			rules: {
				productName: {
					required: true,
					maxlength: 100
				},
				logoFiles: {
					required: isAddAction,
				},
				price: {
					number: true
				}
			},
			messages: {
				brandName: {
					required: "Please input Product Name",
					maxlength: "The Product Name must be less than 100 characters",
				},
				logoFiles: {
					required: "Please upload Product Image",
				},
				price: {
					number:"Enter the number for the price"
				}
			},
			// If an error occurs it will add the class errorClass and display it
			errorElement: "div",
			errorClass: "error-message-invalid"
		});
		
		// When all licenses are valid it will proceed to post data to the server using ajax
		if ($productInfoForm.valid()) {
			// POST data to server-side by AJAX
			$.ajax({
				url: "/product/api/" + (isAddAction ? "add" : "update"),
				type: 'POST',
				enctype: 'multipart/form-data',
				processData: false,
				contentType: false,
				cache: false,
				timeout: 10000,
				data: formData,
				success: function(responseData) {

					//show the messenger when success
					if (responseData.responseCode == 100) {
						$productInfoModal.modal('hide');
						findProductList(1)			
						showNotification(true, responseData.responseMsg);
					} else {
						showMsgOnField($productInfoForm.find("#productName"), responseData.responseMsg);
					}
				}
			});
		}
	});

});

function findProductList(pageNumber) {
	$.ajax({
		url : "/product/api/findAll/"  + pageNumber,
		type : 'GET',
		dataType : 'json',
		contentType : 'application/json',
		success : function(responseData) {
			if (responseData.responseCode == 100) {
				renderProductTable(responseData.data.productList);
				renderPagination(responseData.data.paginationInfo);
				if($('.pagination').removeClass("d-none")){
					$("#system-message p").empty();
				}
			}
		}
	});
}

function searchFn(keyword, pageNumber, startPrice, endPrice) {
	$.ajax({
		url : "/product/api/search/"  + keyword+"/"+pageNumber+"/"+startPrice+"/"+endPrice,
		type : 'GET',
		dataType : 'json',
		contentType : 'application/json',
		success : function(responseData) {
			if (responseData.responseCode == 100) {
				renderProductTable(responseData.data.productList);
				console.log(responseData.data.productList);
				renderPagination(responseData.data.paginationInfo);
				if(pageNumber==1){
					showNotification(true, responseData.responseMsg);
				}
				
			}
		}
	});
}

function searchProductByInfo(pageNumber, isClickedSearchBtn,listBrand) {
	
	var searchConditions = {
			keyword: $("#keyword").val(),
			priceFrom:$("#priceFrom").val(),
			priceTo:$("#priceTo").val(),
			list : listBrand
		}
		$.ajax({
			url: '/product/api/searchProductByInfo/' + pageNumber,
			type: 'POST',
			dataType: 'json',
			contentType: 'application/json',
			success: function (responseData) {
				if(responseData.responseCode == 100) {
					renderProductTable(responseData.data.productsList);
					renderPagination(responseData.data.paginationInfo);
					if(responseData.data.paginationInfo.pageNumberList.length < 2){
						$('.pagination').addClass("d-none");
					}else{
						$('.pagination').removeClass("d-none")
					}
					if(pageNumber){
						renderSystemMessage(responseData.responseMsg);
					}
				}
			},
			data: JSON.stringify(searchConditions)
		});
}

function renderProductTable(productList) {
	var rowHtml = "";
	$("#productInfoTable tbody").empty();
	$.each(productList, function(key, value) {
		rowHtml = "<tr>"
			+		"<td>" + value.productId + "</td>"
			+		"<td>" + value.productName + "</td>"
			+		"<td>" + value.quantity + "</td>"
			+		"<td>" + fnFormatPrice(value.price)  + "₫</td>"
			+		"<td><a name='searchByBrandName' value="+value.brandEntity.brandId+">" + value.brandEntity.brandName+ "</a></td>"
			+		"<td>" + renderDate(value.saleDate) + "</td>"
			+		"<td class='text-center'><a href='" + value.image + "' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='" + value.image + "'></td>"
			+		"<td class='action-btns'>"
			+			"<a class='edit-btn' data-id='" + value.productId + "'><i class='fas fa-edit'></i></a> | <a class='delete-btn' data-name='" + value.productName + "' data-id='" + value.productId + "'><i class='fas fa-trash-alt'></i></a>"
			+		"</td>"
			+	"</tr>";
		
		$("#productInfoTable tbody").append(rowHtml);
	
	});
}
function renderPagination(paginationInfo) {

	var paginationInnerHtml = "";
	if (paginationInfo.pageNumberList.length > 0) {
		$("ul.pagination").empty();
		paginationInnerHtml += '<li class="page-item"><a class="page-link ' + (paginationInfo.firstPage == 0 ? 'disabled' : '') + '" href="javascript:void(0)" data-index="'+ paginationInfo.firstPage + '">Firts Page</a></li>'
		paginationInnerHtml += '<li class="page-item"><a class="page-link ' + (paginationInfo.previousPage == 0 ? 'disabled' : '') + '" href="javascript:void(0)" data-index="'+ paginationInfo.previousPage + '"> < </a></li>'
		$.each(paginationInfo.pageNumberList, function(key, value) {
			paginationInnerHtml += '<li class="page-item"><a class="page-link '+ (value == paginationInfo.currentPage ? 'active' : '') +'" href="javascript:void(0)" data-index="' + value +'">' + value + '</a></li>';
		});
		paginationInnerHtml += '<li class="page-item"><a class="page-link ' + (paginationInfo.nextPage == 0 ? 'disabled' : '') + '" href="javascript:void(0)" data-index="'+ paginationInfo.nextPage + '"> > </a></li>'
		paginationInnerHtml += '<li class="page-item"><a class="page-link ' + (paginationInfo.lastPage == 0 ? 'disabled' : '') + '" href="javascript:void(0)" data-index="'+ paginationInfo.lastPage + '">Last Page</a></li>'
		$("ul.pagination").append(paginationInnerHtml);
	}
}

function renderSystemMessage(responseMsg){
	var systemMessageHtml = "";
	$("#system-message p").empty();
		messHtml = responseMsg
		$("#system-message p").append(messHtml);
}

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

function fnFormatPrice(numParam) {
    var param = numParam;
    var str = param.toLocaleString('vi-VN','');
    str = str.replace(/,/g, '.');
    return str;
}
