package com.qa.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
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
public class ErrorsController implements ErrorController {

	@RequestMapping("/error")
	public ModelAndView error(HttpSession session) 
	{
		session.invalidate();
		return new ModelAndView("/error");
		 
	}

	@Override
	public String getErrorPath() {
		// TODO Auto-generated method stub
		return "/error";
	}
}
