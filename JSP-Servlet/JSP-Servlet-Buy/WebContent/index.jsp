<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Student"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Magrabbit library</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style>
.fakeimg {
	height: auto;
	background: #aaa;
}
.content {
	text-overflow: ellipsis;
	overflow: hidden;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	display: -webkit-box;
}
.active {
	overflow: unset;
	text-overflow: unset;
	display: block;
}
</style>
</head>
<body>
	<div class="container">
		<!-- Phần header website -->
		<div class="jumbotron text-center"
			style="margin-bottom: 0; padding: 0">
			<img alt="img-header"
				src="https://img.giaoduc.net.vn//w700/Uploaded/2018/edxwpcqdh/2017_08_18/thoi_quen_doc_sach.jpg"
				style="height: 466px; width: 1110px;">
			<h5>Sách mang lại cho chúng ta nguồn kiến thức vô tận, đọc một
				quyển sách một thế giới mới như được mở ra</h5>
		</div>
		<!-- Kết thúc phần header website -->
		<!-- Phần menu chính -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand" href="#">Magrabbit library</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<!-- 	<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="LoginServlet">Mượn Sách</a></li> -->
				<li class="nav-item active"><a class="nav-link" href="PageController?action=login">Login</a></li>
					<!-- href="PageController?action=login">Login</a></li> -->
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="button"><a href="PageController?action=SearchByInput">Search</a></button>
			</form>
		</div>
		</nav>
		<!-- Kết thúc phần menu chính -->
		<!-- Phần nội dung chính -->
		<div class="row">
			<!-- Cột trái -->
			<div class="col-sm-4">
				<h2>Lịch Sử Thư viện</h2>
				<h5>Hình ảnh:</h5>
				<div class="fakeimg" id="img-libary">
					<img alt="libary"
						src="data:image/jpeg;base64,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"
						width="100%">
				</div>
				<p>Với 100 triệu quyển sách được cập nhật mỗi năm hứa
					hẹn sẽ cung cấp đủ kiến thức vô tận</p>
				<h3>Liên kết</h3>
				<p>Nội dung mục liên kết</p>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link active" href="#">Kích
							hoạt</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Liên kết
							1</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Liên kết
							2</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Vô
							hiệu hóa</a></li>
				</ul>
				<hr class="d-sm-none">
			</div>
			<!-- Kết thúc cột trái -->
			<!-- Cột phải -->
			<div class="col-sm-8">
				<div>
					<h2>Sách HTML</h2>
					<h5>Mô tả tiêu đề, Ngày 01 tháng 01, 2020</h5>
					<div class="fakeimg">
						<img alt="sachhtml"
							src="https://giuseart.com/wp-content/uploads/2017/02/h%E1%BB%8Dc-html-c%C6%A1-b%E1%BA%A3n-1.png"
							style="width: 100%">
					</div>
					<p id="contents" class="content">Để trở thành một chuyên gia
						thiết kế web, bạn cần hiểu rõ bối cảnh phát triển nhanh chóng của
						các công nghệ web, trong đó có công nghệ thiết kế web thích ứng.
						Hiểu theo nghĩa rộng, thiết kế web thích ứng là việc thiết kế
						website phù hợp với hành vi của người dùng và khả năng của màn
						hình hiển thị. Nếu cho rằng cần tạo một phiên bản “mobile” cho
						website của mình, bạn hãy nghĩ lại. Thiết kế web thích ứng cung
						cấp một bản thiết kế có khả năng làm việc tốt với desktop,
						smartphone và nhiều thiết bị khác. HTML5, cũng như CSS3 vẫn đang
						tiếp tục hoàn thiện và cuốn sách này sẽ giúp bạn nắm được những
						khái niệm nền tảng về cách tổ chức, sáng tạo và phân phối nội dung
						web một cách hiệu quả thông qua những phương pháp tối ưu nhất.Cuốn
						sách này gồm 15 bài học, giúp bạn tìm hiểu các kiến thức HTM5 và
						CSS3 cơ bản và nâng cao để tạo các trang web thích ứng một cách
						hiệu quả. Các hướng dẫn từng bước được trợ giúp với video và mã
						nguồn thực hành từ gói tài nguyên kèm theo sách. Qua các bài học,
						bạn sẽ:- Học cách viết mã để tạo các trang web với tính năng vượt
						trội, giàu khả năng thích ứng nhờ các thẻ HTML5 mới- Xây dựng các
						form HTML5 và biết cách sử dụng form trong thực tế- Thêm các nội
						dung đa phương tiện có tính linh hoạt cao mà không cần đến plug-in
						trình duyệt- Sử dụng phần tử Canvas để tạo các hình với màu sắc,
						đường viền, hiệu ứng chuyển màu …- Kết hợp việc định kiểu và các
						tính năng hoạt hình mạnh mẽ của CSS3 để cải tiến trang web- Làm
						việc với các công nghệ hỗ trợ HTML5 để xây dựng ứng dụng web dễ
						hơn bao giờ hết</p>

					<div class="two-button">
						<button class="btn btn-primary" type="button"
							onclick="truyenthamso()">Xem Thêm</button>
						<a class="btn btn-primary" href="BookController?action=borrowsbooks" role="button">Mượn
							Sách</a>
					</div>
				</div>
				<br>
				<h2>Sách Excel</h2>
				<h5>Mô tả tiêu đề, Ngày 01 tháng 01, 2020</h5>
				<div class="fakeimg">
					<img alt="sachexl"
						src="https://imgt.taimienphi.vn/cf/Images/vi/2018/3/2/cach-lam-so-sach-ke-toan-tren-excel.jpg"
						style="width: 100%">
				</div>
				<p id="contents1" class="content">Trong lĩnh vực điện toán văn
					phòng. Microsoft Excel là môt trong những chương trình đã và đang
					ứng dụng rộng rãi trong nhiểu lĩnh vực : Kinh tế, kế toán, thương
					mại, quản lý và nhiểu hơn nữa. Với Excel, bạn có trong tay các công
					cụ và lệnh để tạo các bảng tính khác nhau, tạo những cơ sở dữ liệu
					cho từng thời kỳ, lập nên biểu đổ diễn biến, dự đoán xu thế phát
					triển, từ đó đề ra kế hoạch phát triển. Tại Việt Nam, hiện excel
					rất phổ biến. Hầu như các máy tính mới lắp ráp đều có yêu cầu sử
					dụng excel. Tuy rất phổ cập và có nhiều sách trình bày cách sử dụng
					chương trình này, nhưng để có được tài liệu tự học kiểu "Xem tới
					đâu thực hành tới đó" giúp cho người đọc có thể tự tham khảo và
					thực hành ứng dụng excel trong thực tế.</p>
				<div class="two-button">
					<button class="btn btn-primary" type="button"
						onclick="truyenthamso1()">Xem Thêm</button>
					<a class="btn btn-primary" href="BookController?action=borrowsbooks" role="button">Mượn
						Sách</a>
				</div>
				<br>
				<h2>Sách Access</h2>
				<h5>Mô tả tiêu đề, Ngày 01 tháng 01, 2020</h5>
				<div class="fakeimg">
					<img alt="sachacces"
						src="https://i.ytimg.com/vi/x-mWNadLtz0/maxresdefault.jpg"
						style="height: 405.53px; width: 729.98px">
				</div>
				<p id="contents2" class="content">Giáo trình ACCESS - Lớp 6 -
					Bài học là giáo trình tiếng Anh được thiết kế dành riêng cho học
					sinh đang học tiếng Anh tại các trường Trung học Cơ sở, chương
					trình tiếng Anh tăng cường. Khóa học dựa trên phương pháp Tổng hợp
					ngôn ngữ. Tập trung chính vào các phương thức học giúp bộ sách
					ACCESS trở thành sách giáo khoa lý tưởng cho học sinh Trung học cơ
					sở. Chương trình học tối ưu, đa góc, đảm bảo giúp học sinh cải
					thiện kỹ năng ngôn ngữ toàn diện ĐIỂM ĐẶC TRƯNG: - Thiết kế rõ
					ràng, dễ hiểu, mang lại sự thú vị cho học sinh qua từng trang sách
					- Các bài đọc thích hợp với lứa tuổi, giúp giáo viên dễ dàng tập
					trung vào việc dạy kỹ năng đọc và học từ vựng - Các tài liệu tham
					khảo từ vựng và ngữ pháp phía sau sách bài học giúp học sinh có thể
					ôn tập hiệu quả cho các kỳ thi tốt nghiệp.</p>
				<div class="two-button">
					<button class="btn btn-primary" type="button"
						onclick="truyenthamso2()">Xem Thêm</button>
					<a class="btn btn-primary" href="BookController?action=borrowsbooks" role="button">Mượn
						Sách</a>
				</div>
				<br>
				<h2>Sách Word</h2>
				<h5>Mô tả tiêu đề, Ngày 01 tháng 01, 2020</h5>
				<div class="fakeimg">
					<img alt="sachexl"
						src="https://tech12h.com/sites/default/files/styles/inbody400/public/field/image/3_12805f5235898ae7019a66211d464fc0.jpg?itok=5yf79tht"
						style="width: 100%">
				</div>
				<p id="contents3" class="content">Word và Excel là hai chương
					trình thuộc bộ Microsoft Office đã và đang ứng dụng rộng rãi trong
					nhiều lĩnh vực. Hiện Word và Excel rất phổ biến, hầu như các máy
					tính mới lắp ráp đều có yêu cầu sử dụng Word và Excel. Với hai
					chương trình này, bạn có trong tay các công cụ và lệnh để tạo nhanh
					các file văn bản có bố cục gọn, đẹp và những bảng tính khác nhau,
					tạo những cơ sở dữ liệu cho từng thời kỳ, lập nên biểu đồ, dự đoán
					xu thế phát triển, từ đó đề ra kế hoạch phát triển. Nội dung sách
					trình bày những kiến thức không quá sâu với các hướng dẫn thực hành
					từng bước, trực quan, dễ học giúp những người mới bắt đầu làm quen
					với việc soạn thảo văn bản (Word), bảng tính (Excel) nhanh chóng
					khai thác 2 chương trình này trong công việc.</p>
				<div class="two-button">
					<button class="btn btn-primary" type="button"
						onclick="truyenthamso3()">Xem Thêm</button>
					<a class="btn btn-primary" href="BookController?action=borrowsbooks" role="button">Mượn
						Sách</a>
				</div>
				<br>
				<h2>Sách Lập Trình Python</h2>
				<h5>Mô tả tiêu đề, Ngày 01 tháng 01, 2020</h5>
				<div class="fakeimg">
					<img alt="sachexl"
						src="https://2.bp.blogspot.com/-0E1nScdAoDM/WW_wo88-ftI/AAAAAAAAAbE/Kk8FJyT4hBoUbkAb6L61eGl4p7ijjtPaACLcBGAs/s1600/python.jpg"
						style="width: 100%">
				</div>
				<p id="contents4" class="content">Cuộc cách mạng công nghệ 4.0
					đã và đang làm thay đổi mọi lĩnh vực khoa học và đời sống. Các
					ngành nghề dựa vào thành quả của lĩnh vực công nghệ cao như Công
					nghệ Nano, Công nghệ Sinh học và đặc biệt là Công nghệ Thông tin
					ngày càng phát triển vượt bậc cả về lượng lẫn về chất. Để góp phần
					cho ngành Công nghệ thông tin có ảnh hưởng mạnh mẽ như vậy, thì
					việc lựa chọn ngôn ngữ lập trình trong các lĩnh vực mũi nhọn như
					Trí tuệ nhân tạo (AI), máy học (Machine Learning), khai phá dữ liệu
					(Data Mining), học sâu (Deep Learning) trở nên vô cùng quan trọng
					và cần thiết. Một trong những ngôn ngữ đáp ứng được hầu hết các
					tiêu chí của tất cả nhà lập trình khó tính nhất đó chính là ngôn
					ngữ lập trình Python. Ngôn ngữ lập trình Python không những đáp ứng
					được yêu cầu của các bài toán lập trình cổ điển trước đây mà còn
					đáp ứng được các bài toán lập trình mới. Tuy nhiên, các tài liệu về
					lập trình Python ở nước ta còn thiếu. Đó là rào cản lớn cho những
					bạn muốn sử dụng ngôn ngữ này trong lập trình. Ngoài ra, Chương
					trình Giáo dục phổ thông môn Tin học sắp tới sẽ đưa ngôn ngữ lập
					trình Python vào giảng dạy nên việc biên soạn tài liệu có chất
					lượng về Python cho các em học sinh là một việc làm rất cấp thiết.
					Đó là những lí do tại sao nhóm tác giả cho ra đời cuốn sách Đường
					Vào Lập Trình Python. Cuốn sách là sản phẩm “thai nghén” trong một
					thời gian dài vừa viết, vừa phản biện sao cho thành phẩm cuối cùng
					được ưng ý nhất. Cuốn sách có 22 chủ đề được viết theo lối viết sư
					phạm. Nội dung cuốn sách bàn về những vấn đề cơ bản của lập trình
					như cấu trúc lặp, kiểu dữ liệu chuỗi, … cũng như những vấn đề nâng
					cao, hiện đại như quay lui, hàng đợi, ngăn xếp, đồ họa,kiểu dữ liệu
					từ điển, … Chính vì thế, cuốn sách đáp ứng được mọi nhu cầu từ thấp
					đến cao, từ đơn giản đến phức tạp của tất cả các em học sinh học
					Phổ thông Trung học, sinh viên, học viên cao học ngành Khoa học máy
					tính, quý thầy cô và nhà nghiên cứu muốn tìm hiểu về ngôn ngữ lập
					trình Python. Những ai quan tâm đến lập trình Python đều tìm thấy
					nhiều điều bổ ích từ các cuốn sách này</p>
				<div class="two-button">
					<button class="btn btn-primary" type="button"
						onclick="truyenthamso4()">Xem Thêm</button>
					<a class="btn btn-primary" href="BookController?action=borrowsbooks" role="button">Mượn
						Sách</a>
				</div>
				<br>
				<!-- Kết thúc cột phải -->
			</div>
		</div>
		<!-- Kết thúc phần nội dung chính -->
		<!-- Phần Footer -->
		<div class="jumbotron text-center" style="margin-bottom: 0">
			<p>Bản quyền 2020 thuộc về NQV</p>
		</div>
		<!-- Kết thúc phần Footer -->
</body>
<script>
function truyenthamso() {
	var element = document.getElementById("contents")
	element.classList.toggle("active");
};
function truyenthamso1() {
	var element = document.getElementById("contents1")
	element.classList.toggle("active");
};
function truyenthamso2() {
	var element = document.getElementById("contents2")
	element.classList.toggle("active");
};
function truyenthamso3() {
	var element = document.getElementById("contents3")
	element.classList.toggle("active");
};
function truyenthamso4() {
	var element = document.getElementById("contents4")
	element.classList.toggle("active");
};

</script>
</html>