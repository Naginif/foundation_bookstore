package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Address;
import com.qa.models.Customer;
import com.qa.repositories.AddressRepository;
import com.qa.repositories.BookRepository;
import com.qa.repositories.CustomerRepository;

@Controller
@SessionAttributes(names={"books","cart_items","logged_in_customer","Address"})
public class UserController {
	@Autowired
	BookRepository bookRepository;
	
	@Autowired
	CustomerRepository customerRepository;
	
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
		System.out.println("Password"+loggedInCustomer.getPassword());
		
		int recordsUpdated = customerRepository.updateCustomer(loggedInCustomer.getFirstName(),
				loggedInCustomer.getLastName(),
				loggedInCustomer.getEmail(), 
				loggedInCustomer.getCustomerId(),
				loggedInCustomer.getPassword());
		
		if(recordsUpdated>0)
		{
			Customer c  = customerRepository.findOne(loggedInCustomer.getCustomerId());
		
			
			System.out.println("After update ");

			System.out.println("ID "+c.getCustomerId());
			System.out.println("Name"+c.getFirstName());
			System.out.println("Email"+c.getEmail());
			System.out.println("Password"+c.getPassword());
			
			
			modelAndView = new ModelAndView("profile","logged_in_customer",c);
		}
		else
		{
			modelAndView = new ModelAndView("profile","logged_in_customer",loggedInCustomer);
		}
		
		return modelAndView;
	}
	
	
}
