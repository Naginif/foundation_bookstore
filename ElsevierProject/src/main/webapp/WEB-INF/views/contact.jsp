<%

// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "contact";
%>

<!doctype html>

<html class="no-js" lang="en">
<!-- Head tags  -->
<%@include file="html/head.jsp" %>

 	<body>
  		<!-- Navigation markup -->
    	<%@ include file="html/nav.jsp" %>
    	<div class="row column text-center">
		<form id="contact_form" 
		action="mailto:customersupport@foundationbooks.com" 
		method="post">
        <div class="large-6 medium-8 small-12 large-centered medium-centered small-centered">
           <h3> Contact Us!  </h3>
               <label>First Name </label>
               <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" required/> 
               <label>Last Name</label>
               <input type="text" placeholder ="Enter Last Name" name="lastName" required/>
               <label> Email Address </label>
               <input type="text" placeholder="Enter Email Address" name="email" id="email" required/> 
               <label>Message</label>
               <textarea class=message placeholder="Type your message here" name="message" id="message"></textarea>
            </div>
  			<input type="submit" class="button" value="Send Message">      
			</form>
		</div>
		<!--  Footer markup -->
    	<%@include file="html/footer.jsp" %>
	</body>
</html>