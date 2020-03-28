package br.com.bring2me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ConfigUsrController {
	
	@RequestMapping(value = "/config")
	public ModelAndView rastrearMalote(ModelAndView model) {
		model.setViewName("config-usr");
		model.addObject("message", "Hello World!!");
		
		return model;
	}

}
