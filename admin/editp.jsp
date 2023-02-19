<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.sql.*" %>
	<%@page import="com.DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: addproduct</title>
<%@include file="CSS.jsp"%>
</head>
<body style ="background-color:#f0f2f2" >
	<%@include file="navbar.jsp"%>
	<div class="col-md-4 offset-md-4 p-5">
		<div class="card">
			<div class="card-body">
				<h3 class="text-center">Add Product</h3>
				
<%
String id=request.getParameter("id");
try
{
	Connection con = DBConnect.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select * from products where id='"+id+"'");
	while(rs.next())
	{

%>
				
				<form action="editpAction.jsp" method="post" >
				
				<input type="hidden" name="id" value="<%out.println(id); %>">
				
				<div class="form-group">
						<lebel for="exampleinputEmail1">Product name</lebel><br>
				<input type ="text" name="pname" value="<%=rs.getString(2) %>" class="form-control" required>
				
				</div>
				
				<div class="form-group">
						<lebel for="exampleinputEmail1">Price</lebel>
				<input type ="number" name="price" value="<%=rs.getString(3) %>" class="form-control"required>
				</div>
				<div class="form-group">
						<lebel for="exampleinputEmail1">Details</lebel>
				<input type ="text" name="details" value="<%=rs.getString(7) %>"class="form-control" required>
				</div>
				<div class="form-group">
						<lebel for="inputstate">Product Category</lebel>
				<select id="inputState" name="ptype" class="form-control">
							<option value="<%=rs.getString(4) %>" selected><%=rs.getString(4) %></option>
							<option value="Laptop">Laptops</option>
							<option value="Mobile">Mobiles</option>
							<option value="Accessories">Accessories</option>
						</select>
						</div>
						<div class="form-group">
						<lebel for="inputstate">Product Status</lebel>
						<select id="inputstatus" name="pstatus" class="form-control">
							<option value="<%=rs.getString(5) %>"selected><%=rs.getString(5) %></option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
						</div>
					<div class="text-center p-3">
					<button class="btn btn-primary "  >update</button>
					</div>

				</form>
				<%
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
			</div>
		</div>
	</div>
	<div style="margin-top:300px;"><%@include file="footer.jsp" %></div>
	
</body>
</html>