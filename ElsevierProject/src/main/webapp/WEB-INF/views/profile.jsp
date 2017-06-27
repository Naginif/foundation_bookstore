
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
        <div class="medium-6">
           <h3> Account details </h3>
                
                
               <label>Firstname * </label>
               <input type="text" placeholder="Enter firstname" name="firstName" id="firstName" value="<%=c.getFirstName() %>"/> 
               <label>Lastname * </label>
               <input type="text" placeholder="Enter lastname" name="lastName" id="lastName" value="<%=c.getLastName()%>"/> 
               <label>Email ID * </label>
                <input type="text" placeholder="Enter email" name="email" id="email" value="<%=c.getEmail()%>"/> 
                
            </div>
            
          
      		
      		<input type="submit" class="button create account" value="Update Account">
              
              </form>
    
      
      
      </div>
       
       
       
       
       
       
       
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>


    