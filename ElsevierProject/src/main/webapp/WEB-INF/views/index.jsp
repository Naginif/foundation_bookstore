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
%>

<!doctype html>

<html class="no-js" lang="en">

<!-- Head tags  -->
<%@include file="html/head.jsp" %>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>

	<!-- Content goes here -->
	
	<div class="row column text-center">
	<%
		Customer customer = (Customer) session.getAttribute("logged_in_customer");
		String customerName;	
	
		if (customer!=null) {
			customerName = customer.getFirstName();
		} else {
			customerName = "Welcome";
		}
	%>	
      <h2><%=customerName %>, Our Newest Books
      
      
      <%
         Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
          
      %>
      
      
      </h2>
      <hr>
    </div>

    <div class="row small-up-2 large-up-4">
    
    <%
    
    for(Book book: books)
    {
      
   
    %>
      <div class="column">
      
        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail" src="<%=book.getBookImage()%>"></a>
        <h5><%= book.getTitle()%></h5>
        <%NumberFormat formatter = NumberFormat.getCurrencyInstance(); %>
        <p><%= formatter.format(book.getPrice())%></p>
        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
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
