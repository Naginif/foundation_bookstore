<%@page import="com.qa.models.Customer"  %>

<%
Customer current_customer = (Customer) session.getAttribute("logged_in_customer");	
%>

<style>
	#searchQuery{
		float:left;
	}
	#searchButton{
		float:right;
	}
</style>

<div class="title-bar" data-responsive-toggle="top-menu" data-hide-for="medium">
  <button class="menu-icon" type="button" data-toggle="top-menu"></button>
  <div class="title-bar-title">Menu</div>
</div>

<div class="top-bar" id="top-menu">
  <div class="top-bar-left">
    <ul class="vertical medium-horizontal menu"
    data-responsive-menu="drilldown medium-dropdown">
      <li class="menu-text"><a href="/">Foundation Books</a></li>
		  
		  <li><a href="/allbooks">All books</a></li>
		  <li><a href="/cart">Cart</a></li>
		  <% if(current_customer==null) { %>
		  <li><a href="/login">Login</a></li>
		  <li><a href="/register">Register</a></li>
		  <% } else { %>
		  <li><a href="/profile"><%=current_customer.getFirstName() %></a>
			<ul class="menu verticle">
			  <li><a class = "menuLink" href="/order_history">Order history</a></li>
			  <li><a class = "menuLink" href="/addressBook">Address book</a></li>
			  <li><a class = "menuLink" href="/profile">Account details</a></li>
			  <li><a class = "menuLink" href="/logout">Logout</a></li>
			</ul>
		  </li>
		  <% } %>
    </ul>
  </div>
  
  <div class="top-bar-right">
      	<form action="/search" method="GET">
      	<input type="search" name = "searchQuery" id = "searchQuery" placeholder="Search" required>
      	<input type="submit" id="searchButton" class="button" value="Search">
      	</form>

  </div>
</div>

