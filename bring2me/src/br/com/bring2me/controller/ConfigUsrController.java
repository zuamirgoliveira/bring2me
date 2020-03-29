package br.com.bring2me.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.model.Usuario;

@Controller
public class ConfigUsrController {
	
	@Autowired
	private UsuarioDAO usrDAO;
	
	@RequestMapping(value = "/config")
	public ModelAndView rastrearMalote(ModelAndView model) {
		model.setViewName("/usuario/usr-list-page");
		
		List<Usuario> usuarioLista = usrDAO.listarUsuarios();
		model.addObject("usuarioLista", usuarioLista);
		
		return model;
	}

}
