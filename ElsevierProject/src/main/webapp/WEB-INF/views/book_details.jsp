
<%@page import="com.qa.models.Book"%>
<%@page import="java.text.NumberFormat"%>
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
    
    <%!
    
      Book book;
    
    
    
    
    %>
    
    
    <%
    
     book = (Book) request.getAttribute("book");
    
    
    
    
    %>  

    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <div class="row columns">
      <nav aria-label="You are here:" role="navigation">
        <ul class="breadcrumbs">
         
          <li><a href="/">Home</a></li>
          <li>
            <span class="show-for-sr">Current: </span> Book Details
          </li>
        </ul>
      </nav>
    </div>

    <div class="row">
      <div class="medium-6 columns">
        <img class="thumbnail" src="<%=book.getBookImage()%>"/>
        <div class="row small-up-4">
          <div class="column">
            ISBN : <%=book.getISBN()%>
          </div>
          <div class="column">
          <%NumberFormat formatter = NumberFormat.getCurrencyInstance(); %>
           Price :       <%= formatter.format(book.getPrice())%>
          </div>
          <div class="column">
            Published On <%=book.getPublishedDate()%>
          </div>
        
        </div>
      </div>
      <div class="medium-6 large-5 columns">
        <h3><%=book.getTitle() %></h3>
        <p><%=book.getDescription() %></p>

        <label>Select the format
        <select id="bookOptions">
          <option value="default">-- Select -- </option>
          <option value="print">Paperback</option>
          <option value="eBook">eBook</option>
          <option value="printAndeBook">PrintBook & eBook</option>
        </select>
        </label>
		<div id="warning" style="color: red;">You must select an option!</div>
        
		<button onclick="validateAndSubmit()" class="button large expanded">Add Me To Cart</button>
        <!-- <button href="/addToCart?bookId=<%=book.getBookId()%>" class="button large expanded" script="">Add to Cart</button> -->
        </div>
    </div>

    <div class="row column">
      <hr>
      <ul class="menu">
        <li>Online Shopping</li>
        <li><a href="/">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <li class="float-right">Copyright 2017</li>
      </ul>
    </div>


 
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
      
      document.getElementById("warning").style.visibility = "hidden";
      function validateAndSubmit() {
    	  if (document.getElementById("bookOptions").selectedIndex == 0) {
    		  document.getElementById("warning").style.visibility = "visible";
    	  } else {
    		  location.href="/addToCart?bookId=<%=book.getBookId()%>";
    	  }
      }
    </script> 
  <!--  Footer markup -->
    <%@include file="html/footer.jsp" %>
  </body>
</html>


    