package br.com.bring2me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RastrearMaloteController {
	
	@RequestMapping(value = "/rastrear")
	public ModelAndView configUsr(ModelAndView model) {
		model.setViewName("rastrear-malote");
		model.addObject("message", "Hello World!!");
		
		return model;
	}

}
