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
        <div class="medium-6">
           <h3> Create an account  </h3>
                
                
               <label>First Name * </label>
               <input type="text" placeholder="Enter first name" name="firstName" id="firstName"/> 
               <label>Last Name * </label>
               <input type="text" placeholder="Enter last name" name="lastName" id="lastName"/> 
               <label>Email ID * </label>
                <input type="text" placeholder="Enter email" name="email" id="email"/> 
                <label>Password * </label>
				 <input type="password" placeholder="Enter password" name="password" id="password"/>
            	
            </div>
            
            <div class="medium-6">
           
          	 <input type="checkbox" name="aggreement"/> I have read and understood the 
          	 <a href="/registered_user_agreement" target="_blank">Registered User Agreement </a> and agree to be bound by all of its terms. 
         
            </div>
      		
      		<input type="submit" class="button create account" value="Create Account">
              
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


    