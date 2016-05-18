package com.mvcdemo.web.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String loginSuccess(Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null)
			return "redirect:/home";
		else
			return "redirect:/login";
		
	}
	
	@RequestMapping(value={"/login"}, method=RequestMethod.GET)
	public String login(Model model) {
		
		return "login";
		
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		//Checks to see if user is logged in, it true, logs the user out.
		if(auth != null)
			new SecurityContextLogoutHandler().logout(request, response, auth);
		
		return "redirect:/login?logout";
	}
	
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	
	}
	
}
