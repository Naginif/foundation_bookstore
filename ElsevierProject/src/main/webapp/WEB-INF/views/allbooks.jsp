<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Iterator" %>
<%@page import="com.qa.models.Book" %>
<%@page import="com.qa.models.Customer" %>
<%@page import="java.text.NumberFormat" %>
<%
// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "home";

//Part of a workaround to make the header look nice
navName = "header_workaround";
%>

<!doctype html>

<html class="no-js" lang="en">

<!-- Head tags  -->
<%@include file="html/head.jsp" %>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>
    
	<h1>Our Library</h1>
	
    <section class="row">
	<div class="large-12 column text-center">

	<!-- Content goes here -->
	
	
	
	<div class="row">
	
		<%
		Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
		Iterator<Book> bookIter = books.iterator();
		while(bookIter.hasNext()) {
			Book book = bookIter.next();
		%>
		   	<div class="column large-4 medium-6 small-12 <% if (!bookIter.hasNext()) %>end <%;%>">
      
        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail" src="<%=book.getBookImage()%>" style="width:450px;height:375px;"></a>
        <!--  a href="/addToCart?bookId=" class="button expanded">Add to Cart</a>-->
      	
      	</div>
      
    <%
    }
    %> 
	
	</div>
	
	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
