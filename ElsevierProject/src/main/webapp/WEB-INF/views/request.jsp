
<%
// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "request";
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
	
	<div class="row column text-center">
		<form id="request_form" action="mailto:customerrequests@foundationbooks.com" method="post">
        <div class="large-6 medium-8 small-12 large-centered medium-centered small-centered">
           <h3> Contact Us!  </h3>
               <label>First Name </label>
               <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" required/> 
               <label>Last Name</label>
               <input type="text" placeholder ="Enter Last Name" name="lastName" required/>
               <label> Book Title </label>
               <input type="text" placeholder="What book are we missing?" name="bookTitle" id="bookTitle" required/> 
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
