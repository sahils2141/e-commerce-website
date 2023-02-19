<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*" %>
    <%@page import="com.DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : Allproduct</title>
<%@include file="CSS.jsp"%>
</head>
<body>

<%@include file="navbar.jsp"%>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>	
<div class="alert alert-success" style="text-align:center;font-size:20px" role="alert">
Updated Successfully
</div>
<%
}
%>
<%
if("wrong".equals(msg))
{	
%>
<div class="alert alert-denger" style="text-align:center;font-size:20px" role="alert">
Something went wrong!
</div>
<%} %>
<%
if("removed".equals(msg))
{	
%>
<div class="alert alert-success" style="text-align:center;font-size:20px" role="alert">
Product Deleted Successfully
</div>
<%} %>
<table class="table">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
       <th scope="col">Details</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <%
        try{
        	Connection con = DBConnect.getCon();
        	Statement st= con.createStatement();
        	ResultSet rs= st.executeQuery("select * from products");
        	while(rs.next())
        	{
        %>
  
    <tr>
      <td> <%=rs.getString(1) %></td>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
       <td><%=rs.getString(5) %></td>
       <td><%=rs.getString(7) %></td>
    	<td>
    	<a href="editp.jsp?id=<%=rs.getString(1) %>" class="btn btn-sm btn-primary">Edit</a>
    	<a href="delete.jsp?id=<%=rs.getString(1) %>" class="btn btn-sm btn-danger">Delete</a>
    	</td>
    </tr>
    <%
          }
          }
          catch(Exception e)
        {System.out.println(e);}
        %>
  </tbody>
</table>
<div style="margin-top:400px;"><%@include file="footer.jsp" %></div>
	
</body>
</html>