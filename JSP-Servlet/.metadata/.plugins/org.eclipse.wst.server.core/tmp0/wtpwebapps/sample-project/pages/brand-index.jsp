<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Brand Management</title>
<jsp:include page="../common/head.jsp" />
<link rel="stylesheet" href="<c:url value='/css/brand.css'/>">
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
			      <a class="nav-item nav-link " href="/product">Product</a>
			      <a class="nav-item nav-link active"  href="/brand">Brand</a>
			    </div>
			  </div>
			</div>
			<div class="right"> <a class="nav-item nav-link logo" href="logout">Log out</a></div>
			</nav>
		</div>
	</div>
	<div class="container">
		<div class="sub-header">
			<div class="float-left sub-title">Brand Management</div>
			<div class="float-right">
				<a class="btn btn-success add-btn" id="addBrandInfoModal"><i
					class="fas fa-plus-square"></i> Add Brand</a>
			</div>
		</div>
		<div>
			<div id= "system-message">
				<h4 class="float-left"></h4>
			</div>
			<div class="search-form float-right form-group"  style="margin-top: 1px;">
				<input class="form-control" type="text" placeholder="Search Brand Name" id="keyword">
				<button type="submit" id="btnSearch" class="search-brand btn btn-info">Search</button>
				<button type="submit" id="reset" class="btn btn-info">Reset</button>
				<button type="submit" id="brandHide" class="search-brand btn btn-info">Hiden brand</button>
		 		<button id="btnExport" class="btn btn-info" style="margin-left: 10px; background-color: black;">Export</button>

			</div>
		</div>
		<table class="table table-bordered table-hover" id="brandInfoTable">
			<thead>
				<tr class="text-center">
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Logo</th>
					<th scope="col">Description</th>
					<th scope="col">Amount Product</th>
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
	<div class="modal fade" id="brandInfoModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<form id="brandInfoForm" role="form" enctype="multipart/form-data">
					<div class="modal-header">
						<h5 class="modal-title">Add Brand</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group d-none">
							<label>Brand ID</label> <input type="text" class="form-control"
								name="brandId" id="brandId" placeholder="Brand ID" readonly>
						</div>
						<div class="form-group">
							<label for="brandName">Brand Name <span
								class="required-field">(*)</span></label> <input type="text"
								class="form-control" id="brandName" name="brandName"
								placeholder="Brand Name">
						</div>
						<div class="form-group">
							<label for="logo">Logo <span class="required-field">(*)</span></label>
							<div class="preview-image-upload" id="logoImg">
								<img  class="image-product"src="<c:url value='/images/image-demo.png'/>" alt="image">
							</div>
							<input type="file" class="form-control upload-image"
								name="logoFiles" accept="image/*" />
							<input type="hidden" class="old-img" id="logo" name="logo">
						</div>
						<div class="form-group">
							<label for="description">Description</label>
							<textarea name="description" id="description" cols="30" rows="3"
								class="form-control" placeholder="Description"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary" id="saveBrandBtn">Save</button>
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
				<div id="modal-body">
					<p class="mess-delte">
						Do you want to delete <b id="deletedBrandName"></b>?
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary" id="deleteSubmitBtn">Delete</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Hide Modal -->
	<div class="modal fade" id="confirmHideModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Hide Brand</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div id="modal-body">
					<p class="mess-hide">
						Products of this brand are currently in stock, cannot be deleted at the moment.
						Do you want to hide <b id="hideBrandName"></b>?
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary" id="hideSubmitBtn">Hide</button>
				</div>
			</div>
		</div>
	</div>
	<!--  Unhide modal-->
	<div class="modal fade" id="confirmUnHideModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">UnHide Brand</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div id="modal-body">
					<p class="mess-delte">
						Do you want to UnHide <b id="unHideBrandName"></b>?
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary" id="unHideSubmitBtn">UnHide</button>
				</div>
			</div>
		</div>
	</div>
	</div> -->
	<div id="wait" style="display:none;width:69px;height:89px;border:1px solid black;position:absolute;top:50%;left:50%;padding:2px;"><img src='https://hubbravissimo.com/wp-content/uploads/2019/07/fff16-862c4e_80c174747b704e778f110260a995cc97mv2.gif' width="64" height="64" /><br>Loading..</div>
	<jsp:include page="../common/footer.jsp" />
	<script src="<c:url value='/js/brand.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/gh/linways/table-to-excel@v1.0.4/dist/tableToExcel.js"></script>
</body>
</html>