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

<%
double calculatedPrice = (Double) request.getAttribute("total_price");
out.println(calculatedPrice);
System.out.println("Called");
%>
<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>