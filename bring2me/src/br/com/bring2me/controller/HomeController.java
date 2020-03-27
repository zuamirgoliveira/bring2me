package br.com.bring2me.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.UsuarioDAO;

@Controller
public class HomeController {
	
	@Autowired
	private UsuarioDAO usrDao;
	
	@RequestMapping(value = "/")
	public ModelAndView listarUsuarios(ModelAndView model) {
		model.setViewName("index");
		model.addObject("usrLista", "Hello World!!");
		
		return model;
	}

}
