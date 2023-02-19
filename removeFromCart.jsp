<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<% 
String email=session.getAttribute("email").toString();
String cartid=request.getParameter("id");
try{
	Connection con = DBConnect.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and cartid='"+cartid+"'");
	response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e){
	e.printStackTrace();
}
%>