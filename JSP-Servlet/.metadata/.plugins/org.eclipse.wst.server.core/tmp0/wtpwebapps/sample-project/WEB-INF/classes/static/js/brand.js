$(document).ready(function() {
	var statusPage = 0;
	
	findBrands(1,statusPage);
	
	$(document).ajaxStart(function(){
		    $("#wait").css("display", "block");
		  });
	$(document).ajaxComplete(function(){
		    $("#wait").css("display", "none");
		  });
	
	$("#btnExport").click(function() {
		$.ajax({
			url : "/brand/api/exportTable/" + statusPage,
			type : 'GET',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				renderBrandsAllTable(responseData.data.brandsList);
				let table = document.getElementsByTagName("table");
				TableToExcel.convert(table[0], { // html code may contain multiple tables so here we are refering to 1st table tag
					name: `export.xlsx`, // fileName you could use any name
					sheet: {
						name: 'Sheet 1' // sheetName
					}	
				})
				findBrands(1,statusPage);
			}
		})
	});
	
	$('#btnSearch').on('click', function() {
		var keyword = $("#keyword").val()
		searchBrand(1,keyword);
		
	});

	$('#brandHide').on('click', function() {
		statusPage = 1;
		findBrands(1,statusPage);
	})
	
	
	$('#reset').on('click', function() {
		$('#keyword').val("");
		findBrands(1,statusPage);
	});
	
	
	$('.pagination').on('click', '.page-link', function() {
		var pagerNumber = $(this).attr("data-index");
		var keyword = $('#keyword').val();
		if(keyword !=""){
			searchBrand(pagerNumber,keyword);
		}else{
			findBrands(pagerNumber,statusPage);
		}
	})

	var $brandInfoForm = $('#brandInfoForm');
	var $brandInfoModal = $('#brandInfoModal');

	// show form add brand with js
	$('#addBrandInfoModal').on('click', function() {
//		$brandInfoModal.modal("show");
		resetFormModal($brandInfoForm);
		showModalWithCustomizedTitle($brandInfoModal, "Add Brand");
		$('#logoImg img').attr('src', '/images/image-demo.png');
		$('#brandId').closest(".form-group").addClass("d-none");
	});
	
	$("#hideSubmitBtn").on('click' , function() {
		$("#deleteSubmitBtn").attr("data-id", $(this).data("id"));
		hideAndShow($(this).attr("data-id"),1);
	});
	var idBrandHandling;
	$("#brandInfoTable").on('click', '.change-btn', function() {
		$("#unHideBrandName").text($(this).data("name"));
		idBrandHandling = $(this).data("id");
		var nameBrandHandlin = $(this).data("name");
		$('#confirmUnHideModal').modal('show');
//		hideAndShow(idBrandHandling,1);
	});
	
	$("#unHideSubmitBtn").on('click' , function() {
		hideAndShow(idBrandHandling,0);
	});
	
	$("#brandInfoTable").on('click', '.edit-btn', function() {
		$.ajax({
			url : "/brand/api/find?id=" + $(this).data("id"),
			type : 'GET',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				if (responseData.responseCode == 100) {
					var brandInfo = responseData.data;
					resetFormModal($brandInfoForm);
					showModalWithCustomizedTitle($brandInfoModal, "Edit Brand");

					$('#brandId').val(brandInfo.brandId);
					$('#brandName').val(brandInfo.brandName);
					$('#description').val(brandInfo.description);
					
					//nếu logo = null hoặc rỗng thì tự set thành logo mặc định
					var brandLogo = brandInfo.logo;
					if (brandLogo == null || brandLogo == "") {
						brandLogo = "/images/image-demo.png";
					}
					$("#logoImg img").attr("src", brandLogo);
					$("#logo").val(brandLogo);
					$('#brandId').closest(".form-group").removeClass("d-none");
				}
			}
		});
	});
	
	function findBrands(pageNumber, statusPage) {
		$.ajax({
			url : "/brand/api/findAll/"  + pageNumber +"/" + statusPage,
			type : 'GET',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				if (responseData.responseCode == 100) {
					if(statusPage == 0){
						renderBrandsTable(responseData.data.brandsList);
						renderPagination(responseData.data.paginationInfo);
						if($('.pagination').removeClass("d-none")){
							$("#system-message h4").empty();
						}
					}else{
						renderBrandsTableHide(responseData.data.brandsList);
						renderPagination(responseData.data.paginationInfo);
						if($('.pagination').removeClass("d-none")){
							$("#system-message h4").empty();
						}
						if(responseData.data.paginationInfo.pageNumberList.length < 2){
							$('.pagination').addClass("d-none");
						}else{
							$( ".pagination" ).removeClass("d-none")
						}
						renderSystemMessage(responseData.responseMsg);
					}
				}
			}
		});
	}
	
	function hideAndShow(idBrand , status){
		$.ajax({
			url : "/brand/api/hideAndShow/" + idBrand +"/"+status,
			type : 'GET',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				$('#confirmUnHideModal').modal('hide');
				$('#confirmHideModal').modal('hide');
//				$("#modal-body").addClass("d-none");
//				$("#modal-body-hide").removeClass("d-none");
				showNotification(responseData.responseCode == 100, responseData.responseMsg);
				findBrands(1,statusPage);
			}
		});
	}

	var idBrandHandling;
	$("#brandInfoTable").on('click', '.delete-btn', function() {
		$("#deletedBrandName").text($(this).data("name"));
		var nameBrand = $(this).data("name");
		$("#deleteSubmitBtn").attr("data-id", $(this).data("id"));
		$("#hideSubmitBtn").attr("data-id", $(this).data("id"));
		var brandId = $(this).attr("data-id") ;
		$.ajax({
				url : "/brand/api/check?id=" + $(this).attr("data-id")  ,
				type : 'GET',
				dataType : 'json',
				contentType : 'application/json',
				success : function(responseData) {
					
					if(responseData.responseCode == 100){
						$('#confirmDeleteModal').modal('show');
					}else{
						$("#hideBrandName").text(nameBrand);
						$('#confirmHideModal').modal('show');
					}
				}
			});
		
	});

	$("#deleteSubmitBtn").on('click' , function() {
		$.ajax({
			url : "/brand/api/delete/" + $(this).attr("data-id"),
			type : 'DELETE',
			dataType : 'json',
			contentType : 'application/json',
			success : function(responseData) {
				$('#confirmDeleteModal').modal('hide');
				showNotification(responseData.responseCode == 100, responseData.responseMsg);
				findBrands(1,statusPage);
			}
		});
	});
	
	$('#saveBrandBtn').on('click', function (event) {

		event.preventDefault();
		var formData = new FormData($brandInfoForm[0]);
		var brandId = formData.get("brandId");
		var isAddAction = brandId == undefined || brandId == "";
	
		$brandInfoForm.validate({
			ignore: [],
			rules: {
				brandName: {
					required: true,
					maxlength: 100
				},
				logoFiles: {
					required: isAddAction,
				}
			},
			messages: {
				brandName: {
					required: "Please input Brand Name",
					maxlength: "The Brand Name must be less than 100 characters",
				},
				logoFiles: {
					required: "Please upload Brand Logo",
				}
			},
			errorElement: "div",
			errorClass: "error-message-invalid"
		});
		
		if ($brandInfoForm.valid()) {

			$.ajax({
				url: "/brand/api/" + (isAddAction ? "add" : "update"),
				type: 'POST',
				enctype: 'multipart/form-data',
				processData: false,
				contentType: false,
				cache: false,
				timeout: 10000,
				data: formData,
				success: function(responseData) {

					if (responseData.responseCode == 100) {
						$brandInfoModal.modal('hide');
						findBrands(1,statusPage);
						showNotification(true, responseData.responseMsg);
					} else {
						showMsgOnField($brandInfoForm.find("#brandName"), responseData.responseMsg);
					}
				}
			});
		}
	});
});


