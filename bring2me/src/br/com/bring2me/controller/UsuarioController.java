package br.com.bring2me.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.model.Usuario;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioDAO usrDAO;
	
	@RequestMapping(value = "/usuario")
	public ModelAndView listarUsuarios(ModelAndView model) {
		model.setViewName("usuario/listar-usuarios");
		List<Usuario> usuarioLista = usrDAO.listarUsuarios();
		model.addObject("usuarioLista", usuarioLista);
		
		return model;
	}
	
	@RequestMapping(value = "/novoUsuario", method = RequestMethod.GET)
	public ModelAndView novoUsuario(ModelAndView model) {
		model.setViewName("usuario/form-usuarios");
		Usuario novoUsuario = new Usuario();
		model.addObject("usuario", novoUsuario);
		
		return model;
	}
	
	@RequestMapping(value = "/salvar", method = RequestMethod.POST)
	public ModelAndView editarUsuario(@ModelAttribute Usuario usuario) {
		usrDAO.salvar(usuario);
		
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/atualizar", method = RequestMethod.POST)
	public ModelAndView atuaizarUsuario(@ModelAttribute Usuario usuario) {
		usrDAO.atualizar(usuario);
		
		return new ModelAndView("redirect:/");
	}

}
