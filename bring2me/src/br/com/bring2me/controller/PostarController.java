package br.com.bring2me.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.bring2me.dao.ItemDAO;
import br.com.bring2me.dao.MaloteDAO;
import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.model.Malote;

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
		model.addObject("message", "Hello World!!");
		
		return model;
	}

}
