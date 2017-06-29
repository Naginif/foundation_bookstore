
<%@page import="com.qa.models.Customer"%>
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
    <h1>Your profile</h1>
    <section class="row">
	<div class="large-12 column text-center">

	<!-- Content goes here -->
  
  <%!
  
  Customer c;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
  %>
    
    <div class="callout large">
      <div class="row column text-center">
        
        <h3>You have logged in as <%=c.getFirstName() %></h3>
       </div>
       
       
       <div class="row column">
        
        <form action="/updateProfile" method="post">
        <div class="large-6 medium-8 small-12 large-centered medium-centered small-centered">
           <h3> Account details </h3>
                
                
               <label>First name * </label>
               <input type="text" placeholder="Enter new first name" name="firstName" id="firstName" value="<%=c.getFirstName() %>" required/> 
               <label>Last name * </label>
               <input type="text" placeholder="Enter new last name" name="lastName" id="lastName" value="<%=c.getLastName()%>" required/> 
               <label>Email ID * </label>
                <input type="text" placeholder="Enter new email" name="email" id="email" value="<%=c.getEmail()%>" required/> 
               <label>Password * </label>
                <input type="password" placeholder="Enter new password" name="password" id="password" value="<%=c.getPassword()%>" required/>
            </div>
            
          
      		
      		<input type="submit" class="button create account" value="Update Account">
              
              </form>
    
      
      
      </div>
       
       
       
       
       
       
       
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/profile_validation.js"></script>
    <script>
      $(document).foundation();
    </script>
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>


    