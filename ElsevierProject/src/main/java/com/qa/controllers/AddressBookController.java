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

@Controller
@SessionAttributes(names={"books","cart_items","logged_in_customer","Address"})
public class AddressBookController {

	@Autowired
	private AddressRepository addressRepository;
	
	@RequestMapping("/addressBook")
	public ModelAndView addressBook(@ModelAttribute("logged_in_customer") Customer loggedInCustomer)
	{
		Address sAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "shipping");
		Address bAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "billing");
		String view;
		if ((sAddress!=null) && (bAddress!=null)){
			view = "address_book2";
		}
		else {
			view = "address_book";
		}
		System.out.println(bAddress);
		ModelAndView modelAndView = new ModelAndView(view,"logged_in_customer",loggedInCustomer);
		modelAndView.addObject("shipping_address", sAddress);
		modelAndView.addObject("billing_address", bAddress);
		
	    return modelAndView;
	}
	
	@RequestMapping("/updateAddressBook")
	public ModelAndView updateAddressBook(@ModelAttribute("logged_in_customer") Customer loggedInCustomer)
	{
		ModelAndView modelAndView = new ModelAndView("address_book","logged_in_customer",loggedInCustomer);
		
	    return modelAndView;
	}
	
	@RequestMapping("/updateAddress")
	public ModelAndView updateAddress(@ModelAttribute("logged_in_customer") Customer loggedInCustomer, @ModelAttribute("address_book") Address address)
	{
		
		ModelAndView modelAndView  = null;
		
		Address billingAddress = null;
		Address shippingAddress = null;
		System.out.println("Before update ");

		System.out.println("ID "+loggedInCustomer.getCustomerId());
		System.out.println("Name"+loggedInCustomer.getFirstName());
		System.out.println("Email"+loggedInCustomer.getEmail());
		
		int custId = loggedInCustomer.getCustomerId();
		String addressType = address.getAddressType();
		
		if (addressType.equals("billing"))
		{
			address.setAddressId(custId * 2);
		}
		else 
		{
			address.setAddressId(custId * 2 + 1);
		}
		address.setCustomerId(custId);
		
		Address bAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "billing");
		
		Address sAddress = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(), "shipping");
		
		if((addressType.equals("billing") && bAddress!=null) || (addressType.equals("shipping") && sAddress!=null ))
		{
		
		        int recordsUpdated = addressRepository.updateBillingAddress(address.getAddressLine1(),
				address.getAddressLine2(), 
				address.getCity(), 
				address.getPostcode(),
				address.getState(),
				address.getCountry(), 
				address.getPhoneNumber(), 
				loggedInCustomer.getCustomerId(), 
				address.getAddressType());
		
		if(recordsUpdated>0)
		{
			if (address.getAddressType().equals("billing")){
				billingAddress = address;
				shippingAddress = sAddress;
			}
			else
			{
				shippingAddress = address;
				billingAddress=bAddress;
			}
//			billingAddress  = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(),"billing");
//			shippingAddress  = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(),"shipping");
			
			System.out.println("After update ");
			modelAndView = new ModelAndView("address_book2","billing_address",billingAddress);
			modelAndView.addObject("shipping_address", shippingAddress);
			System.out.print(billingAddress);
			System.out.print(shippingAddress);
			
		}
		else
		{
			billingAddress  = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(),"billing");
			shippingAddress  = addressRepository.findAddressByType(loggedInCustomer.getCustomerId(),"shipping");
			modelAndView = new ModelAndView("address_book2","billing_address",billingAddress);
			modelAndView.addObject("shipping_address", shippingAddress);
			
		}
		
		}
		else
		{
			Address savedAddress = addressRepository.save(address);
			modelAndView = new ModelAndView("address_book2","billing_address",savedAddress);
			
		}
		return modelAndView;
	}
	
}
