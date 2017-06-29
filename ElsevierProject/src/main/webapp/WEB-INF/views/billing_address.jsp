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
  		ba = (Address) request.getAttribute("billing_address");
  	%>
	
	<section class="large-6 medium-8 small-12 large-centered medium-centred small-centered">
	<h1>Billing details</h1>
	
  			
		 <form action="/sendBillingAddress">
		 	 	<% if(ba !=null) { %>
		 
		 	<div class="column">
	            <label> First Name * </label>
	            <input type="text" name="addressFirstName" id="addressFirstName" size="30" value=<%=c.getFirstName() %> required/> 
	          </div>
	          <div class="columns">
	             <label> Last Name * </label>
	            <input type="text" name="addressLastName" id="addressLastName" size="30" value=<%=c.getLastName()%> required/>
	          </div>
	          
	          <div class="column">
	           <label> Address 1 * </label>
	            <input type="text" name="addressLine1" id="addressLine1" size="30" value=<%=ba.getAddressLine1() %> required/>
	          </div>
	          <div class="column">
	            <label> Address 2 </label>
	            <input type="text" name="addressLine2" id="addressLine2" size="30" value=<%=ba.getAddressLine2() %>/>
	          </div>
	          <div class="column">
	            <label> City * </label>
	            <input type="text" name="city" id="city" size="30" value=<%=ba.getCity() %> required/>
	          </div>
	          
	          <div class="column">
	            <label> Postcode / Zip code * </label>
	            <input type="text" name="postcode" id="postcode" size="5" value=<%=ba.getPostcode() %> required/>
	          </div>
	          
	          <div class="column">
	            <label> State/Province * </label>
	            <input type="text" name="state" id="state" size="30" value=<%=ba.getState() %> required>
	          </div>
	          
	          <div class="column">
	            <label> Country *</label>
	            <input type="text" name="country" id="country" size="30" value=<%=ba.getCountry() %> required/>
	          </div>
	          
	           <div class="column">
	            <label> Phone Number *</label>
	            <input type="text" name="phoneNumber" id="phoneNumber" size="11" value=<%=ba.getPhoneNumber() %> required/>
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
	          <div class="columns">
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
	            <input type="text" name="addressEmail" id="addressEmail" size="30" required/>
	            <input type="text" name="email" id="email" size="30" value="<%=c.getEmail() %>" required/>
	          </div>
	          <%} %>
	          
	          <input type="submit" class="button expanded" value="Next" />
		 
		 </form>
  </section>
	
	
	
	
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
