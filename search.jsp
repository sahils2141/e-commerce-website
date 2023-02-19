<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<%@page import="jakarta.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<%@include file="All_component/CSS.jsp"%>
</head>
<body>
	<%@include file="All_component/navbar2.jsp"%>
	<div class="container">
			<div class="row">
			<%
			int z = 0;
			try {
				String search = request.getParameter("search");
				Connection con = DBConnect.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from products where pname like '%" + search + "%' or ptype like '%" + search+ "%' and pstatus='Active'");
				while (rs.next()) {
					z = 1;
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
							<a href="addcart.jsp?id=<%=rs.getString(1)%>"
								class="btn btn-danger">Add to cart</a> <a
								href="viewdetails.jsp?id=<%=rs.getString(1)%>"
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
	<%
	if (z == 0) {
	%>
	</div>
	</div>
	<div class="text-center p-5 border">
		<h3>Sorry did not match anything</h3>
		<%
		}
		%>
	</div>
	<%@include file="All_component/footer.jsp"%>
</body>
</html>