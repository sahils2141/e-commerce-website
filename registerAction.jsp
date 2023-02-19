<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String username=request.getParameter("username");
String password=request.getParameter("password");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String addr="";
String landmark="";
String city="";
String state="";
String pincode="";
String payment="";

try{
	Connection con = DBConnect.getCon();
	PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, fname);
	ps.setString(2, lname);
	ps.setString(3, username);
	ps.setString(4, password);
	ps.setString(5, email);
	ps.setString(6, phone);
	ps.setString(7, addr);
	ps.setString(8, landmark);
	ps.setString(9, city);
	ps.setString(10,state);
	ps.setString(11, pincode);
	ps.setString(12, payment);
	
	ps.executeUpdate();
	response.sendRedirect("registration.jsp?msg=success");
} catch (Exception e){
	System.out.print(e);
	
}

%>