<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "home";
%>

<!doctype html>

<html class="no-js" lang="en">

<!-- Head tags  -->
<%@include file="html/head.jsp" %>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>

	<!-- Content goes here -->
	
	
	<h1>Confirm your order</h1>
	Shipping Address: <br> 
	<%=session.getAttribute("shipping_address").toString() %>
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>