
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
    <section class="row">
	<div class="large-12 column text-center">

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
      <div class="medium-6 large-6 columns">
        <img class="thumbnail" src="<%=book.getBookImage()%>" height="350px" width="225px"/>
        <div class="row">
          <div class="column large-4 medium-4 small-12">
            ISBN: <%=book.getISBN()%>
          </div>
          <div class="column large-4 medium-4 small-12">
          <%NumberFormat formatter = NumberFormat.getCurrencyInstance(); %>
           Price:       <%= formatter.format(book.getPrice())%>
          </div>
          <div class="column large-4 medium-4 small-12">
            Published In <%=book.getPublishedDate()%>
          </div>
        
        </div>
      </div>
      <div class="medium-6 large-6 columns">
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


    