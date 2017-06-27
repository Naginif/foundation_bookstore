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

    <div class="callout large">
      <div class="row column">
        
        <form id="register_form" action="/registerProcess" method="post">
        <div class="large-6 medium-8 small-12 large-centered medium-centred small-centered">
        	<div class="user-event">
        	
        	<%
        	boolean failed = (request.getAttribute("failure_reason") != null);
        	Customer customer = new Customer();
        	
        	if (failed) {
        		customer = (Customer) request.getAttribute("customer");
        	%>
        	<p> <%=request.getAttribute("failure_reason") %> <p>
        	<% } %>
        	
           <h3> Create an account  </h3>
                
                
                <label>First Name <span style="color:red;">*</span> </label>
               <input type="text" placeholder="Enter first name" name="firstName" id="firstName" <%if (failed) out.print("value=\"" + customer.getFirstName() + "\""); %>/> 
               <label>Last Name <span style="color:red;">*</span> </label>
               <input type="text" placeholder="Enter last name" name="lastName" id="lastName" <%if (failed) out.print("value=\"" + customer.getLastName() + "\""); %>/> 
               <label>Email ID <span style="color:red;">*</span> </label>
                <input type="text" placeholder="Enter email" name="email" id="email"/> 
                <label>Password <span style="color:red;">*</span> </label>
         <input type="password" placeholder="Enter password" name="password" id="password"/>
                <label>Confirm Password <span style="color:red;">*</span> </label>
         <input type="password" placeholder="Enter password" name="passwordConfirm" id="passwordConfirm"/>
            	
            </div>
           
          	 <input type="checkbox" name="aggreement" required/> I have read and understood the 
          	 <a href="/registered_user_agreement" target="_blank">Registered User Agreement </a> and agree to be bound by all of its terms. 
         
            </div>
      		
      		<input id="btnRegister" type="submit" class="button create account" value="Create Account">
              
              </form>
    
      
      
      </div>
    </div>
    
   
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/validations.js"></script>
    <script>
      $(document).foundation();
    </script>
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>


    