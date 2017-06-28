<%@page import="com.qa.models.Customer"  %>

<%
Customer current_customer = (Customer) session.getAttribute("logged_in_customer");	
%>

<div class="title-bar" data-responsive-toggle="example-menu" data-hide-for="medium">
  <button class="menu-icon" type="button" data-toggle="example-menu"></button>
  <div class="title-bar-title">Menu</div>
</div>

<div class="top-bar" id="example-menu">
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
			<ul class="vertical menu">
			  <li><a href="#">Order history</a></li>
			  <li><a href="/addressBook">Address book</a></li>
			  <li><a href="/profile">Account details</a></li>
			  <li><a href="/logout">Logout</a></li>
			</ul>
		  </li>
		  <% } %>
    </ul>
  </div>
  <div class="top-bar-right">
    <ul class="menu">
      <li><input type="search" placeholder="Search"></li>
      <li><button type="button" class="button">Search</button></li>
    </ul>
  </div>
</div>

<!-- Opening tags for main content box -->
<section class="row">
<div class="large-12 column text-center">
