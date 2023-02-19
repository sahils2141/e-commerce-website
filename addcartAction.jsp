<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>

<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
int quantity=1;
int price=0;
int total=0;
int cart_total=0;

int z=0;
try{
	Connection con = DBConnect.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select * from products where id='"+id+"'");
	while(rs.next())
	{
		price=rs.getInt(3);
		total=price;
	}
	ResultSet rs1= st.executeQuery("select * from cart where cartid='"+id+"' and email='"+email+"'");
	while(rs1.next())
	{
		cart_total=rs1.getInt(4);
		cart_total=cart_total+total;
		quantity=rs1.getInt(3);
		quantity=quantity+1;
		z=1;
	}
	if(z==1){
		st.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where cartid="+id+" and email='"+email+"'");
	response.sendRedirect("userhome.jsp?msg=exist");
	}
	if(z==0){
		PreparedStatement ps=con.prepareStatement("insert into cart(email,cartid,quantity,price,total) values(?,?,?,?,?)");
		ps.setString(1, email);
		ps.setString(2, id);
		ps.setInt(3, quantity);
		ps.setInt(4, price);
		ps.setInt(5, total);
		ps.executeUpdate();
		response.sendRedirect("userhome.jsp?msg=added");
	}
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("userhome.jsp?msg=invalid");
}
%>