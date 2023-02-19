<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contect Us</title>
</head>
<%@include file="All_component/CSS.jsp"%>
<body>
<%@include file="All_component/navbar2.jsp"%>
<div class="text-danger">
<h1>Dear <%out.print(email); %></h1>
</div>
<div class="text-center">
<h2>For Any Query Or Complaint You Can Call Or Email Us.</h2></div>
<div class="text-center text-primary">
<i class="fa-solid fa-envelope fa-5x"></i>
<h3>support@akart.com</h3>
</div>
<div class="text-center text-success">
<i class="fa-solid fa-phone-volume fa-5x"></i>
<h3>+91-223-579-4261</h3>
</div>
<%@include file="All_component/footer.jsp"%>
</body>
</html>