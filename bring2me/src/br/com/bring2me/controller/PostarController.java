package br.com.bring2me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostarController {
	
	@RequestMapping(value = "/malote")
	public ModelAndView listarMalote(ModelAndView model) {
		model.setViewName("postar-pages/index");
		model.addObject("message", "Hello World!!");
		
		return model;
	}
	
	@RequestMapping(value = "/form-malote")
	public ModelAndView formMalote(ModelAndView model) {
		model.setViewName("postar-pages/form-malote");
		model.addObject("message", "Hello World!!");
		
		return model;
	}

}
