package com.qa.controllers;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Address;
import com.qa.models.Customer;
import com.qa.repositories.AddressRepository;
@SessionAttributes(names={"book_counts"})
@Controller
public class CartController {

	@Autowired
	private AddressRepository addressRepository;
	
	@RequestMapping("/updatePrice")
	public ModelAndView bookDetails(@RequestParam("price") double price,@RequestParam("quantity") int quantity)
	{
		double totalPrice = price * quantity;
		
		System.out.println("Total price is "+price);
		ModelAndView modelAndView = new ModelAndView("return_price","total_price",totalPrice);
		
		return modelAndView;
		
	}
	
	
	
	@RequestMapping("/checkout")
	public ModelAndView checkoutForm(HttpSession session, @ModelAttribute("book_counts") Map<Integer,Integer> bookCounts,@RequestParam("order_total") double orderTotal)
	{
		Customer loggedInCustomer = (Customer) session.getAttribute("logged_in_customer");
		
		Address sAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "shipping");
		Address bAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "billing");
		
		System.out.println("Customer: " + loggedInCustomer);
		System.out.println("Address: " + addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "shipping"));
		
		ModelAndView modelAndView = new ModelAndView("checkout","order_total",orderTotal);
		modelAndView.addObject("book_counts", bookCounts);
		modelAndView.addObject("shipping_address", sAddress);
		modelAndView.addObject("billing_address", bAddress);
		return modelAndView;
		
	}
	
	
	
	
	
}
