package br.com.bring2me.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.models.Usuario;
import br.com.bring2me.service.UsuarioService;

@Controller
public class Bring2MeController {
	
	@Autowired
	private UsuarioService service;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		
		List<Usuario> usrList =  service.listAll();
		
		mv.addObject("usrList", usrList);
		
		return mv;
	}
}
