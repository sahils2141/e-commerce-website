<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="All_component/CSS.jsp"%>
</head>
<body>
	<%@include file="All_component/navbar2.jsp"%>

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
							<a href="addcartAction.jsp?id=<%=rs.getString(1) %>"
								class="btn btn-danger">Add to cart</a> <a href="viewdetails.jsp?id=<%=rs.getString(1) %>"
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