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
public class CheckoutController {

	@RequestMapping("/sendShippingAddress")
	public ModelAndView checkoutProcess(HttpSession session, @ModelAttribute("Address") Address shipping, @ModelAttribute("logged_in_customer") Customer customer)
	{	
		ModelAndView modelAndView = new ModelAndView("billing_address");
		shipping.setAddressType("shipping");
		shipping.setCustomerId(customer.getCustomerId());
		modelAndView.addObject("shipping_address", shipping);
		System.out.println("\nShipping: " + shipping);
		
		session.setAttribute("shipping_address", shipping);
	    return modelAndView;
	}
	
	@RequestMapping("/sendBillingAddress")
	public ModelAndView checkoutProcessBilling(HttpSession session, @ModelAttribute("Address") Address billing, @ModelAttribute("logged_in_customer") Customer customer)
	{
		ModelAndView modelAndView = new ModelAndView("payment_form");
		billing.setAddressType("billing");
//		modelAndView.addObject("shipping_address", shipping);
		billing.setCustomerId(customer.getCustomerId());
		session.setAttribute("billing_address", billing);
//		modelAndView.addObject("billing_address", billing);
//		System.out.println("\nShipping: " + shipping);

	    return modelAndView;
	}
	
//	@RequestMapping("/loginThroughCheckout")
//	public ModelAndView loginThroughCheckout(@ModelAttribute("book_counts") Map<Integer,Integer> bookCounts,@RequestParam("order_total") double orderTotal)
//	{
//		
//		ModelAndView modelAndView = new ModelAndView("login_through_checkout","order_total",orderTotal);
//		
//		modelAndView.addObject("order_total", orderTotal);
//		modelAndView.addObject("book_counts", bookCounts);
//	    return modelAndView;
//	}
	
	@RequestMapping("/paymentProcess")
	public ModelAndView paymentProcess(){
		ModelAndView modelAndView = new ModelAndView("confirm_order");
//		modelAndView.addObject("shipping_address", shipping);
//		modelAndView.addObject("billing_address", billing);
//		System.out.println("\nShipping: " + shipping);
//		modelAndView.addObject("order_recieved", true);
	    return modelAndView;
	}
	
//	@RequestMapping("/submitBilling")
//	public ModelAndView submitBilling(){
//		ModelAndView modelAndView = new ModelAndView("payment_form");
//		modelAndView.addObject("same", true);
//		return modelAndView;
//	}

	
	
	
	
	
	
}
