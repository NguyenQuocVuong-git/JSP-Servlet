<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
	
<title>Brand Management</title>
    <jsp:include page="../common/head.jsp"/>

    <link rel="stylesheet" href="<c:url value='/css/brand.css'/> ">
</head>
<body>
 	<jsp:include page="../common/header.jsp"/>
 
 	<div class="container-fluid">
 		<div class="container wrapper">
			<div class="sub-header">
				<div class="float-left sub-title">Brand Management</div>
				<div class="float-right">
					<a class="btn add-btn" id="addBrandLink">Add Brand</a>
				</div>
			</div>
			<div class="search-bar">
				<form action="/brand/search" class="form-inline align-items-center" method="POST">
					<div class="form-group">
						<span class="clearable">
							<input type="text" class="form-control" id="keyword" name="keyword" placeholder="Brand Name" /> 
							<span id="resetSearchBrand"><i class="clearable__clear">&times;</i></span> 
						
						</span>
					</div>
					<button type="button" id="brandSearchBtn" class="btn btn-primary">Search</button>
				</form>
			</div>
			
			<p id="searchResultNotify" class="text-center"></p>
			
			<table class="table table-bordered" id="brandDetailsTable">
				<thead>
					<tr class="text-center">
						<th scope="col" width="6%">ID</th>
						<th scope="col" width="20%">Name</th>
						<th scope="col">Logo</th>
						<th scope="col" width="40%">Description</th>
						<th scope="col" width="10%"></th>
					</tr>
				</thead>
				<tbody>
					<!-- rendered by JS -->
				</tbody>
			</table>

			<div class="d-flex justify-content-center">
				<ul class="pagination">
					<!-- JS code -->
				</ul>
			</div>
		</div>
 	</div>
 	
 	<!-- Modal to Add/Edit Brand -->
    <div class="modal fade" id="brandModifyModal">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <form id="brandInfoForm" role="form" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h5 class="modal-title">
                            Brand Form
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group d-none">
                            <label class="col-4">Brand ID</label>
                            <div class="col-8">
                            	<input type="text" class="form-control" id="brandId" name="brandId" placeholder="Enter Brand ID" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-4" for="brandName">Brand Name <span class="required-mask">(*)</span></label>
                            <div class="col-8">
                            	<input type="text" class="form-control" id="brandName" name="brandName" placeholder="Enter Brand Name" required>
                            </div>
                        </div>
                        <div class="form-group" id="brandLogo">
                            <label class="col-4" for="logo">Logo <span class="required-mask">(*)</span></label>
							<div class="col-8 img-area">
								<div class="preview-img-upload" id="logoImg">
									<img src="<c:url value="/images/image-demo.png"/>" alt="logo-image">
								</div>
								<input type="file" class="form-control upload-img" name="logoFiles" accept="image/*">
							</div>
							<input type="hidden" class="old-img" id="logo" name="logo">
						</div>
                        <div class="form-group">
                            <label class="col-4" for="description">Description</label>
                            <div class="col-8">
                            	<textarea class="form-control" id="description" name="description" cols="30" rows="3" placeholder="Enter description"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-primary" id="brandSaveBtn">Submit</button>
					</div>
                </form>
            </div>
        </div>
    </div> 	
 	
 	<!-- Modal to Confirm Deleting Brand -->
    <div class="modal fade" id="confirmDeleteModal">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h5 class="modal-title">Are You Sure ?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Do you really want to delete brand <b id="brandToBeDeleted"></b>? <br>
                    This process can not be undone.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-warning" id="delSubmmitBtn">Confirm</button>
                </div>
            </div>    
        </div>
    </div>

	<jsp:include page="../common/footer.jsp"/>
	
	<script src="<c:url value='/js/brand.js'/>"></script>
    
</body>
</html>