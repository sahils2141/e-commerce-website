<%@ page language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    
    HttpSession Session = request.getSession(false);

    
    if (Session != null) {
       
        Session.invalidate();
    }

   
    response.sendRedirect("firstpage.jsp");
%>
