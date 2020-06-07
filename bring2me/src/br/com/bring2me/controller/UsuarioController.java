package br.com.bring2me.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.model.Usuario;
import br.com.bring2me.util.Constantes;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioDAO usrDAO;
	
	@RequestMapping(value = "/usuario")
	public ModelAndView listarUsuarios(ModelAndView model) {
		model.setViewName(Constantes.USUARIO_INDEX);
		List<Usuario> usuarioLista = usrDAO.listarUsuarios();
		model.addObject("usuarioLista", usuarioLista);
		
		return model;
	}
	
	@RequestMapping(value = "/novo-usuario", method = RequestMethod.GET)
	public ModelAndView novoUsuario(ModelAndView model) {
		model.setViewName(Constantes.USUARIO_FORM);
		Usuario novoUsuario = new Usuario();
		model.addObject("usuario", novoUsuario);
		
		return model;
	}
	
	@RequestMapping(value = "/salvar-usuario", method = RequestMethod.POST)
	public ModelAndView salvarUsuario(@ModelAttribute Usuario usuario) {
		ModelAndView model = new ModelAndView(Constantes.USUARIO_FORM); 
		
		if(usuario.getIdUsuario().isEmpty() || usuario.getIdUsuario() == null) {
			if(usrDAO.salvar(usuario) == 1) {
				model.addObject(Constantes.TITULO_MODAL, "Sucesso");
				model.addObject(Constantes.MENSAGEM, "Usuário cadastrado com sucesso!");
			} else {
				model.addObject(Constantes.TITULO_MODAL, "Erro");
				model.addObject(Constantes.MENSAGEM, "Erro ao cadastrar usuário. Tente novamente  mais tarde.");
			}
		} else {
			if(usrDAO.atualizar(usuario) == 1) {
				model.addObject(Constantes.TITULO_MODAL, "Sucesso");
				model.addObject(Constantes.MENSAGEM, "Usuário atualizado com sucesso!");
			} else {
				model.addObject(Constantes.TITULO_MODAL, "Erro");
				model.addObject(Constantes.MENSAGEM, "Erro ao atualizar usuário. Tente novamente  mais tarde.");
			}
		}
		return model;
	}
	
	@RequestMapping(value = "/editar-usuario", method = RequestMethod.GET)
	public ModelAndView editarUsuario(HttpServletRequest request) {
		String id = request.getParameter(Constantes.ID);
		Usuario usuario = usrDAO.getUsuarioById(id);
		
		ModelAndView model = new ModelAndView();
		model.setViewName(Constantes.USUARIO_FORM);
		model.addObject("usuario", usuario);
		return model;
	}

}
