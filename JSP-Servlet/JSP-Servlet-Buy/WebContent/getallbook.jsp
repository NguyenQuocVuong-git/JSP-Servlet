<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="model.bean.KhachHang"%> --%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>LIỆT KÊ DANH SÁCH KHÁCH HÀNG</title>
<%-- <%@ include file="header.jsp"%> --%>
</head>
<body>
	</header>
	<div class="container mt-3" class="DanhSach">
		<h2>CÁC LOẠI SÁCH CÓ TRONG THƯ VIỆN</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">First</th>
					<th scope="col">Last</th>
					<th scope="col">Handle</th>
					<th scope="col">Handle</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${listbook}" var="books">
			</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
	$(document).ready(function() {
        $('#example').DataTable({
			"ordering": false,
			"lengthChange": false,
			"searching": true,
			"pageLength": 6
		});
    });
	</script>

	<!-- Footer -->
	<%-- 	<%@ include file="Footer.jsp"%> --%>
	<!-- Footer -->
</body>
</html>