<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
    <%@page import="com.DB.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : Order</title>
<%@include file="CSS.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<table class="table">
  <thead class="bg-primary text-white">
    <tr>
      
      <th scope="col">firstName</th>
      <th scope="col">lastName</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">PH no.</th>
      <th scope="col">Product name</th>
      <th scope="col">price</th>
       <th scope="col">Payment type</th>
    </tr>
  </thead>
  <tbody>
  <%
  String email=request.getParameter("email");
        try{
        	Connection con = DBConnect.getCon();
        	Statement st= con.createStatement();
        	ResultSet rs = st.executeQuery("select * from cart inner join user on cart.quantity inner join products on products.id=cart.cartid");
        	while(rs.next())
        	{
        %>
    <tr>
      
      <td><%=rs.getString(6) %></td>
      <td><%=rs.getString(7) %></td>
      <td><%=rs.getString(1) %></td> 
      <td><%=rs.getString(12) %></td>
      <td><%=rs.getString(11) %></td>
      <td><%=rs.getString(19) %></td>
       <td><%=rs.getString(20) %></td>
        <td><%=rs.getString(17) %></td>
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