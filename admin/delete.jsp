<%@page import="com.DB.*"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

try
{
	Connection con = DBConnect.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from products where id='"+id+"'");
	response.sendRedirect("allproduct.jsp?msg=removed");
	
}
catch(Exception e)
{
	System.out.println(e);
}
%>