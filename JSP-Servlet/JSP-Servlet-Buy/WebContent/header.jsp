<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand" href="#">Magrabbit library</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse checking"
			id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="PageController?action=homepage">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="PageController?action=borrowsbooks">Mượn Sách</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Manager </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item"
							href="StudentsController?action=studentManager">Students
							Manager</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="BookController?action=booksManager">Books
							Manager</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="BookController?action=searchDay">Search day</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="BookController?action=booksQuanLy">Quản Lý Mượn
							Sách</a>
					</div></li>
				<li class="nav-item active"><a class="nav-link"
					href="PageController?action=booksHistoryMS">Lịch Sử Mượn Sách</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="PageController?action=logout">Log out</a></li>
			</ul>

		</div>
		</nav>
</body>
</html>