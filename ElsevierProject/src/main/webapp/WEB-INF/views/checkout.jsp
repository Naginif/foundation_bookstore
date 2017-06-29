<%@page import="com.qa.models.Customer"%>
<%@page import="com.qa.models.Address" %>

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
	
	<%!
  
  		Customer c;
  		Address sa, ba;
  
  	%>
  
  
  	<%
 		c = (Customer) session.getAttribute("logged_in_customer");
  		sa = (Address) request.getAttribute("shipping_address");
  	%>
	
	<section class="large-6 medium-8 small-12 large-centered medium-centred small-centered">
	<h1>Shipping details</h1>
	<div class="event-user">
  			
		 <form action="/sendShippingAddress">
		 
		 <% if(sa !=null) { %>
		 
		 	<div class="column">
	            <label> First Name * </label>
	            <input type="text" name="addressFirstName" id="addressFirstName" size="30" value=<%=c.getFirstName() %> required/> 
	          </div>
	          <div class="column">
	             <label> Last Name * </label>
	            <input type="text" name="addressLastName" id="addressLastName" size="30" value=<%=c.getLastName()%> required/>
	          </div>
	          
	          <div class="column">
	           <label> Address 1 * </label>
	            <input type="text" name="addressLine1" id="addressLine1" size="30" value=<%=sa.getAddressLine1() %> required/>
	          </div>
	          <div class="column">
	            <label> Address 2 </label>
	            <input type="text" name="addressLine2" id="addressLine2" size="30" value=<%=sa.getAddressLine2() %>/>
	          </div>
	          <div class="column">
	            <label> City * </label>
	            <input type="text" name="city" id="city" size="30" value=<%=sa.getCity() %> required/>
	          </div>
	          
	          <div class="column">
	            <label> Postcode / Zip code * </label>
	            <input type="text" name="postcode" id="postcode" size="5" value=<%=sa.getPostcode() %> required/>
	          </div>
	          
	          <div class="column">
	            <label> State/Province * </label>
	            <input type="text" name="state" id="state" size="30" value=<%=sa.getState() %> required>
	          </div>
	          
	          <div class="column">
	            <label> Country *</label>
	            <input type="text" name="country" id="country" size="30" value=<%=sa.getCountry() %> required/>
	          </div>
	          
	           <div class="column">
	            <label> Phone Number *</label>
	            <input type="text" name="phoneNumber" id="phoneNumber" size="11" value=<%=sa.getPhoneNumber() %> required/>
	          </div>
	          
	          
	           <div class="column">
	            <label> Email * </label>
	            <input type="text" name="email" id="email" size="30" value=<%=c.getEmail() %> required/>
	          </div>
	          
	          	          <%} else { %>
	          <div class="column">
	            <label> First Name * </label>
	            <input type="text" name="addressFirstName" id="addressFirstName" size="30" value="<%=c.getFirstName() %>" required/> 
	          </div>
	          <div class="column">
	             <label> Last Name * </label>
	            <input type="text" name="addressLastName" id="addressLastName" size="30" value="<%=c.getLastName() %>" required/>
	          </div>
	          
	          <div class="column">
	           <label> Address 1 * </label>
	            <input type="text" name="addressLine1" id="addressLine1" size="30" required/>
	          </div>
	          <div class="column">
	            <label> Address 2 </label>
	            <input type="text" name="addressLine2" id="addressLine2" size="30"/>
	          </div>
	          <div class="column">
	            <label> City * </label>
	            <input type="text" name="city" id="city" size="30" required/>
	          </div>
	          
	          <div class="column">
	            <label> Postcode / Zip code * </label>
	            <input type="text" name="postcode" id="postcode" size="5" required/>
	          </div>
	          
	          <div class="column">
	            <label> State/Province * </label>
	            <input type="text" name="state" id="state" size="30" required>
	          </div>
	          
	          <div class="column">
	            <label> Country *</label>
	            <input type="text" name="country" id="country" size="30" required/>
	          </div>
	          
	           <div class="column">
	            <label> Phone Number *</label>
	            <input type="text" name="phoneNumber" id="phoneNumber" size="11" required/>
	          </div>
	          
	          
	           <div class="column">
	            <label> Email * </label>
	            <input type="text" name="email" id="email" size="30" value="<%=c.getEmail() %>" required/>
	          </div>
	          <%} %>
	          
	          <input type="submit" class="button expanded" value="Next" />
	          
		 
		 </form>
		 </div>
  </section>
	
	
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

	
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>

  </body>
  
</html>
