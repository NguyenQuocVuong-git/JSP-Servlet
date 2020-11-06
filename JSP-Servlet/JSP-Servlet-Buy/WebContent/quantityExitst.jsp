<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="java.util.List" %>
<%@page import ="dto.Student" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
     <meta charset="UTF-8">
     <title>Simple Web Application</title>
  </head>
  
  <body>
  
     <h2>Simple Login Web Application using JSP/Servlet</h2>
      
     <ul>
        <li><a href="home">Home</a></li>
        <li><a href="login">Login</a></li>
        <li><a href="productList">Product  List</a>
        <li><a href="CandidateServlet">Student  List</a>
     </ul>
    <c:forEach items="${listbook}" var="book">
   		<p>BookID: ${book.bookID}</p>
       	<p>Name:  ${book.name}</p>
       	<p>Totalpage: ${book.totalPage}</p>
       	<p>type: ${book.type}</p>
    
    </c:forEach>
  </body>
</html>