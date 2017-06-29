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

//Number of books to show in the carousel
int n_books = 3;

//Carousel height
String height = "400px";
%>


<!doctype html>

<html class="no-js" lang="en">

<!-- Head tags  -->
<%@include file="html/head.jsp" %>

  <body>
  <style>
  	.orbit-container { height: <%=height%>; } 

	.orbit-container .orbit-slides-container > * {
	  position: relative;
	  margin-left: 0;
	  float: left;
	  height: 100%;
	}
</style>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>
    
    
	<h1>Foundation bookstore's staff picks</h1>
    
    <section class="row">
	<div class="large-12 column text-center">

	<!-- Content goes here -->
	
		<%
		Customer customer = (Customer) session.getAttribute("logged_in_customer");
		String customerName;	
	
		if (customer!=null) {
			customerName = customer.getFirstName() + ", ";
		} else {
			customerName = "Here's";
		}
	%>
	
	<% 
		ArrayList<Book> cart_items = null;
		
		if (session.getAttribute("confirm_order") == null) {
			cart_items = (ArrayList<Book>) session.getAttribute("cart_items");
		} else {
			
		}		
		
		if (cart_items == null){
			cart_items = new ArrayList<Book>();
			session.setAttribute("cart_items", cart_items);
		}
	%>	
	
	
	 <!-- Books carousel -->
 <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
  <div class="orbit-wrapper">
    <div class="orbit-controls">
      <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
      <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
    </div>
    
    <ul class="orbit-container">

 
    <%
    Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
    Iterator<Book> bookIter = books.iterator();
    for (int i = 1; i <= n_books; i++) { 
    
    	Book book = bookIter.next();
    	%>
      	<li class="orbit-slide<% if (i==1) %> is-active<%;%>">
      	<figure class="orbit-figure">
         <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail" src="<%=book.getBookImage()%>" style="height:<%=height%>;"></a>
        <figcaption class="orbit-caption"><%=book.getTitle() %></figcaption>
        </figure>
      	</li>
      
    <%
    }
    %>  
    </ul>
    </div>
    <nav class="orbit-bullets">
    <% bookIter = books.iterator();
    for (int i = 1; i <= n_books; i++) {
    	Book book = bookIter.next();%>
		<button data-slide="<%=i%>"<% if (i==1) %> class = "is-active"<%;%>><span class="show-for-sr"><%=book.getDescription() %></span></button>
	 <% } %>  
	 </nav>
    
    
    </div>

	
	

	<!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>
