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
        
     <form id="payment_form" action="/paymentProcess" method="post">
        <div class="large-6 medium-8 small-12 large-centered medium-centred small-centered">

           <h3> Submit Payment  </h3>
                
                
               <label>Name on Card </label>
               <input type="text" placeholder="Enter Name" name="cardName" id="cardName" required/> 
               <label>Card Number</label>
               <input type="text" placeholder ="Enter Card Number" name="cardNumber" required maxlength="16"/>
               <label> CVV </label>
               <input type="text" placeholder="Enter CVV" name="CVV" id="CVV" required maxlength="3"/> 
  
  				 <div class="columns" id="expiration-date">
                <label>Expiration Date</label>
                <select name = "expiration_month">
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
                <select name = "expiration_year">
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
      
      
    </div>
    
    
	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
