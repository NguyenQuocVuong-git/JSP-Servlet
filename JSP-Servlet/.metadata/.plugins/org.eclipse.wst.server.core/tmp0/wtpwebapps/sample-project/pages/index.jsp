<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Điện Máy Xanh</title>
<jsp:include page="../common/head.jsp" />
<link rel="stylesheet" href="<c:url value='/css/index.css'/>">
</head>
<body class="d-flex flex-column h-100">
	<div class="container-fluid">
		<div class="top-banner row">
			<img class="mx-auto" src="images/Tragop-1200-44-1200x44-1.png" />
		</div>
	</div>
	<header>
		<div class="container">
			<div class="row">
				<div class="left-area float-left d-flex">
					<div class="logo">
						<a class="logo" title="Về trang chủ DienmayXanh.com" href="/"> <i class="icon-dmx dmx-logo"></i> </a>
					</div>
					<div class="province-box">
						<b>Xem giá, tồn kho ở</b>
						<a class="province" data-toggle="modal" data-target="#selectProvinceModal"> TP. Hồ Chí Minh <i class="fas fa-chevron-down"></i></a>
						<div class="modal fade" id="selectProvinceModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-md">
							  	<div class="modal-content">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
									<div class="modal-body">
										<form>
											<div class="form-group">
												<label for="province"><strong>Chọn Tỉnh Thành</strong></label>
												<select class="form-control" id="province">
													<option>TP. Hồ Chí Minh</option>
													<option>TP. Hà Nội</option>
													<option>TP. Huê</option>
												</select>
											</div>
											<div class="form-group">
												<label for="district"><strong>Chọn đầy đủ địa chỉ nhận hàng</strong>  để biết chính xác thời gian giao</label>
												<select class="form-control" id="district">
													<option>Vui lòng chọn Quận/Huyện</option>
												</select>
											</div>
											<div class="form-group">
												<select class="form-control" id="province" disabled>
													<option>Vui lòng chọn Phường/Xã</option>
												</select>
											</div>
											<div class="form-group">
												<input type="text" class="form-control" id="detailAddress" placeholder="Số nhà, tên đường" disabled>
											</div>
										</form>	
									</div>	
									<div class="modal-footer">
										<button type="button" class="btn btn-default accept-btn" data-dismiss="modal">Xác Nhận</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="search-area">
						<form class="search-form">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Bạn tìm gì...">
								<div class="input-group-append">
									<span class="input-group-text"><i class="fas fa-search"></i></span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="right-area float-right">
					<a href="/kinh-nghiem-hay" class="refer-link">Kinh nghiệm hay <span>&amp; Tin khuyến mãi <label class="arr-down"></label></span></a>
					<a href="/kinh-nghiem-hay" class="refer-link">1800.1061 <span>&amp; Tổng đài miễn phí </span></a>
					<a href="/kinh-nghiem-hay" class="refer-link one-line"><i class="fas fa-shopping-cart"></i></a>
					<a href="/kinh-nghiem-hay" class="refer-link one-line">Lịch sử mua hàng</a>
				</div>
			</div>	
		</div>
	</header>
	<nav>
		<div class="container">
			<ul class="d-flex fixed-nav row">
				<li class="active"><a><i class="fas fa-bars"></i> Danh Mục</a></li>
				<li><a>Xem Tất Cả</a></li>
				<li><a class="hot-event"><div class="dot"><span class="ping"></span></div><span class="text">Tivi Giảm Lớn 49%</span></a></li>
				<li><a>Quạt Điều Hòa Ưu Đãi Đến 34%</a></li>
				<li><a class="hot-event"><div class="dot"><span class="ping"></span></div><span class="text">Bỏ cũ lấy mới máy lọc nước giảm 30%</span></a></li>
			</ul>
		</div>
	</nav>
	<main class="container">
		<div class="row mixed-content ">
			<div class="local-nav">
				<ul class="list-nav-item">
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icon-tivi"></i>
							<a href="/tivi">Tivi</a>,&nbsp;
							<a href="/tivi">Loa Karaoke</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icon-tulanh"></i>
							<a href="/tivi">Tủ lạnh</a>,&nbsp;
							<a href="/tivi">Tủ đông</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title"><b>TỦ LẠNH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title"><b>TỦ ĐÔNG </b><a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-maygiat"></i>
							<a href="/tivi">Máy giặt</a>,&nbsp;
							<a href="/tivi">Sấy quần áo</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icon-tivi"></i>
							<a href="/tivi">Máy lạnh</a>,&nbsp;
							<a href="/tivi">Quạt điều hòa</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-locnuoc"></i>
							<a href="/tivi">Lọc nước</a>,&nbsp;
							<a href="/tivi">Máy nước nóng</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title"><b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-giadung"></i>
							<a href="/tivi">Điện gia dụng</a>,&nbsp;
							<a href="/tivi">Quạt</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title"></b>TIVI</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title"><b>LOA ÂM THANH</b> <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-dodung"></i>
							<a href="/tivi">Đồ dùng gia đình </a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-tele"></i>
							<a href="/tivi">Điện thoại</a>,&nbsp;
							<a href="/tivi">Laptop</a>,&nbsp;
							<a href="/tivi">Tablet</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-ict"></i>
							<a href="/tivi">Máy bộ</a>,&nbsp;
							<a href="/tivi">Màn hình</a>,&nbsp;
							<a href="/tivi">Máy In</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-phukien"></i>
							<a href="/tivi">Phụ kiện</a>,&nbsp;
							<a href="/tivi">Đồng hồ</a>,&nbsp;
							<a href="/tivi"> Vali</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-maycu"></i>
							<a href="/tivi">Máy cũ, trưng bày</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item">
						<div class="sup-menu">
							<i class="icon-dmx icondmx-simso"></i>
							<a href="/tivi">Sim số, Thẻ cào</a>,&nbsp;
							<a href="/tivi">Thu hộ</a>
						</div>
						<div class="sub-menu">
							<ul class="group">
								<li class="group-title">TIVI <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
							<ul class="group">
								<li class="group-title">LOA ÂM THANH <a class="view-all">Xem Tất Cả<i class="fas fa-caret-right"></i></a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi trả góp 0-1%</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Sony</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Samsung</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">LG</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">TCL</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 32-43 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Từ 44-54 inch</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Dưới 7 triệu</a></li>
								<li class="item"><a href="/tivi-tra-gop-0-phan-tram">Tivi cao cấp</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<div class="hot-campaign">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
					  	<div class="carousel-item active">
							<img class="d-block w-100" src="images/03_07_2020_15_50_29_SONY-TV--690-300-(1).png" alt="First slide">
					  	</div>
					  	<div class="carousel-item">
							<img class="d-block w-100" src="images/TCL-TV-690-300-690x300.png" alt="Second slide">
					  	</div>
					  	<div class="carousel-item">
							<img class="d-block w-100" src="images/690-300-690x300-15.png"  alt="Third slide">
					  	</div>
					  	<div class="carousel-item">
							<img class="d-block w-100" src="images/BIG-MG-690-300-690x300-1.png"  alt="Third slide">
					  	</div>
						</div>
					<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
					  	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					 	<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
					  	<span class="carousel-control-next-icon" aria-hidden="true"></span>
					  	<span class="sr-only">Next</span>
					</a>
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"><span>Bỏ Cũ Lấy Mới<br>Chảo Giảm 50%</span></li>
						<li data-target="#myCarousel" data-slide-to="1"><span>Sắm Tivi TCL<br>Giảm Đến 6.2 Triệu</span></li>
						<li data-target="#myCarousel" data-slide-to="2"><span>Mua TV Samsung<br>Giảm Đến 18 Triệu</span></li>
						<li data-target="#myCarousel" data-slide-to="3"><span>Dụng Cụ Cầm Tay<br>Giảm Đến 20%</span></li>
					</ol>
				</div>
			</div>
			<div class="hot-news">
				<ul>
					<li><a class="bold-link">KINH NGHIỆM HAY - VIDEO <i class="fas fa-caret-right"></i></a></li>
					<li><a>Máy giặt cửa trên thế hệ mới TH2111DSAB của LG có gì HOT?</li>
					<li><a></a>Top 10 máy lạnh bán chạy nhất Điện máy XANH năm 2019</li>
				</ul>
				<div>
					<img src="images/26064-260x64.png"/>
					<img src="images/260X64.pngdesk-260x64.png"/>
					<img src="images/StickyBannerTCL-2-260x64.png"/>
				</div>
			</div>
		</div>
		<section class="row top-deal">
			<div class="mt-2"><img class="w-100" src="images/vunggiasocdesk-1200x80.png"></div>
			<div class="products-list">
				<div id="topDealProductsCarousel" class="carousel slide" data-ride="carousel" data-interval="500000">
					<div class="carousel-inner">
					  	<div class="carousel-item active">
							<ul>
								<li class="product-info">
									<div class="prod-avatar">
										<img  src="images/lg-rn7-1-600x600.jpg">
									</div>
									<div class="prod-deal">
										<img src="images/giamsoc_optimized.png">
									</div>
									<div class="prod-name">
										Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
									</div>
									<span class="prod-price">8.990.000<sup>₫</sup></span>
									<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img src="images/tcl-40s6500-550x340.jpg">
									</div>
									<div class="prod-deal">
									</div>
									<div class="prod-name">
										TCL Android TV 40" 
									</div>
									<div class="prod-price">5.990.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">6.990.000₫</span>
										<label class="discount-percent">(-14%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/online-giảm-sốc-1x.png">								
									</div>
									<div class="prod-name">
										Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
									</div>
									<div class="prod-price">6.690.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<div class="prod-promotion">Giảm <b>800.000₫</b></div>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">								
									<div class="prod-avatar">
										<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/online-giảm-sốc-1x.png">								
									</div>
									<div class="prod-name">
										Samsung Inverter 9 Kg  
									</div>
									<div class="prod-price">11.490.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Giảm <b>2.100.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
									</div>
									<div class="prod-deal">		
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Beko Inverter 1 HP 
									</div>
									<div class="prod-price">7.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Quà <b>800.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/midea-ac120-16ar-13-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/online-giảm-sốc-1x.png">							
									</div>
									<div class="prod-name">
										Quạt điều hòa Midea AC120-16AR  
									</div>
									<div class="prod-price">1.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">2.750.000₫</span>
										<label class="discount-percent">(-34%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">700 đánh giá</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="carousel-item">
							<ul>
								<li class="product-info">
									<div class="prod-avatar">
										<img  src="images/lg-rn7-1-600x600.jpg">
									</div>
									<div class="prod-deal">
										<img src="images/giamsoc_optimized.png">
									</div>
									<div class="prod-name">
										Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
									</div>
									<span class="prod-price">8.990.000<sup>₫</sup></span>
									<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/tcl-40s6500-550x340.jpg">
									</div>
									<div class="prod-deal">									
									</div>
									<div class="prod-name">
										TCL Android TV 40" 
									</div>
									<div class="prod-price">5.990.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">6.990.000₫</span>
										<label class="discount-percent">(-14%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/online-giảm-sốc-1x.png">								
									</div>
									<div class="prod-name">
										Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
									</div>
									<div class="prod-price">6.690.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<div class="prod-promotion">Giảm <b>800.000₫</b></div>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">								
									<div class="prod-avatar">
										<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Samsung Inverter 9 Kg  
									</div>
									<div class="prod-price">11.490.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Giảm <b>2.100.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
									</div>
									<div class="prod-deal">		
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Beko Inverter 1 HP 
									</div>
									<div class="prod-price">7.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Quà <b>800.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/midea-ac120-16ar-13-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Quạt điều hòa Midea AC120-16AR  
									</div>
									<div class="prod-price">1.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">2.750.000₫</span>
										<label class="discount-percent">(-34%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">700 đánh giá</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="carousel-item">
							<ul>
								<li class="product-info">
									<div class="prod-avatar">
										<img  src="images/lg-rn7-1-600x600.jpg">
									</div>
									<div class="prod-deal">
										<img src="images/giamsoc_optimized.png">
									</div>
									<div class="prod-name">
										Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
									</div>
									<span class="prod-price">8.990.000<sup>₫</sup></span>
									<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/tcl-40s6500-550x340.jpg">
									</div>
									<div class="prod-deal">									
									</div>
									<div class="prod-name">
										TCL Android TV 40" 
									</div>
									<div class="prod-price">5.990.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">6.990.000₫</span>
										<label class="discount-percent">(-14%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/online-giảm-sốc-1x.png">								
									</div>
									<div class="prod-name">
										Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
									</div>
									<div class="prod-price">6.690.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<div class="prod-promotion">Giảm <b>800.000₫</b></div>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">								
									<div class="prod-avatar">
										<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Samsung Inverter 9 Kg  
									</div>
									<div class="prod-price">11.490.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Giảm <b>2.100.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
									</div>
									<div class="prod-deal">		
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Beko Inverter 1 HP 
									</div>
									<div class="prod-price">7.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Quà <b>800.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/midea-ac120-16ar-13-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Quạt điều hòa Midea AC120-16AR  
									</div>
									<div class="prod-price">1.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">2.750.000₫</span>
										<label class="discount-percent">(-34%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">700 đánh giá</span>
									</div>
								</li>
							</ul>
						</div>
						<div class="carousel-item">
							<ul>
								<li class="product-info">
									<div class="prod-avatar">
										<img  src="images/lg-rn7-1-600x600.jpg">
									</div>
									<div class="prod-deal">
										<img src="images/giamsoc_optimized.png">
									</div>
									<div class="prod-name">
										Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
									</div>
									<span class="prod-price">8.990.000<sup>₫</sup></span>
									<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/tcl-40s6500-550x340.jpg">
									</div>
									<div class="prod-deal">									
									</div>
									<div class="prod-name">
										TCL Android TV 40" 
									</div>
									<div class="prod-price">5.990.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">6.990.000₫</span>
										<label class="discount-percent">(-14%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/online-giảm-sốc-1x.png">								
									</div>
									<div class="prod-name">
										Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
									</div>
									<div class="prod-price">6.690.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<div class="prod-promotion">Giảm <b>800.000₫</b></div>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">								
									<div class="prod-avatar">
										<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Samsung Inverter 9 Kg  
									</div>
									<div class="prod-price">11.490.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Giảm <b>2.100.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
									</div>
									<div class="prod-deal">		
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Beko Inverter 1 HP 
									</div>
									<div class="prod-price">7.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										Quà <b>800.000₫</b>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">70 đánh giá</span>
									</div>
								</li>
								<li class="product-info">
									<div class="prod-payment">
										<span>Trả góp <b>0%</b></span>
									</div>
									<div class="prod-avatar">
										<img  src="images/midea-ac120-16ar-13-300x300.jpg">
									</div>
									<div class="prod-deal">	
										<img src="images/giamsoc_optimized.png">								
									</div>
									<div class="prod-name">
										Quạt điều hòa Midea AC120-16AR  
									</div>
									<div class="prod-price">1.790.000<sup>₫</sup></div>
									<div class="prod-promotion">
										<span class="linethough">2.750.000₫</span>
										<label class="discount-percent">(-34%)</label>
									</div>
									<div class="prod-rating">
										<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
										<span class="rating-number">700 đánh giá</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<a class="carousel-control-prev" href="#topDealProductsCarousel" role="button" data-slide="prev">
					  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					  <span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#topDealProductsCarousel" role="button" data-slide="next">
					  <span class="carousel-control-next-icon" aria-hidden="true"></span>
					  <span class="sr-only">Next</span>
					</a>					
				</div>
			</div>
		</section>		
		<section class="row discount-in-day">
			<div class="section-title">Khuyến mãi Hot mỗi ngày</div>
			<div class="group-tabs">
				<ul class="nav-tabs product-types">
					<li class="nav-tab-item active"><a class="nav-link" href="#tab-1">Nổi bật</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-2">Máy lạnh</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-3">Điện thoại, laptop</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-4">Tivi, Loa </a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-5">Tủ lạnh, Tủ đông</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-6">Máy giặt</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-7">Máy lọc nước</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-8">Điện gia dụng</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-9">Đồ dùng nhà bếp</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-10">Phụ kiện</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-11">Đồng hồ</a></li>
					<li class="nav-tab-item"><a class="nav-link" href="#tab-12">Máy nước nóng</a></li>
				</div>			
				<div class="tab-content">
					<div class="tab-panel active" id="tab-1">
						<ul class="products-list">
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="tab-panel" id="tab-2">
						<ul class="products-list">
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>							
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>							
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>							
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>							
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/midea-ac120-16ar-13-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">							
								</div>
								<div class="prod-name">
									Quạt điều hòa Midea AC120-16AR  
								</div>
								<div class="prod-price">1.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">2.750.000₫</span>
									<label class="discount-percent">(-34%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">700 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/panasonic-nr-ba229pkvn-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Panasonic Inverter 188 lít  <span class="new-prod-label">Mới 2020</span>
								</div>
								<div class="prod-price">6.690.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<div class="prod-promotion">Giảm <b>800.000₫</b></div>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>2.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">								
								<div class="prod-avatar">
									<img  src="images/may-giat-samsung-ww90j54e0bw-sv-dd-300x300.jpg">
								</div>
								<div class="prod-deal">	
									<img src="images/online-giảm-sốc-1x.png">								
								</div>
								<div class="prod-name">
									Samsung Inverter 9 Kg  
								</div>
								<div class="prod-price">11.490.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Giảm <b>2.100.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.1</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
							<li class="product-info">
								<div class="prod-avatar">
									<img  src="images/lg-rn7-1-600x600.jpg">
								</div>
								<div class="prod-deal">
									<img src="images/giamsoc_optimized.png">
								</div>
								<div class="prod-name">
									Loa Karaoke LG Xboom RN7 <span class="new-prod-label">Mới 2020</span>
								</div>
								<span class="prod-price">8.990.000<sup>₫</sup></span>
								<div class="prod-promotion">Giảm <b>4.400.000₫</b> và quà <b>400.000₫</b></div>
							</li>
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/tcl-40s6500-550x340.jpg">
								</div>
								<div class="prod-deal">									
								</div>
								<div class="prod-name">
									TCL Android TV 40" 
								</div>
								<div class="prod-price">5.990.000<sup>₫</sup></div>
								<div class="prod-promotion">
									<span class="linethough">6.990.000₫</span>
									<label class="discount-percent">(-14%)</label>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>4.2</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>							
							<li class="product-info">
								<div class="prod-payment">
									<span>Trả góp <b>0%</b></span>
								</div>
								<div class="prod-avatar">
									<img  src="images/may-lanh-beko-rsvc09vs-5-550x160.jpg">
								</div>
								<div class="prod-deal">		
									<img src="images/giamsoc_optimized.png">								
								</div>
								<div class="prod-name">
									Beko Inverter 1 HP 
								</div>
								<div class="prod-price">7.790.000<sup>₫</sup></div>
								<div class="prod-promotion">
									Quà <b>800.000₫</b>
								</div>
								<div class="prod-rating">
									<span class="rating-point"><b>3.9</b>/5<i class="icon-dmx icondmx-star"></i></span>
									<span class="rating-number">70 đánh giá</span>
								</div>
							</li>
						</ul>
					</div>
				</div>	
			</div>
		</section>
		<section class="row ads-area">
			<img src="images/CHUYENTRANGKANG4-394x76.jpg">
			<img src="images/HERUCRO-06-394x76.jpg">
			<img src="images/HERUCRO-01-394x76.jpg">
		</section>		
		<section class="hot-videos-area">
			<div class="section-title">Kinh nghiệm hay, mẹo vặt, nấu ăn</div>
			<div class="hot-videos row">
				<div class="col-sm-7">
					<a class="hero-video">
						<div class="video-image btn-play-video" data-youtube-url="https://www.youtube.com/embed/dR6Xrs7_zAc">
							<img src="images/maxresdefault.jpg">
						</div>						
						<div class="video-title">Top 10 máy lạnh bán chạy nhất Điện máy XANH năm 2019</div>
					</a>
				</div>
				<div class="col-sm-5 other-videos pl-0">
					<a class="row video-item">
						<div class="col-sm-3 video-image px-0 btn-play-video" data-youtube-url="https://www.youtube.com/embed/BQ3s5XjsJ7c">
							<img src="images/hqdefault.jpg">
						</div>
						<div class="col-sm-9 video-title">Top 10 máy giặt bán chạy nhất Điện máy XANH năm 2019</div>
					</a>
					<a class="row video-item">
						<div class="col-sm-3 video-image px-0 btn-play-video" data-youtube-url="https://www.youtube.com/embed/BQ3s5XjsJ7c">
							<img src="images/hqdefault (1).jpg">
						</div>
						<div class="col-sm-9 video-title">Chọn máy giặt bao nhiêu kg thì phù hợp với lượng quần áo gia đình?</div>
					</a>
					<a class="row video-item">
						<div class="col-sm-3 video-image px-0">
							<img src="images/top-10-quat-dieu-hoa-ban-chay-nhat-thang-05-2020-t-665x320.jpg">
						</div>
						<div class="col-sm-9 video-title">Top 10 quạt điều hòa bán chạy nhất tháng 05/2020 tại Điện máy XANH</div>
					</a>
					<a class="row video-item">
						<div class="col-sm-3 video-image px-0">
							<img src="images/top-5-may-giat-cua-truoc-ban-chay-nhat-thang-05-20-1-665x320.jpg">
						</div>
						<div class="col-sm-9 video-title">Top 5 Máy giặt cửa trước bán chạy nhất tháng 05/2020 tại Điện máy XANH</div>
					</a>
					<a class="row video-item">
						<div class="col-sm-3 video-image px-0">
							<img src="images/top-5-may-giat-cua-tren-ban-chay-nhat-thang-05-202-2-665x320.jpg">
						</div>
						<div class="col-sm-9 video-title">Top 5 máy giặt cửa trên bán chạy nhất tháng 05/2020 tại Điện máy XANH</div>
					</a>
				</div>				
			</div>			
			<div class="video-player-modal d-none">
				<div class="video-player-body">
					<i class="close-btn fas fa-times"></i>
					<div class="video-player"></div>
				</div>
			</div>
		</section>			
	</main>
	<div id="online-support">
		<a href="#">
			<img src="images/iconinvitechat_2.v201901000046.png">
			<span>Hỗ trợ<br> online</span>
		</a>
	</div>
	<div id="goto-top">↑</div>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<ul class="col">
					<li><strong>Thông tin điện máy xanh</strong></li>
					<li>
						<a rel="nofollow" href="/he-thong-sieu-thi-dien-may" title="Hệ thống siêu thị">Hệ thống 1054 siêu thị <small>(8:00 - 22:00)</small></a>
					</li>
					<li><a rel="nofollow" href="/gioi-thieu" title="Giới thiệu công ty">Giới thiệu công ty</a></li>
					<li><a href="https://vieclam.thegioididong.com" title="Tìm việc làm">Tìm việc làm</a></li>
					<li><a rel="nofollow" href="/lien-he" title="Liên hệ, góp ý">Liên hệ, góp ý</a></li>
				</ul>
				<ul class="col">
					<li><strong>Hỗ trợ khách hàng</strong></li>
					<li><a rel="nofollow" href="/tra-gop" title="Tìm hiểu về mua trả góp">Tìm hiểu về mua trả góp</a></li>
					<li><a rel="nofollow" href="/kinh-nghiem-hay/chinh-sach-giao-hang-lap-dat-1261528" title="Giao hàng, lắp đặt">Giao hàng, lắp đặt</a></li>
					<li><a rel="nofollow" href="/bao-hanh-doi-tra" title="Bảo hành, đổi trả">Bảo hành, đổi trả</a></li>
					<li><a rel="nofollow" href="/ve-sinh-may-lanh" title="Dịch vụ vệ sinh máy lạnh, máy giặt, quạt">DV vệ sinh máy lạnh, máy giặt, quạt</a></li>
				</ul>
				<ul class="col">
					<li>
						<strong>Tổng đài hỗ trợ (Gọi miễn phí)</strong>
						<p>Mua hàng <a href="tel:18001061">1800.1061</a> (7:30 - 22:00)</p>
						<p>Kỹ thuật <a href="tel:18001764">1800.1764</a> (7:30 - 22:00)</p>
						<p>Bảo hành<a href="tel:18001065">1800.1065</a> (8:00 - 21:00)</p>
						<p>Khiếu nại <a href="tel:18001063">1800.1063</a> (8:00 - 21:30)</p>
						<a target="_blank" rel="nofollow" class="bct" href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=20790"> <i class="icondmx-bct"></i> </a>
						<a class="logo-chg" href="/dieu-khoan-su-dung#giai-quyet-khieu-nai"> <i class="icondmx-chg"></i> </a>
						<div id="DMCA-badge">
							<a href="https://www.dmca.com/Protection/Status.aspx?ID=69bc7638-1181-4a0f-ab78-247bea1eab81&amp;refurl=https://www.dienmayxanh.com/" title="DMCA.com Protection Status" class="dmca-badge">
								<img
									class="lazy"
									data-src="https://cdn.tgdd.vn/dmx2016/Content/images/dmca_protected_sml_120n.png"
									alt="DMCA.com Protection Status"
									src="https://cdn.tgdd.vn/dmx2016/Content/images/dmca_protected_sml_120n.png"
									style="display: inline; opacity: 1;"
								/>
							</a>
						</div>
					</li>
				</ul>
				<ul class="col">
					<li>
						<a target="_blank" href="https://facebook.com/dienmayxanhcom" class="linkfb"> <i class="icon-dmx  icondmx-share1"></i> 1559.6k fan </a>
						<a target="_blank" href="https://www.youtube.com/user/dienmaycom" class="linkyt"> <i class="icon-dmx icondmx-share3"></i> 485k đăng ký </a> <br />
						<p>Website cùng tập đoàn:</p>
						<a class="mwg-logo" target="_blank" href="https://www.maiamtgdd.vn/"> <i class="icon-dmx icondmx-logomaiam"></i> </a> 
						<a class="mwg-logo" target="_blank" href="https://www.thegioididong.com/"> <i class="icon-dmx  icondmx-logotgdd"></i> </a>
						<a class="mwg-logo" target="_blank" href="https://www.bachhoaxanh.com/"> <i class="icon-dmx  icondmx-logobhx"></i> </a>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<jsp:include page="../common/footer.jsp" />
	<script src="<c:url value='/js/index.js'/>"></script>
</body>
</html>