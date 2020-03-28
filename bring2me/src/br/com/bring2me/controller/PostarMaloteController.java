package br.com.bring2me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostarMaloteController {
	
	@RequestMapping(value = "/postar")
	public ModelAndView postarMalote(ModelAndView model) {
		model.setViewName("postar-malote");
		model.addObject("message", "Hello World!!");
		
		return model;
	}

}
