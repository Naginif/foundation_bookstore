package com.qa.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Orders;
import com.qa.models.Address;
import com.qa.repositories.BookRepository;
import com.qa.repositories.CustomerRepository;
import com.qa.repositories.OrdersRepository;

@Controller
@SessionAttributes(names={"books","cart_items","logged_in_customer","Address"})
public class HomeController {

	@Autowired
	BookRepository bookRepository;
	
	@Autowired
	CustomerRepository customerRepository;
	
	@Autowired
	OrdersRepository ordersRepository;
	
	@RequestMapping("/")
	public ModelAndView indexPage(HttpServletRequest request)
	{
		
		ArrayList<Book> cartItems = null;
		
		HttpSession session = request.getSession(false);
		
		if (session == null) {
			session = request.getSession();
		}
		
		Customer custId = (Customer) session.getAttribute("logged_in_customer");
		String customerToString;
		
		if (custId==null) {
			customerToString = null;
		} else {
			customerToString = custId.toString();
		}
		
		System.out.println(customerToString);
		
		Object items = null;
		
		System.out.println("order recieved is " + session.getAttribute("confirm_order"));
		if (session.getAttribute("confirm_order") != null) {
			System.out.println("order_recieved is not null");
			if ((boolean) session.getAttribute("confirm_order") == true) {
			}
						
		} else {
			items = session.getAttribute("cart_items");
		}

		if(items!=null)
		{
			cartItems = (ArrayList<Book>) items;
		}else
		{
			cartItems = new ArrayList<Book>();
		}
		
	
		Iterable<Book> books = bookRepository.findAll();
		
		ModelAndView modelAndView = new ModelAndView("index","books",books);
		modelAndView.addObject("cart_items",cartItems);
		if(request.getAttribute("confirm_order")==null){
			modelAndView.addObject("confirm_order", false);
		}
		System.out.print(request.getAttribute("confirm_order"));
		return modelAndView;
		
	}
	
	@RequestMapping("/allbooks")
	public ModelAndView allbooks(){
		Iterable<Book> books = bookRepository.findAll();
		ModelAndView modelAndView = new ModelAndView("allbooks","books",books);
		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView login()
	{
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("loginFailed", false);
	    return modelAndView;
	}
	
	
	@RequestMapping("/register")
	public ModelAndView register()
	{	
		
		ModelAndView modelAndView = new ModelAndView("register");
	
	    return modelAndView;
	}
	
	
	

	@RequestMapping("/registerProcess")
	public ModelAndView registerProcess(@ModelAttribute("Customer") Customer customer)
	{
		
		Customer existing = customerRepository.findExisting(customer.getEmail());
		boolean customerExists = false;
		
		if(existing != null) {
			customerExists = true;
		}
		
		System.out.println("The email " + customer.getEmail() + " is already taken.");
		
		ModelAndView modelAndView  = null; 
		
		System.out.println("Customer Firstname is "+customer.getFirstName());
		
		
		System.out.println("Customer Password is "+customer.getPassword());
		
		String[] fields = new String[4];
		fields[0] = customer.getFirstName();
		fields[1] = customer.getLastName();
		fields[2] = customer.getEmail();
		fields[3] = customer.getPassword();
		
		boolean anyEmpty = false;
		
		for (int i = 0; i <fields.length; i++){
			
			if(fields[i].isEmpty()){
				anyEmpty = true;
			}
		}
			if(anyEmpty){
				modelAndView = new ModelAndView("registration_failed");
				modelAndView.addObject("failure_reason",  "Some fields were left blank");
				modelAndView.addObject("customer", customer);
				System.out.println("register");
			} else 
			{
				if (!customerExists){
				Customer c = customerRepository.save(customer);
				modelAndView = new ModelAndView("registration_success");
				System.out.println("registration success");
				} else {
					modelAndView = new ModelAndView("register");
					modelAndView.addObject("failure_reason", "That email address has already been registered");
					modelAndView.addObject("customer", customer);
					System.out.println("email already exists");
				}
			}
		
	  	
		return modelAndView;
	}
	
	
	@RequestMapping("/loginProcess")
	public ModelAndView loginProcess(@RequestParam("email") String email,
										@RequestParam("password") String password)
	{
		
		ModelAndView modelAndView  = null;
		
//		System.out.println("Email is "+email);
		
		
//		System.out.println("Password is "+password);
		
		
		Customer c = customerRepository.loginProcess(email, password);
	  
		if(c!=null)
		{
			System.out.println("Success");
	  		modelAndView = new ModelAndView("profile","logged_in_customer",c);
			modelAndView.addObject("loginFailed", false);
		}
		else
		{	
			System.out.println("Failure");
			modelAndView = new ModelAndView("login");
			modelAndView.addObject("loginFailed", true);
			
		}
	  		
		return modelAndView;
	}
	
	
	@RequestMapping("/registered_user_agreement")
	public ModelAndView registereduseragreement(){
		ModelAndView modelAndView = new ModelAndView("registered_user_agreement");
		
		return modelAndView;
	}
	
	@RequestMapping("/about")
	public ModelAndView about(){
		ModelAndView modelAndView = new ModelAndView("about");
		
		return modelAndView;
	}
	
	@RequestMapping("/order_history")
	public ModelAndView order_history(HttpSession session, @ModelAttribute("logged_in_customer") Customer customer){
		System.out.println(customer);
		Iterable<Orders> orders = ordersRepository.findOrders(customer.getCustomerId());
		System.out.println(orders);
		ModelAndView modelAndView = new ModelAndView("order_history", "orders", orders);
		session.setAttribute("orders", orders);
		
		return modelAndView;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact(){
		ModelAndView modelAndView = new ModelAndView("contact");
		
		return modelAndView;
	}
	
	@RequestMapping("/request")
	public ModelAndView request(){
		ModelAndView modelAndView = new ModelAndView("request");
		
		return modelAndView;
	}
	
}
