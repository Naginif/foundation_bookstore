<%
// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "cart";
%>

<!doctype html>

<html class="no-js" lang="en">

<!-- Head tags  -->
<%@include file="html/head.jsp" %>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>
    
        <h1>Item added to cart </h1>
        
    <section class="row">
	<div class="large-12 column text-center">

	<!-- Content goes here -->
    
      <div class="row column text-center">
        <a href="/" class="button large">Back to Items </a>
        <a href="/cart" class="button large">Review Cart</a>
      
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


    