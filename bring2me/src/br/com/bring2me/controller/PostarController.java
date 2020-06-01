package br.com.bring2me.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.ItemDAO;
import br.com.bring2me.dao.MaloteDAO;
import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.model.Item;
import br.com.bring2me.model.Malote;
import br.com.bring2me.model.Usuario;

@Controller
public class PostarController {
	
	@Autowired
	MaloteDAO malDAO;
	
	@Autowired
	UsuarioDAO usrDAO;
	
	@Autowired
	ItemDAO itDAO;
	
	@RequestMapping(value = "/postar")
	public ModelAndView listarMalote(ModelAndView model) {
		model.setViewName("postar/index");
		List<Malote> malotes = malDAO.listarMalotes();
		
		for(int i = 0; i < malotes.size(); i++) {
			String remetente = malotes.get(i).getIdUsrRemetente();
			if(!remetente.isEmpty() ) {
				malotes.get(i).setRemetente(usrDAO.getUsuarioById(remetente));
			}
			String destinatario = malotes.get(i).getIdUsrDestinatario();
			if(!destinatario.isEmpty() ) {
				malotes.get(i).setDestinatario(usrDAO.getUsuarioById(destinatario));
			}
		}
		model.addObject("malotes", malotes);
		
		return model;
	}
	
	@RequestMapping(value = "/novo-malote")
	public ModelAndView formMalote(ModelAndView model) {
		model.setViewName("postar/form-malote");
		
		List<Usuario> usuarios = usrDAO.listarUsuarios();
		List<Item> itens = itDAO.listarItens();
		Malote malote = new Malote();
		
		model.addObject("malote", malote);
		model.addObject("usuarios", usuarios);
		model.addObject("itens", itens);
		return model;
	}
	
	@RequestMapping(value = "/salvar-malote", method = RequestMethod.POST)
	public ModelAndView salvarMalote(@ModelAttribute Malote malote) {
		ModelAndView model = new ModelAndView("redirect:/postar");
		
		if(malote.getIdMalote().isEmpty() || malote.getIdMalote() == null) {
			if(malDAO.salvar(malote) == 0) {
				model.setViewName("item/form-malote");
			}
			
		} else {
			if(malDAO.atualizar(malote) == 0) {
				model.setViewName("item/form-malote");
			}
		}
		return model;
	}
	
	@RequestMapping(value = "/deletar-malote", method = RequestMethod.GET)
	public ModelAndView deletarMalote(HttpServletRequest request) {
		malDAO.deletar(request.getParameter("id"));
		
		return new ModelAndView("redirect:/postar");
	}

}
