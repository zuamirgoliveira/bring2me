package br.com.bring2me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public ModelAndView loginView(ModelAndView model) {
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String processarLogin(ModelAndView model) {
		
		return "";
	}
	
	@RequestMapping(value = "/home")
	public ModelAndView home(ModelAndView model) {
		model.setViewName("home/index");
		model.addObject("message", "Hello World!!");
		
		return model;
	}

}
