<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<%@include file="All_component/CSS.jsp"%>

<%
String email=session.getAttribute("email").toString();
String addr=request.getParameter("addr"); 
String landmark=request.getParameter("landmark"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state"); 
String pincode=request.getParameter("pincode");  
String payment=request.getParameter("payment"); 

try{
	Connection con = DBConnect.getCon();
	PreparedStatement ps=con.prepareStatement("update user set addr=?,landmark=?,city=?,state=?,pincode=?,payment=? where email='"+email+"'");
	ps.setString(1,addr);
	ps.setString(2,landmark);
	ps.setString(3,city);
	ps.setString(4,state);
	ps.setString(5,pincode);
	ps.setString(6,payment);
	ps.executeUpdate();
	response.sendRedirect("payment.jsp?msg=success");
	
	
}catch(Exception e){
	e.printStackTrace();
}
%>
