<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<%@page import ="jakarta.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Akart</title>
<%@include file="All_component/CSS.jsp"%>
<style>
.carousel-inner img {
	height: 100vh;
}
</style>

</head>
<body style="background-color: #f1edf5">

	<%@include file="All_component/navbar.jsp"%>
	
	<div>

		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleControls"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleControls"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleControls"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">

					<img
						src="https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGxhcHRvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="font-family: Lucida Bright;">LAPTOPS</h1>
						<p>
						<h2>Flat 45% Discount</h2>
						</p>
					</div>
				</div>

				<div class="carousel-item">
					<img
						src="https://images.unsplash.com/photo-1621330396173-e41b1cafd17f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="font-family: Lucida Bright;">MOBILE PHONES</h1>

						<p>
						<h2>Flat 30% discount</h2>
						</p>
					</div>
				</div>

				<div class="carousel-item">
					<img
						src="https://cdn.pixabay.com/photo/2016/11/19/21/17/computer-accessories-1841254__340.jpg"
						class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 style="font-family: Lucida Bright;">ELECTRONIC
							ACCESSORIES</h1>
						<p>
						<h2>Flat 25% Discount</h2>
						</p>
					</div>
				</div>

			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
<style>
h1 {
	text-align: center;
}
</style>

	<div class="container">
		<div class="card-header my-3 text-center"
			style="font-family: Forte; font-size: 40px;">Laptops</div>
		<div class="row">
			<%
			try {
				Connection con = DBConnect.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from products where pstatus='Active' and ptype='Laptop'");
				while (rs.next()) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src="image\product\<%=rs.getString(6)%>"
						width="50px" height="300px" alt="">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString(2)%></h5>
						<h6 class="price">
							Price: <i class="fa fa-inr"></i><%=rs.getString(3)%></h6>
						<h6 class="details">
							Details:
							<%=rs.getString(7)%></h6>
						<h6 class="category">
							Category:
							<%=rs.getString(4)%></h6>
						<div class="mt-3 d-flex justify-content-between">
						
						
							<a href="login.jsp"
								class="btn btn-danger">Add to cart</a> <a href="firstViewpage.jsp?id=<%=rs.getString(1) %>"
								class="btn btn-success btn-sm">View Details</a>

						</div>
					</div>
				</div>
			</div>
			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</div>
	</div>
<hr>

	<div class="container">
		<div class="card-header my-3 text-center"
			style="font-family: Forte; font-size: 40px;">Mobile</div>
		<div class="row">
			<%
			try {
				Connection con = DBConnect.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from products where pstatus='Active' and ptype='Mobile'");
				while (rs.next()) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src="image\product\<%=rs.getString(6)%>"
						width="50px" height="300px" alt="">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString(2)%></h5>
						<h6 class="price">
							Price: <i class="fa fa-inr"></i><%=rs.getString(3)%></h6>
						<h6 class="details">
							Details:
							<%=rs.getString(7)%></h6>
						<h6 class="category">
							Category:
							<%=rs.getString(4)%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="login.jsp"
								class="btn btn-danger">Add to cart</a> <a href="firstViewpage.jsp?id=<%=rs.getString(1) %>"
								class="btn btn-success btn-sm">View Details</a>

						</div>
					</div>
				</div>
			</div>
			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</div>
	</div>


	<div class="container">
		<div class="card-header my-3 text-center"
			style="font-family: Forte; font-size: 40px;">Accessories</div>
		<div class="row">
			<%
			try {
				Connection con = DBConnect.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from products where pstatus='Active' and ptype='Accessories'");
				while (rs.next()) {
			%>
			<div class="col-md-3 my-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src="image\product\<%=rs.getString(6)%>"
						width="50px" height="300px" alt="">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString(2)%></h5>
						<h6 class="price">
							Price: <i class="fa fa-inr"></i><%=rs.getString(3)%></h6>
						<h6 class="details">
							Details:
							<%=rs.getString(7)%></h6>
						<h6 class="category">
							Category:
							<%=rs.getString(4)%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="login.jsp"
								class="btn btn-danger">Add to cart</a> <a href="firstViewpage.jsp?id=<%=rs.getString(1) %>"
								class="btn btn-success btn-sm">View Details</a>

						</div>
					</div>
				</div>
			</div>
			<%
}
}
catch(Exception e)
{
	System.out.println(e);
}%>
		</div>
	</div>


	<%@include file="All_component/footer.jsp"%>
</body>
</html>