package com.qa.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Shipping;
import com.qa.repositories.BookRepository;
import com.qa.repositories.CustomerRepository;

@Controller
@SessionAttributes(names={"books","cart_items","logged_in_customer","Address"})
public class HomeController {

	@Autowired
	BookRepository bookRepository;
	
	@Autowired
	CustomerRepository customerRepository;
	
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
		
		Object items = session.getAttribute("cart_items");
		
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
		if(request.getAttribute("order_recieved")==null){
			modelAndView.addObject("order_recieved", false);
		}
		System.out.print(request.getAttribute("order_recieved"));
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
				System.out.println("registration failed");
			} else 
			{
				if (!customerExists){
				Customer c = customerRepository.save(customer);
				modelAndView = new ModelAndView("registration_success");
				System.out.println("registration success");
				} else {
					modelAndView = new ModelAndView("registration_failed");
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
	  		modelAndView = new ModelAndView("customer_home","logged_in_customer",c);
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
	
	@RequestMapping("/contact")
	public ModelAndView contact(){
		ModelAndView modelAndView = new ModelAndView("contact");
		
		return modelAndView;
	}
	
}
