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
    
    <div class="callout large">
      <div class="row column text-center">
        
        
        <div class="medium-6 columns22">
           <h3> Please login using your stored credentials  </h3>
                
               <form action="/loginProcessThroughCheckout" method="post"> 
                <input type="text" placeholder="Enter email" name="email" id="email"/>
				 <input type="password" placeholder="Enter Password" name="password" id="password"/>
            	<input type="submit" class="button expanded" value="Submit">
              
              </form>
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


    