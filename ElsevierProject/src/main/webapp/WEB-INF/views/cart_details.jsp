<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.qa.models.Book"%>
<%@page import="java.text.NumberFormat"%>
<%
// Webpage title 
String title="Foundation Books"; 

// Navigation link name
String navName = "cart";
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
    
    <%!
    
      ArrayList<Book> books;
    
      Map<Integer,Integer> bookCounts;
    
      
    %>
    <%NumberFormat formatter = NumberFormat.getCurrencyInstance(); %>
    
    <%
    

    
    books  = (ArrayList<Book>) session.getAttribute("filtered_books");
    
    bookCounts = (Map<Integer,Integer>)  session.getAttribute("book_counts");
    
    double cartTotal = 0.0;
    
    double orderTotal = 0.0;
    
    double totalPrice =  0.0;
    
	String cartTotalForm = "$0.00";
    
    String orderTotalForm = "$0.00";
    
    String totalPriceForm = "$0.00";
    
    String checkLogin;
    
    if(session.getAttribute("logged_in_customer") == null)
    	checkLogin = "/login";
    else 
    	checkLogin = "/checkout";
    %>
    
    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
   

    <div class="row">
      <div class="medium-6 large-6 columns">
      <% 
     
      
      /* for(Book book : books)
      {
    	  
    	  int quantity = bookCounts.get(book.getBookId());
    	  double price = book.getPrice();
    	  totalPrice = book.getPrice() * quantity;
    	  cartTotal = cartTotal + book.getPrice()*quantity;
    	  System.out.println("Cart Total "+cartTotal);
    	  
      } */
      
      
      int i = 0;
      for(Book book : books)
      {
    	  
    	  int quantity = bookCounts.get(book.getBookId());
    	  double price = book.getPrice();
    	  totalPrice = book.getPrice() * quantity;
    	  cartTotal = cartTotal + book.getPrice()*quantity;
    	  System.out.println("Cart Total "+cartTotal);
    	  
    	  totalPriceForm = formatter.format(totalPrice);
    	  cartTotalForm = formatter.format(cartTotal);
    	  String priceForm = formatter.format(price);
    	  
    	  
      %>
       
        <img class="thumbnail" src="<%=book.getBookImage()%>" height="350px" width="225px"/>
        <div class="row">
        
          <div class="column large-4 medium-4 small-12">
            ISBN: <%=book.getISBN()%>
          </div>
          
          <div class="column large-4 medium-4 small-12">
            Published In <%=book.getPublishedDate()%>
          </div>
          <div class="column large-4 medium-4 small-12">
            <form id="cartForm" name="f1">
            	<input type="hidden" name="price" value="<%=price%>"/>
            	<input type="hidden" name="cart_total" value="<%=cartTotal%>"/>
            	Price: <label id="price_label<%=i%>"><%=priceForm%></label>
            	<input type="hidden" name="cart_total" value="<%=priceForm%>"/>
            	<input id="quantity" type= "hidden"  min="1" name="quantity" value="1"/>
         	</form>
          </div>
          
         
        </div>
        
        <div class="row">
          
          <div class="column">
            <a href="/removeFromCart?bookId=<%=book.getBookId() %>"> Remove </a>
          </div>
        
        </div>
        
      <%
      i++;
      }
      %>
     
      </div>
      <div class="medium-6 large-6 columns">
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             <input type="hidden" name="order_total" id="cart_total" value="<%=cartTotal %>"/> 
            <label for="middle-label" class="middle" id="cart_total_label"><%=cartTotalForm %></label>
           </div>
           
       </div>
   
		<form action=<%=checkLogin%> method="post" id="checkout_form">   
		<input type="hidden" name="order_total" value="<%=cartTotal %>"/>   
		
		<%if(checkLogin.equals("/login")) { %>
		<h3>You must be logged in to<br>proceed to checkout</h3><br>
		<input type="submit" class="button large expanded" value="Login"/>
		<%} else {%>		
        <input type="submit" class="button large expanded" value="Proceed to Checkout"/>
        <%}%>
        </form> 
      </div>  
 </div>
 </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <script>
      $(document).foundation();
    </script> 
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>