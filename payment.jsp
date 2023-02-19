<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.DB.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Akart : Sign up</title>
<%@include file="All_component/CSS.jsp"%>
</head>
<body>
	<%@include file="All_component/navbar2.jsp"%>
	<% 
String msg=request.getParameter("msg");

if("success".equals(msg))
{	
%>
<div class="alert alert-success" style="text-align:center;font-size:20px" role="alert">
Order placed successfull
</div>

<%} %>
	<%
int total=0;
int SNo=0;
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

	<table class="table" style="margin-left: 70px">
		<thead class="thead-dark">
			<tr>
				<th scope="col" style="background-color: yellow;">Total: <i
					class="fa fa-inr"></i> <%out.println(total); %> <%if(total>0) {%>
				<th><a class="btn btn-success" href="myCart.jsp" role="button">Back</a></th>
				<%} %>


			</tr>
		</thead>
		<thead>
			<tr>
				<th scope="col">SNo.</th>
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
				<%SNo=SNo+1; %>
				<td>
					<%out.print(SNo); %>
				</td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(4) %></td>
				<td><i class="fa fa-inr"></i> <%=rs.getString(3) %></td>
				<td><a
					href="incDecAction.jsp?id=<%=rs.getString(1) %>&quantity=inc"><i
						class='fas fa-plus-circle'></i></a><%=rs.getString(10) %><a
					href="incDecAction.jsp?id=<%=rs.getString(1) %>&quantity=dec"><i
						class='fas fa-minus-circle'></i></a></td>
				<td><i class="fa fa-inr"></i> <%=rs.getString(12) %></td>
				<td><a class="btn btn-danger"
					href="removeFromCart.jsp?id=<%=rs.getString(1) %>" role="button">Remove
						<i class='fas fa-trash-alt'></i>
				</a></td>
			</tr>
			<%} 
ResultSet rs2=st.executeQuery("select*from user where email='"+email+"'");
while (rs2.next())
{

%>

		</tbody>
	</table>

	<section class="vh-80 gradient-custom">
		<div class="container py-5 h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-lg-9 col-xl-7">
					<div class="card shadow-2-strong card-registration"
						style="border-radius: 15px;">
						<div class="card-body p-4 p-md-5">
							<h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Place Your Order</h3>
							<form action="paymentAction.jsp" method="post">

								<div class="row">
									<div class="col-md-6 mb-4">

										<div class="form-outline">
											<input type="text" value="<%=rs2.getString(7) %>"
												class="form-control form-control-lg" name="addr" /> <label
												class="form-label" for="firstName">Address</label>
										</div>

									</div>
									<div class="col-md-6 mb-4">

										<div class="form-outline">
											<input type="text" value="<%=rs2.getString(8) %>"
												class="form-control form-control-lg" name="landmark" /> <label
												class="form-label" for="lastName">Landmark</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-4 d-flex align-items-center">

										<div class="form-outline datepicker w-100">
											<input type="text" class="form-control form-control-lg"
												value="<%=rs2.getString(9) %>" name="city" /> <label
												for="username" class="form-label">City</label>
										</div>

									</div>

									<div class="col-md-6 mb-4 d-flex align-items-center">

										<div class="form-outline datepicker w-100">
											<input type="text" class="form-control form-control-lg"
												value="<%=rs2.getString(10) %>" name="state" /> <label
												for="state" class="form-label">State</label>
										</div>

									</div>

								</div>

								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="text" value="<%=rs2.getString(11) %>"
												class="form-control form-control-lg" name="pincode" /> <label
												class="form-label" for="pincode">Pincode</label>
										</div>
									</div>

									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<select class="form-control form-control-lg" name="payment">
												<option selected>--select--</option>
												<option value="Pay On Delivery(POD)">Pay On
													Delivery(POD)</option>
												<option value="Online Payment">Online Payment</option>
												<option value="Pay On Delivery(POD)">Credit/Debit
													card</option>
											</select> <label class="form-label" for="emailAddress">Payment</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 mb-4 pb-2">

										<div class="form-outline">
											<input type="text" value="<%=rs2.getString(6) %>"
												class="form-control form-control-lg" name="phone" /> <label
												class="form-label" for="emailAddress">Mobile No</label>
										</div>
									</div>
									</div>
						
						<div class="mt-4 pt-2">
							<input class="btn btn-primary btn-lg" type="submit"
								value="Place Order" name="submit" />
						</div>
						</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	

	</section>
	<%     
}
}catch(Exception e){
	e.printStackTrace();
}
%>

	<%@include file="All_component/footer.jsp"%>
</body>
</html>

