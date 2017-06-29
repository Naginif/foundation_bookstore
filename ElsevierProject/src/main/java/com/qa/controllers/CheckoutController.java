package com.qa.controllers;

import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Orders;
import com.qa.models.Payment;
import com.qa.repositories.OrdersRepository;

@SessionAttributes(names={"book_counts", "logged_in_customer"})
@Controller
public class CheckoutController {
	
	@Autowired
	OrdersRepository ordersRepository;

	@RequestMapping("/sendShippingAddress")
	public ModelAndView checkoutProcess(HttpSession session, @ModelAttribute("Address") Address shipping, @ModelAttribute("logged_in_customer") Customer customer)
	{	
		ModelAndView modelAndView = new ModelAndView("billing_address");
		shipping.setAddressType("shipping");
		shipping.setCustomerId(customer.getCustomerId());		
		session.setAttribute("shipping_address", shipping);
		
	    return modelAndView;
	}
	
	@RequestMapping("/sendBillingAddress")
	public ModelAndView checkoutProcessBilling(HttpSession session, @ModelAttribute("Address") Address billing, @ModelAttribute("logged_in_customer") Customer customer)
	{
		ModelAndView modelAndView = new ModelAndView("payment_form");
		billing.setAddressType("billing");
		billing.setCustomerId(customer.getCustomerId());
		session.setAttribute("billing_address", billing);

	    return modelAndView;
	}
	
	@RequestMapping("/paymentProcess")
	public ModelAndView paymentProcess(HttpSession session, @ModelAttribute("Payment") Payment payment){
		ModelAndView modelAndView = new ModelAndView("confirm_order");
		session.setAttribute("payment", payment);
	    return modelAndView;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/confirm_order")
	public ModelAndView confirmOrder(HttpServletRequest request, @ModelAttribute("logged_in_customer") Customer customer) {
		ModelAndView modelAndView = new ModelAndView("index");
		
		modelAndView.addObject("confirm_order", true);
		HttpSession sesh = request.getSession();
		ArrayList<Book> cart = (ArrayList<Book>)sesh.getAttribute("cart_items");
		String localDate = LocalDateTime.now().toString();
		System.out.println(cart.size());
		System.out.println(customer);
		for (Book b : cart){
			ordersRepository.save(new Orders(0, b.getBookId(), b.getBookImage(), 1, localDate, customer.getCustomerId()));
		}
		sesh.setAttribute("confirm_order", true);
		return modelAndView;
	}

	
	
	
	
	
	
}
