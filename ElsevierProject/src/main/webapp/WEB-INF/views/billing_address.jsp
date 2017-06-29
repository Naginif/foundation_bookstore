
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
    <section class="row">
	<div class="large-12 column text-center">

	<!-- Content goes here -->
	<section class="large-6 medium-8 small-12 large-centered medium-centred small-centered">
	<h2>Billing details</h2>
	
  			
		 <form action="/sendBillingAddress">
		 
		 	<div class="column">
	            <label> First Name * </label>
	            <input type="text" name="firstName" id="firstName" size="30" required/> 
	          </div>
	          <div class="columns">
	             <label> Last Name * </label>
	            <input type="text" name="lastName" id="lastName" size="30" required/>
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
	            <input type="text" name="email" id="email" size="30" required/>
	          </div>
	          
	          
	          <input type="submit" class="button expanded" value="Next" />
		 
		 </form>
  </section>
	
	
	
	
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
