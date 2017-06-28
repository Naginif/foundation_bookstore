
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
	
	
	<h1>Our Library</h1>
	
	<div class="row">
	
		<%
		for (int i=0;i<24;i++){
			
	
		%>
	
		<div class="column large-3 medium-6 small-12">
		
			<p><%=i %></p>
	
		</div>
		<%
		}
		%>
	
	</div>
	
	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
