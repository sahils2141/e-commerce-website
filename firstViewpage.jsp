<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Details</title>
<%@include file="All_component/CSS.jsp"%>
</head>
<body>
	<%@include file="All_component/navbar.jsp"%>

	<div class="contaiber p-3">
	<%
	String id=request.getParameter("id");
			try {
				Connection con = DBConnect.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from products where id='"+id+"'");
				while (rs.next()) {
			%>
		<div class="row">
			<div class="col-md-6 text-center p-5 border">
				<img src="image\product\<%=rs.getString(6)%>" style="hight: 250PX; width: 250PX"><br>
				
				<h4 class="mt-3">
				Product Name :  <span class="text-success"><%=rs.getString(2)%></span>
				</h4>
				<h4>Details :  <span class="text-success"><%=rs.getString(7)%></span></h4>
				<h4>Category :  <span class="text-success"><%=rs.getString(4)%></span></h4>
				
			</div>

			<div class="col-md-6 text-center p-5 border">
				<h2><%=rs.getString(2)%></h2>
				<div class="row">
					<div class="col-md-4 text-success text-center p-2">
						<i class="fa-solid fa-indian-rupee-sign fa-2x"></i>
						<p>Pay on Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-primary text-center p-2">
						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free Delivery</p>
					</div>

				</div>
				<div class="text-center p-3">
					<a href="login.jsp" class="btn btn-primary"><i class="fa-solid fa-cart-shopping"></i> Add to Cart</a>
					<a href="" class="btn btn-danger"><i class="fa-solid fa-indian-rupee-sign"></i><%=rs.getString(3) %></a>
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
	


</body>
</html>