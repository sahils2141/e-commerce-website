<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String pname=request.getParameter("pname");
String price=request.getParameter("price");
String details=request.getParameter("details");
String ptype=request.getParameter("ptype");
String pstatus=request.getParameter("pstatus");

try{
	Connection con = DBConnect.getCon();
	Statement st= con.createStatement();
	st.executeUpdate("update products set pname='"+pname+"',price='"+price+"',ptype='"+ptype+"',pstatus='"+pstatus+"',details='"+details+"' where id='"+id+"'");

	response.sendRedirect("allproduct.jsp?msg=done");
}
catch(Exception e){
	System.out.print(e);
	response.sendRedirect("allproduct.jsp?msg=wrong");
}
%>