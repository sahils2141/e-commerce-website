<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>
<%@include file="All_component/CSS.jsp"%>
</head>
<body>
<%@include file="All_component/navbar2.jsp"%>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>
<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<h3 class="alert alert-success" style="text-align:center;font-size:20px" role="alert">There is only one Quantity! So click on remove!</h3>
<%} %>
<%
if("inc".equals(msg))
{
%>
<h3 class="alert alert-success" style="text-align:center;font-size:20px" role="alert">Quantity  Increased Successfully!</h3>
<%} %>
<%
if("dec".equals(msg))
{
%>
<h3 class="alert alert-success" style="text-align:center;font-size:20px" role="alert">Quantity  Decreased Successfully!</h3>
<%} %>
<%
if("removed".equals(msg))
{
%>
<h3 class="alert alert-success" style="text-align:center;font-size:20px" role="alert">Product Successfully Removed!</h3>
<%} %>

<table class="table" style="margin-left:70px">
  <thead class="thead-dark">
<%
int total=0;
int sno=0;
try
{
	Connection con = DBConnect.getCon();
	Statement st = con.createStatement();
	ResultSet rs1= st.executeQuery("select sum(total) from cart where email='"+email+"'");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}

%>

          <tr>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %> </th>
            <%if(total>0) {%><th><a class="btn btn-success" href="payment.jsp" role="button">Proceed to order <i class="fa-sharp fa-solid fa-sack-dollar"></i></a></th><%} %>
             
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">IMG</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs = st.executeQuery("select * from products inner join cart on products.id=cart.cartid and cart.email='"+email+"'");
      while(rs.next())
      {
      %>
          <tr>
          
           <td><img class="card-img" src="image\product\<%=rs.getString(6)%>"
						width="30px" height="80px" alt=""></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(4) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(3) %></td>
            <td><a href="incDecAction.jsp?id=<%=rs.getString(1) %>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%=rs.getString(10) %><a href="incDecAction.jsp?id=<%=rs.getString(1) %>&quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(12) %></td>
            <td><a class="btn btn-danger" href="removeFromCart.jsp?id=<%=rs.getString(1) %>" role="button">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
          <%
          }
      
      }
      catch(Exception e){
    	  
      }
      %>
        </tbody>
      </table>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      
      
<%@include file="All_component/footer.jsp" %>
</body>
</html>