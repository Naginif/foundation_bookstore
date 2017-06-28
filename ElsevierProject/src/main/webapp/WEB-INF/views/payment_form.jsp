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
	
	      <%if(!(boolean)request.getAttribute("same")){%>
	<div>
	<form action="/submitBilling" method="post">
    

    <div class="row">
 
      <div class="medium-6 columns">
      
       <h2> Billing Address </h2>
        
        <div class="row small-up-shiping">
        
          <div class="columns">
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
            <input type="text" name="state" id="state" size="30"/ required>
          </div>
          
          <div class="column">
            <label> Country *</label>
            <input type="text" name="country" id="country" size="30" required/>
          </div>
          
           <div class="column">
            <label> Phone Number *</label>
            <input type="text" name="phone" id="phone" size="11" required/>
          </div>
          
          
           <div class="column">
            <label> Email * </label>
            <input type="text" name="email" id="email" size="30" required/>
          </div>
          
        
          
        </div>
       
      
      </div>
       
      </div>
      <input type="submit" class="button" value="Enter Billing Address">    
   
 
 
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    
    <script src="js/validations.js"></script>
    <script>
      $(document).foundation();
    </script> 
    
   </form> 
   <%};%>
		
		


 <%if((boolean)request.getAttribute("same")){%>
 </div>
	
	 <div class="callout large">
      <div class="row column">
        
     <form id="payment_form" action="/paymentProcess" method="post">
        <div class="medium-6">
           <h3> Submit Payment  </h3>
                
                
               <label>Name on Card </label>
               <input type="text" placeholder="Enter Name" name="cardName" id="cardName" required/> 
               <label>Card Number</label>
               <input type="text" placeholder ="Enter Card Number" name="cardNumber" required maxlength="16"/>
               <label> CVV </label>
               <input type="text" placeholder="Enter CVV" name="CVV" id="CVV" required maxlength="3"/> 
  
  				 <div class="columns" id="expiration-date">
                <label>Expiration Date</label>
                <select>
                    <option value="01">January</option>
                    <option value="02">February </option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select>
                    <option value="17"> 2017</option>
                    <option value="18"> 2018</option>
                    <option value="19"> 2019</option>
                    <option value="20"> 2020</option>
                    <option value="21"> 2021</option>
                    <option value="22"> 2022</option>
                </select>
               </div>  
            </div>
  			<input type="submit" class="button" value="Submit Payment">       
			</form>
      </div>
      
<%};%>
	
      
    </div>
    
    
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