function searchBrand(pageNumber,keyword) {
	$.ajax({
		url : "/brand/api/search/" + keyword+"/"+pageNumber,
		type : 'GET',
		dataType : 'json',
		contentType : 'application/json',
		success : function(responseData) {
			if (responseData.responseCode == 100) {
				renderBrandsAllTable(responseData.data.brandsList);
				renderPagination(responseData.data.paginationInfo);
				if(responseData.data.paginationInfo.pageNumberList.length < 2){
					$('.pagination').addClass("d-none");
				}else{
					$( ".pagination" ).removeClass("d-none")
				}
				if(pageNumber){
					renderSystemMessage(responseData.responseMsg);
				}
			}
		}
	});
}

function renderBrandsTable(brandsList) {

	var rowHtml = "";
	$("#brandInfoTable tbody").empty();
	$.each(brandsList, function(key, value) {
		if(value.flag == 0){
			rowHtml = "<tr>"
				+		"<td>" + value.brandId + "</td>"
				+		"<td>" + value.brandName + "</td>"
				+		"<td class='text-center'><a href='" + value.logo + "' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='" + value.logo + "'></td>"
				+		"<td>" + value.description + "</td>"
				+		"<td>" + value.amount + "</td>"
				+		"<td class='action-btns'>"
				+			"<a class='edit-btn' data-id='" + value.brandId + "'><i class='fas fa-edit'></i></a> | <a class='delete-btn' data-name='" + value.brandName + "' data-id='" + value.brandId + "'><i class='fas fa-trash-alt'></i></a>"
				+		"</td>"
				+	"</tr>";
		$("#brandInfoTable tbody").append(rowHtml);
		}
	});
}

function renderBrandsTableHide(brandsList) {
	var rowHtml = "";
	$("#brandInfoTable tbody").empty();
	$.each(brandsList, function(key, value) {
		if(value.flag == 1){
			rowHtml = "<tr>"
				+		"<td>" + value.brandId + "</td>"
				+		"<td>" + value.brandName + "</td>"
				+		"<td class='text-center'><a href='" + value.logo + "' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='" + value.logo + "'></td>"
				+		"<td>" + value.description + "</td>"
				+		"<td>" + value.amount + "</td>"
				+		"<td class='action-btns'>"
				+			"<a class='change-btn' data-name='" + value.brandName + "' data-id='" + value.brandId + "'><i class='fas fa-exchange-alt'></i></a>"
				+		"</td>"
				+	"</tr>";
		$("#brandInfoTable tbody").append(rowHtml);
		}
	});
}

function renderBrandsAllTable(brandsList) {
	var rowHtml = "";
	$("#brandInfoTable tbody").empty();
	$.each(brandsList, function(key, value) {
			rowHtml = "<tr>"
				+		"<td>" + value.brandId + "</td>"
				+		"<td>" + value.brandName + "</td>"
				+		"<td class='text-center'><a href='" + value.logo + "' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='" + value.logo + "'></td>"
				+		"<td>" + value.description + "</td>"
				+		"<td>" + value.amount + "</td>"
				+		"<td class='action-btns'>"
				+			"<a class='change-btn' data-name='" + value.brandName + "' data-id='" + value.brandId + "'><i class='fas fa-exchange-alt'></i></a>"
				+		"</td>"
				+	"</tr>";
		$("#brandInfoTable tbody").append(rowHtml);
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
	$("#system-message h4").empty();
		messHtml = responseMsg
		$("#system-message h4").append(messHtml);
}


