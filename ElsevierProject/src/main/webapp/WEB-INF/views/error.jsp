
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Iterator" %>
<%@page import="com.qa.models.Book" %>
<%@page import="com.qa.models.Customer" %>
<%@page import="java.text.NumberFormat" %>


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
<style>
	.row:last-child{
	float:left;}
</style>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>

	<!-- Content goes here -->

	<%
		
	 %>

	<h1>Whoops!</h1>
	<p> An unexpected error has occured. Please return to the home page. </p>
	
	<a href="/" class="button">Click here to go home.</a>

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>