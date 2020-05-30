package br.com.bring2me.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.LoginDAO;
import br.com.bring2me.model.Login;

@Controller
public class HomeController {
	
	@Autowired
	private LoginDAO dao;
	
	@RequestMapping(value = "/login")
	public ModelAndView login(ModelAndView model) {
		model.setViewName("login/index");
		Login login = new Login();
		model.addObject("login", login);
		return model;
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public ModelAndView processarLogin(@ModelAttribute Login login) {
		ModelAndView model = new ModelAndView("redirect:/home");
		
		Login log = dao.getLogin(login.getEmail());
		
		if(log.getSenha().isEmpty() || !log.getSenha().equals(login.getSenha())) {
			model.setViewName("redirect:/login");
			model.addObject("statusLogin", "erro");
		} else {
			//TO-DO impementar sessão do usuário e cache
		}
		
		return model;
	}	
	
	@RequestMapping(value = "/home")
	public ModelAndView home(ModelAndView model) {
		model.setViewName("home/index");		
		return model;
	}

}
