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
	  <% if( (boolean) request.getAttribute("loginFailed")) { %>
	   <div><p>Login failed</p></div>
	  <% } %>
	

    <div class="callout large">
      <div class="row column">
        
		
        <div class="large-6 medium-8 small-12 large-centered medium-centred small-centered">
           <h3> Please login using your stored credentials  </h3>
                
               <form action="loginProcess" method="post"> 
              
               <label>Email ID * </label>
                <input type="text" placeholder="Enter email" name="email" id="email"/> 
                <label>Password * </label>
				 <input type="password" placeholder="Enter Password" name="password" id="password"/>
            	<input type="submit" class="button expanded" value="Login">
              
              </form>
            
           
           <p> New Customer?  </p> <a href="/register" class="button large expanded">Register</a>
         
            </div>
      
       
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


    