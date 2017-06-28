
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
  Address a;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
  		a = (Address) session.getAttribute("Address");
  %>
        
       <div class="row">
        
       
        <div class="large-6 columns">
           <h3> Billing Address </h3>
                
              <form action="/updateAddress" method="post">
              <div class="event-user">
               <label>Address Line 1 * </label>
               <input type="text" placeholder="Enter Address Line 1" name="addressLine1" id="addressLine1" required/> 
               <label>Address Line 2  </label>
               <input type="text" placeholder="Enter Address Line 2" name="addressLine2" id="addressLine2"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="city" required/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode" required/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state" required/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county" required/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber" required/> 
                
                 
                <input type="hidden" name="addressType" id="addressType" value="billing"/> 
                
                
                <input type="submit" class="button create account" value="Update Billing Address" id="billingButton">
               </div>
               </form>
            </div>
            
          
               <div class="medium-6 columns">
                <h3> Shipping Address </h3>
                
                <input type="checkbox" class="ba" id="chkIsSame" /> Same as billing address
               
                
              <form action="/updateAddress" method="post">
               <label>Address Line 1 * </label>
               <input type="text" placeholder="Enter Address Line 1" name="addressLine1" id="shippingLine1" class="tex" required/> 
               <label>Address Line s2 </label>
               <input type="text" placeholder="Enter Address Line 2" name="addressLine2" id="shippingLine2" class="tex"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="shippingCity" class="tex" required/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="shippingPostcode" class="tex" required/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="shippingState" class="tex" required/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="shippingCounty" class="tex" required/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="shippingPhoneNumber" class="tex" required/> 
                
                 
                <input type="hidden" name="addressType" id="shippingAddressType" value="shipping"/> 
                
                
                <input type="submit" class="button create account" value="Update Shipping Address" id="shippingButton">
               </form>
            </div>
             
     
      </div>
      
  
       
       
  <!--   </div> -->
    
    
         
       
      
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/address_validation.js"></script>
    <script>
      $(document).foundation();
    </script>
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>


    