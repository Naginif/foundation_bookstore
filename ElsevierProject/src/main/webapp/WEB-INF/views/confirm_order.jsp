<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.qa.models.Address, com.qa.models.Book, java.util.ArrayList, java.util.Map" %>
<%@page import="com.qa.models.Payment" %>


<%
// Webpage title 
String title="Foundation Books - Confirm your order"; 

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
	
	
	<% 
	ArrayList<Book> books  = (ArrayList<Book>) session.getAttribute("filtered_books");
	Map<Integer, Integer> bookCounts = (Map<Integer,Integer>)  session.getAttribute("book_counts");
	Address shipping = (Address) session.getAttribute("shipping_address");
	Address billing = (Address) session.getAttribute("billing_address");
	Payment payment = (Payment) session.getAttribute("payment");
	%>
	
	
	<% for(int i = 0; i < books.size(); i++) { 
	Book book = books.get(i);
	Integer bookCount = bookCounts.get(book.getBookId());%>
	<div class="row panel callout">
		<div class="large-6 medium-6 small-12 column">
			<img src="<%=book.getBookImage() %>" height="20px" />
		</div>
		<div class="large-6 medium-6 small-12 column">
			<h4><%=book.getTitle() %></h4>
			<p>
			Type: <%=book.getFormat() %><br>
			Copies: <%=bookCount %><br>
			</p>
			
		</div>
		
	</div>
	<% } %>
	
	
	<div class="row">
	<div class="large-4 medium-4 small-12 column">
	<div class="panel callout">
	<h3>Shipping Address</h3>
	<p>
		<%=shipping.getAddressLine1() %><br>
		<%=shipping.getAddressLine2() %><br>
		<%=shipping.getCity()%>, <%= shipping.getState() %> <%= shipping.getPostcode() %><br>
		<%=shipping.getCountry()%> <br>
	</p>
	 
	
	
	</div>
	</div>
	
	<div class="large-4 medium-4 small-12 column">
	<div class="panel callout">
	
	<h3>Billing Address</h3>
	<p>
		<%=billing.getAddressLine1() %><br>
		<%=billing.getAddressLine2() %><br>
		<%=billing.getCity()%>, <%= billing.getState() %> <%= billing.getPostcode() %><br>
		<%=billing.getCountry()%> <br>
	</p>
	
	</div>
	</div>
	
	<div class="large-4 medium-4 small-12 column">
	<div class="panel callout">
	<h3>Payment details</h3>
	<p>
		<%=payment.getCardName() %><br>
		*********<%=payment.getCardNumber().substring(12) %><br>
		Expiring <%=payment.getExpiration_month() %> / <%=payment.getExpiration_year() %>
	</p>
	
	</div>
	</div>
	<form action="/confirm_order" >
	<input type="submit" value="Confirm order" class="button expanded" />
	</form>
	</div>
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>