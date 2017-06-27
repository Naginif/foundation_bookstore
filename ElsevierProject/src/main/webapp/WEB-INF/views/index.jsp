<<<<<<< HEAD
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
<style>
	.row:last-child{
	float:left;}
</style>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>

	<!-- Content goes here -->

	<%
		Customer customer = (Customer) session.getAttribute("logged_in_customer");
		String customerName;	
	
		if (customer!=null) {
			customerName = customer.getFirstName();
		} else {
			customerName = "Welcome";
		}
		
		if((boolean)request.getAttribute("order_recieved")){%>
			<div>
			<h3>Your Order has been received!</h3> 
			</div>
		<%};%>
					

      

    <h1><%=customerName %>, Our Newest Books</h1>

    <div class="row">

 
    <%
    Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
    Iterator<Book> bookIter = books.iterator();
    while(bookIter.hasNext()) { 
    
    	Book book = bookIter.next();
    	%>
    	<div class="column large-3 medium-6 small-12 <% if (!bookIter.hasNext()) %>end <%;%>">
      
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
=======
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
<style>
	.row:last-child{
	float:left;}
</style>

  <body>
  	<!-- Navigation markup -->
    <%@ include file="html/nav.jsp" %>

	<!-- Content goes here -->

	<%
		Customer customer = (Customer) session.getAttribute("logged_in_customer");
		String customerName;	
	
		if (customer!=null) {
			customerName = customer.getFirstName();
		} else {
			customerName = "Welcome";
		}
	%>	

      

    <h1><%=customerName %>, Our Newest Books</h1>

    <div class="row">

 
    <%
    Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
    Iterator<Book> bookIter = books.iterator();
    while(bookIter.hasNext()) { 
    
    	Book book = bookIter.next();
    	%>
    	<div class="column large-4 medium-6 small-12 <% if (!bookIter.hasNext()) %>end <%;%>">
      
        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail" src="<%=book.getBookImage()%>" style="width:450px;height:375px;"></a>
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
>>>>>>> branch 'working' of https://github.com/Danielfinigan/foundation_bookstore.git
