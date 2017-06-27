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
import com.qa.services.BookService;
import com.qa.services.CustomerService;

@Controller
@SessionAttributes(names={"books","cart_items","logged_in_customer","Address"})
public class HomeController {

	@Autowired
	BookService bookService;
	
	@Autowired
	CustomerService customerService;
	
	@RequestMapping("/")
	public ModelAndView indexPage(HttpServletRequest request)
	{
		
		ArrayList<Book> cartItems = null;
		
		HttpSession session = request.getSession(false);
		
		if (session == null) {
			session = request.getSession();
		}
		
		Object items = session.getAttribute("cart_items");
		
		if(items!=null)
		{
			cartItems = (ArrayList<Book>) items;
		}else
		{
			cartItems = new ArrayList<Book>();
		}
		
	
		Iterable<Book> books = bookService.findAll();
		
		ModelAndView modelAndView = new ModelAndView("index","books",books);
		
		modelAndView.addObject("cart_items",cartItems);
		return modelAndView;
		
	}

	@RequestMapping("/login")
	public ModelAndView login()
	{
		ModelAndView modelAndView = new ModelAndView("login");
	
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
		
		Customer existing = customerService.findExisting(customer.getEmail());
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
				Customer c = customerService.save(customer);
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
		
		
		Customer c = customerService.loginProcess(email, password);
	  
		if(c!=null)
		{
			System.out.println("Success");
	  		modelAndView = new ModelAndView("customer_home","logged_in_customer",c);
		}
		else
		{
			System.out.println("Failure");
			modelAndView = new ModelAndView("login_failed");
			
		}
	  		
		return modelAndView;
	}
	
	
	
	@RequestMapping("/profile")
	public ModelAndView profile(@ModelAttribute("logged_in_customer") Customer loggedInCustomer)
	{
		ModelAndView modelAndView = new ModelAndView("profile","logged_in_customer",loggedInCustomer);
	
	    return modelAndView;
	}
	
	
	
	
	@RequestMapping("/updateProfile")
	public ModelAndView updateProfile(@ModelAttribute("logged_in_customer") Customer loggedInCustomer, @ModelAttribute("Customer") Customer customer)
	{
		
		ModelAndView modelAndView  = null;
		
		System.out.println("Before update ");

		System.out.println("ID "+loggedInCustomer.getCustomerId());
		System.out.println("Name"+loggedInCustomer.getFirstName());
		System.out.println("Email"+loggedInCustomer.getEmail());
		
		
		int recordsUpdated = customerService.updateCustomer(loggedInCustomer.getFirstName(),
				loggedInCustomer.getLastName(),
				loggedInCustomer.getEmail(), 
				loggedInCustomer.getCustomerId());
		
		if(recordsUpdated>0)
		{
			Customer c  = customerService.findOne(loggedInCustomer.getCustomerId());
		
			
			System.out.println("After update ");

			System.out.println("ID "+c.getCustomerId());
			System.out.println("Name"+c.getFirstName());
			System.out.println("Email"+c.getEmail());
			
			
			modelAndView = new ModelAndView("profile","logged_in_customer",c);
		}
		else
		{
			modelAndView = new ModelAndView("profile","logged_in_customer",loggedInCustomer);
		}
		
		return modelAndView;
	}
	
	
	
	@RequestMapping("/addressBook")
	public ModelAndView addressBook(@ModelAttribute("logged_in_customer") Customer loggedInCustomer)
	{
		ModelAndView modelAndView = new ModelAndView("address_book","logged_in_customer",loggedInCustomer);
	
	    return modelAndView;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView modelAndView = new ModelAndView("index");
		
		
		return modelAndView;
	}
	
	@RequestMapping("/registered_user_agreement")
	public ModelAndView registereduseragreement(){
		ModelAndView modelAndView = new ModelAndView("registered_user_agreement");
		
		return modelAndView;
	}
	
}
