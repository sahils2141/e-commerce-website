<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin : home</title>
<%@include file="CSS.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="row p-5">
		<div class="col-md-3">
			<a href="addproduct.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-circle-plus fa-3x text-primary"></i><br>
						<h1>Add product</h1>
						----------

					</div>
				</div>
			</a>
		</div>
		<div class="col-md-3">
			<a href="allproduct.jsp">
				<div class="card">
					<div class="card-body text-center">
					<i class="fa-brands fa-product-hunt fa-3x text-warning"></i><br>
						<h1>All product</h1>
						----------

					</div>
				</div>
				</a>
		</div>
		

		<div class="col-md-3">
			<a href="order.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-box-open fa-3x text-danger"></i><br>
						<h1>Order</h1>
						----------

					</div>
				</div>
					</a>
		</div>
	

		<div class="col-md-3">
		<a href="adminLogout.jsp">
			<div class="card">
				<div class="card-body text-center">
					<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
					<h1>Logout</h1>
					----------

				</div>
			</div>
		</div>
		</a>

	</div>
	<div style="margin-top:300px;"><%@include file="footer.jsp" %></div>
	
</body>
</html>