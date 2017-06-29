
<%

// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "about";
%>

<!doctype html>

<html class="no-js" lang="en">
<!-- Head tags  -->
<%@include file="html/head.jsp" %>

 	<body>
  		<!-- Navigation markup -->
    	<%@ include file="html/nav.jsp" %>
    	
    	<h1>Welcome to Foundation Bookstore!</h1>
    	
    	<section class="row">
		<div class="large-12 column text-center">
		
    	<div class="row column text-center large-12 medium-12 small-12">
		</div>
		<div class="row">
		<div class="column large-4 medium-4 small-12">
		<p style="font-size:24px">Looking for the classics? Looking for something new? Looking for 
		a great gift? No matter what you are looking for, we have it. And if we don't, we'll order 
		it just for you! <a href="/register">Register</a> an account with us and start loving books all over again.</p>
		</div>
		<div class="column large-8 medium-8 small-12">
		<img src="images/foundation.jpg" alt="foundation" width="75%">
		</div>
		</div>
		<!--  Footer markup -->
    	<%@include file="html/footer.jsp" %>
	</body>
</html>