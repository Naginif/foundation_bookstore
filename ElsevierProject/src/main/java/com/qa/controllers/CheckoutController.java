package com.qa.controllers;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Orders;
import com.qa.models.Payment;
import com.qa.repositories.OrdersRepository;
import com.qa.repositories.AddressRepository;

@SessionAttributes(names={"book_counts", "logged_in_customer"})
@Controller
public class CheckoutController {
	
	@Autowired
	private OrdersRepository ordersRepository;

	@Autowired
	private AddressRepository addressRepository;
	
	@RequestMapping("/sendShippingAddress")
	public ModelAndView checkoutProcess(HttpSession session, @ModelAttribute("Address") Address shipping, @ModelAttribute("logged_in_customer") Customer customer)
	{	
		ModelAndView modelAndView = new ModelAndView("billing_address");	
		shipping.setAddressType("shipping");
		shipping.setCustomerId(customer.getCustomerId());		
		session.setAttribute("shipping_address", shipping);
		
		//Fills in saved address
		Customer loggedInCustomer = (Customer) session.getAttribute("logged_in_customer");
		Address bAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "billing");
		modelAndView.addObject("billing_address", bAddress);
		

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
		int i = (int) (ordersRepository.count() + 1);
		System.out.println(i);
		for (Book b : cart){
			ordersRepository.save(new Orders(i, b.getBookId(), b.getBookImage(), 1, localDate, customer.getCustomerId()));
			i++;
		}
		sesh.setAttribute("confirm_order", true);
		return modelAndView;
	}

	
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
		ModelAndView modelAndView = new ModelAndView("checkout","order_total",orderTotal);
		
		//Fills in saved Address
		Address sAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "shipping");
		modelAndView.addObject("book_counts", bookCounts);
		modelAndView.addObject("shipping_address", sAddress);
		return modelAndView;
		
	}
	
	
	
	
	
	
}
