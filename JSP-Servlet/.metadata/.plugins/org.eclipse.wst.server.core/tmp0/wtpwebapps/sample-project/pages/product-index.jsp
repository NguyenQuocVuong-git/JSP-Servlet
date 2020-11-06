<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Product Management</title>
<jsp:include page="../common/head.jsp" />
<link rel="stylesheet" href="<c:url value='/css/brand.css'/>">
<link rel="stylesheet" href="<c:url value='/css/product.css'/>">
</head>
<body>
	<div class="nav-bg">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light ">
			<div class="left">
			  <a class="navbar-brand">PILOT PROJECT</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			    <div class="navbar-nav">
			      <a class="nav-item nav-link active" href="/product">Product</a>
			      <a class="nav-item nav-link" href="/brand">Brand</a>
			    </div>
			  </div>
			</div>
			<div class="right"> <a class="nav-item nav-link logo" href="logout">Log out</a></div>
			</nav>
		</div>
	</div>
	<div class="container">
		<div class="sub-header">
			<div class="float-left sub-title">Product Management</div>
			<div class="float-right">
				<a class="btn btn-success add-btn" id="addProductInfoModal"><i
					class="fas fa-plus-square"></i> Add Product</a>
			</div>
		</div>
		<div class="nava">
			<div class=" form-search form-group">
				<div class="search-name">
					<input class="form-control" type="text" placeholder="Search.."
						id="keyword">
				</div>
				<div class="search-price">
					<label class="price" for="cars">Price From: </label> <select
						class="form-control priceFrom" name="priceFrom" id="priceFrom">
						<option value="0">--- Price Selection ---</option>
						<option value="1000000">1.000.000 VND</option>
						<option value="3000000">3.000.000 VND</option>
						<option value="5000000">5.000.000 VND</option>
						<option value="10000000">10.000.000 VND</option>
					</select> <label class="price" for="priceTo">Price To: </label> <select
						class="form-control priceTo" name="price" id="priceTo">
						<option value="" >--- Price Selection ---</option>
						<option value="2000000">2.000.000 VND</option>
						<option value="4000000">4.000.000 VND</option>
						<option value="5000000">5.000.000 VND</option>
						<option value="100000000">100.000.000 VND</option>
					</select>
					<button type="submit" id="btnSearch" class="btn btn-info">Search</button>
					<button type="submit" id="reset" class="btn btn-info">Reset</button>
				</div>
			</div>
			<div class="checkbox-messenger">
				<div class="checkbox">
					<c:forEach items="${listBrand}" var="brand">
						<div class="itemlogo">
							<label for="brandLogo" class="check-area">
								<input type="checkbox" id="${brand.brandId}" name="brand.logo" class="brandClass" value="${brand.brandId}" >
								<img alt="Logo Brand" src="${brand.logo}">
							</label>
						</div>
					</c:forEach>
					<span class="show-more">Show more<i class="icon fas fa-caret-down"></i></span>
					<span class="hidden-item d-none">Hidden <i class="icon-up fas fa-sort-up"></i></span>
				</div>
		 	</div>
		</div>
		<div id= "system-message">
			<p class="mess"></p>	
		</div>
		<table class="table table-bordered table-hover" id="productInfoTable" style="margin-top: 10px";>
			<thead>
				<tr class="text-center">
					<th scope="col">Product ID</th>
					<th scope="col">Product Name</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Brand Name</th>
					<th scope="col">Open For Sale</th>
					<th scope="col">Image</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div class="d-flex justify-content-center">
			<ul class="pagination">
			</ul>
		</div>
	</div>
	<!-- Modal Add and Edit Brand -->
	<div class="modal fade" id="productInfoModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<form id="productInfoForm" role="form" enctype="multipart/form-data">
					<div class="modal-header">
						<h5 class="modal-title">Add Product</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">
						<div class="form-group d-none">
							<label>Product ID</label> <input type="text" class="form-control"
								name="productId" id="productId" placeholder="Product ID"
								readonly>
						</div>
						<div class="form-group">
							<label for="productName">Product Name <span
								class="required-field">(*)</span></label> <input type="text"
								class="form-control" id="productName" name="productName"
								placeholder="Product Name">
						</div>
						<div class="group-double ">
							<div class="form-group priceview">
								<label for="price ">Price <span class="required-field">(*)</span></label>
								<input name="price" id="price" class="form-control"
									placeholder="Price">
							</div>
							<div class="form-group quantity">
								<label for="quantity">Quantity <span
									class="required-field">(*)</span></label> <input name="quantity"
									id="quantity" class="form-control" placeholder="Quantity">
							</div>
						</div>
						<div class="group-double">
							<div class="form-group brandName">
								<label for="brandId">Brand Name</label> <select
									class="form-control" id="brandId" name="brandEntity.brandId">
									<c:forEach items="${listBrand}" var="brand">
										<option value="${brand.brandId}">${brand.brandName}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group saleDate">
								<label for="openForSale">Open For Sale <span
									class="required-field">(*)</span></label> <input type=date
									name="saleDate" id="saleDate" value="2020-09-23" class="form-control"
									placeholder="Open for sale">
							</div>
						</div>
						<div class="group-double">
							<div class="form-group images">
								<label for="img">Images <span class="required-field">(*)</span></label>
								<div class="preview-image-upload " id="logoImg">
									<img class="image-product" src="<c:url value='/images/image-demo.png'/>" alt="image">
								</div>
								<input type="file" class="form-control upload-image"
									name="imageFiles" accept="image/*" /> <input type="hidden"
									class="old-img" id="image" name="image">
							</div>
							<div class="form-group description">
								<label for="description">Description</label>
								<textarea name="description" id="description" cols="30" rows="3"
								class="form-control" placeholder="Description"></textarea>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary" id="saveProductBtn">Save</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Modal Confirm Deleting Brand -->
	<div class="modal fade" id="confirmDeleteModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Delete Brand</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						Do you want to delete <b id="deletedProductName"></b>?
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary" id="deleteSubmitBtn">YES</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
	<script src="<c:url value='/js/product.js'/>"></script>
</body>
</html>