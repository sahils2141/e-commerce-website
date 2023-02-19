<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Akart : Sign up</title>
<%@include file="All_component/CSS.jsp" %>
</head>
<body>
<%@include file="All_component/navbar.jsp" %>
<% 
String msg=request.getParameter("msg");

if("success".equals(msg))
{	
%>
<div class="alert alert-success" style="text-align:center;font-size:20px" role="alert">
Registration successfull
</div>

<%} %>

<section class="vh-80 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
            <form action="registerAction.jsp" method="post">

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="fname" class="form-control form-control-lg" name="fname"/>
                    <label class="form-label" for="firstName">First Name</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="lname" class="form-control form-control-lg" name="lname"/>
                    <label class="form-label" for="lastName">Last Name</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input type="text" class="form-control form-control-lg" id="username" name="username"/>
                    <label for="username" class="form-label">Username</label>
                  </div>
               
                </div>
                
                <div class="col-md-6 mb-4 d-flex align-items-center">

                  <div class="form-outline datepicker w-100">
                    <input type="password" class="form-control form-control-lg" id="password" name="password"/>
                    <label for="passsword" class="form-label">Password</label>
                  </div>
               
                </div>
             
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="email" id="email" class="form-control form-control-lg" name="email"/>
                    <label class="form-label" for="emailAddress">Email</label>
                  </div>

                </div>
                 <div class="col-md-6 mb-4 pb-2"> 

                <div class="form-outline">
                    <input type="tel" id="phone" class="form-control form-control-lg" name="phone" />
                    <label class="form-label" for="phoneNumber">Phone Number</label>
                  </div>

                </div>
              </div>

              <div class="mt-4 pt-2">
                <input class="btn btn-primary btn-lg" type="submit" value="Submit" name="submit"/>
              </div>
				<br><p class="mb-5 pb-lg-2" style="color: #393f81;">Already have an account? <a href="login.jsp"
                      style="color: #393f81;">Login</a></p>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</section>
<%@include file="All_component/footer.jsp" %>
</body>
</html>

