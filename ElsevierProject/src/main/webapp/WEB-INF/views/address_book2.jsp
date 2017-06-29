
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
    <section class="row">
	<div class="large-12 column text-center">

	<!-- Content goes here -->
  
  <%!
  
  Customer c;
  Address sa, ba;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
  		sa = (Address) request.getAttribute("shipping_address");
  		ba = (Address) request.getAttribute("billing_address");
  %>
        
       <div class="row">
        
       
        <div class="large-6 columns" align="left">
           	<h3>Billing Address</h3> <br>
           	<% if(ba !=null) { %>
           	<%=ba.getAddressLine1() %> <br>
           	<%=ba.getAddressLine2() %> <br>
           	<%=ba.getCity() %>, <%=ba.getState() %> <%=ba.getPostcode() %> <br>
           	<%=ba.getCountry() %> <br>
           	<a href="updateAddressBook" class="button"> Update Billing Address</a>
           	
           	<%} else { %>
           	No Billing Address <br>
           	<a href="updateAddressBook" class="button"> Add Billing Address</a>
           	
           	<%} %>
           	
           	
            </div>
            
               <div class="medium-6 columns" align="left">
               <h3>Shipping Address</h3> <br>
                <% if(sa !=null) { %>
           		<%=sa.getAddressLine1() %> <br>
           		<%=sa.getAddressLine2() %> <br>
           		<%=sa.getCity() %>, <%=sa.getState() %> <%=sa.getPostcode() %> <br>
           		<%=sa.getCountry() %> <br>
           		<a href="/updateAddressBook" class="button"> Update Shipping Address</a>
           	
           		<%} else { %>
           		No Shipping Address <br>
           		<a href="/updateAddressBook" class="button"> Add Shipping Address</a>
           	
           		<%} %>

            </div>
             
     
      </div>
      
  
       
       
  <!--   </div> -->
    
    
         
       
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier2.js"></script>
    <script>
      $(document).foundation();
    </script>
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>


    