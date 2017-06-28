package com.qa.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.qa.models.Address;
import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.repositories.AddressRepository;
import com.qa.repositories.BookRepository;
import com.qa.repositories.CustomerRepository;

@Controller
@SessionAttributes(names={"books"})
public class AdminController {
	@Autowired
	BookRepository bookRepository;
	
	@Autowired
	CustomerRepository customerRepository;

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) 
	{
		session.invalidate();
		return new ModelAndView("/index");
		 
	}

}
