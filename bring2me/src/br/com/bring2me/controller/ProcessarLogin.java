package br.com.bring2me.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.LoginDAO;
import br.com.bring2me.model.Login;
import br.com.bring2me.util.Constantes;

@Controller
public class ProcessarLogin {
	
	@Autowired
	private LoginDAO dao;
	
	@RequestMapping(value = "/login")
	public ModelAndView login(ModelAndView model) {
		model.setViewName(Constantes.LOGIN_INDEX);
		Login login = new Login();
		model.addObject("login", login);
		return model;
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public ModelAndView processarLogin(@ModelAttribute Login login) {
		ModelAndView model = new ModelAndView(Constantes.LOGIN_INDEX);
		
		Login log = dao.getLogin(login.getEmail());
		
		
		if(log.getEmail() != null) {
			if(log.getSenha().equals(login.getSenha())) {
				//implementar session
				model.setViewName(Constantes.HOME_INDEX);
			} else {
				model.addObject(Constantes.MENSAGEM, "Senha incorreta. Tente novamente.");
			}
		} else {
			model.addObject(Constantes.MENSAGEM, "Email não encontrado.");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/home")
	public ModelAndView home(ModelAndView model) {
		model.setViewName(Constantes.HOME_INDEX);
		return model;
	}
}
