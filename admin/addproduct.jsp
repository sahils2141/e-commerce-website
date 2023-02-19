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
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>	
<div class="alert alert-success" style="text-align:center;font-size:20px" role="alert">
Added Successfully
</div>
<%
}
%>
<%
if("wrong".equals(msg))
{	
%>
<div class="alert alert-danger" style="text-align:center;font-size:20px" role="alert">
 Something went wrong
</div>
<%} %>		
<%
int id=1;
try
{
	Connection con = DBConnect.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select max(id) from products");
	while(rs.next())
	{
	id=rs.getInt(1)	;
	id=id+1;
	}
}
catch(Exception e)
{
	
}
%>
				
				<form action="../addServlet" method="post" enctype="multipart/form-data">
					
					<div class="form-group">
					
					
					<input type="hidden" name="id" value="<%out.println(id); %>">
					</div>
					
					<div class="form-group">
						<lebel for="exampleinputEmail1">Product name</lebel>
						<input name="pname" type="text" class="form-control"
							id="exampleinputEmail1" aria-describeby="emailHelp">
					</div>

					<div class="form-group">
						<lebel for="exampleinputEmail1">Price</lebel>
						<input name="price" type="number" class="form-control"
							id="exampleinputEmail1" aria-describeby="emailHelp">
					</div>
					
					<div class="form-group">
						<lebel for="exampleinputEmail1">Details</lebel>
						<input name="details" type="text" class="form-control"
							id="exampleinputEmail1" aria-describeby="emailHelp">
					</div>

					<div class="form-group">
						<lebel for="inputstate">Product Category</lebel>
						<select id="inputState" name="ptype" class="form-control">
							<option selected>--Select--</option>
							<option value="Laptop">Laptops</option>
							<option value="Mobile">Mobiles</option>
							<option value="Accessories">Accessories</option>
						</select>
					</div>

					<div class="form-group">
						<lebel for="inputstatus">Product Status</lebel>
						<select id="inputstatus" name="pstatus" class="form-control">
							<option selected>--Select--</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
						</select>
					</div>

					<div class="form-group">
						<lebel for="exampleFormControlFile1">Upload Photo</lebel>
						<input name="img" type="file" class="form-control-file"
							id="exampleFormControlFile1">
					</div><br>

					<button type="submit" class="btn btn-primary" >Add</button>

				</form>
			</div>
		</div>
	</div>
	<div style="margin-top:300px;"><%@include file="footer.jsp" %></div>
	
</body>
</html>