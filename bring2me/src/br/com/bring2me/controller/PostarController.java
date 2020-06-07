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
import br.com.bring2me.util.Constantes;

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
		model.setViewName(Constantes.POSTAR_INDEX);
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
		model.setViewName(Constantes.POSTAR_FORM);
		
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
		ModelAndView model = new ModelAndView(Constantes.POSTAR_FORM);
		
		if(malote.getIdMalote().isEmpty() || malote.getIdMalote() == null) {
			if(malDAO.salvar(malote) == 1) {
				model.addObject(Constantes.TITULO_MODAL, "Sucesso");
				model.addObject(Constantes.MENSAGEM, "Malote cadastrado com sucesso!");
			} else {
				model.addObject(Constantes.TITULO_MODAL, "Erro");
				model.addObject(Constantes.MENSAGEM, "Erro ao cadastrar o malote. Tente novamente  mais tarde.");
			}
		} else {
			if(malDAO.atualizar(malote) == 1) {
				model.addObject(Constantes.TITULO_MODAL, "Sucesso");
				model.addObject(Constantes.MENSAGEM, "Malote atualizado com sucesso!");
			} else {
				model.addObject(Constantes.TITULO_MODAL, "Erro");
				model.addObject(Constantes.MENSAGEM, "Erro ao atualizar o malote. Tente novamente  mais tarde.");
			}
		}
		
		return model;
	}
	
	@RequestMapping(value = "/deletar-malote", method = RequestMethod.GET)
	public ModelAndView deletarMalote(HttpServletRequest request) {
		malDAO.deletar(request.getParameter(Constantes.ID));
		
		return new ModelAndView(Constantes.POSTAR_REDIRECT);
	}
	
	
	@RequestMapping(value = "/editar-malote", method = RequestMethod.GET)
	public ModelAndView editarMalote(HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		model.setViewName(Constantes.POSTAR_FORM);
		
		String id = request.getParameter(Constantes.ID);
		Malote malote = malDAO.buscarMalote(id);
		List<Usuario> usuarios = usrDAO.listarUsuarios();
		List<Item> itens = itDAO.listarItens();
		
		List<Item> list = itDAO.listarItensMalote(id);
		String ids = "";
		for (int i = 0; i < list.size(); i++) {
			ids += list.get(i).getIdItem() + ",";
			itens.add(list.get(i));
		}
		model.addObject("malote", malote);
		model.addObject("itensMalote", ids);
		model.addObject("usuarios", usuarios);
		model.addObject("itens", itens);
		
		return model;
	}
	
	@RequestMapping(value = "/gerar-etiqueta", method = RequestMethod.GET)
	public ModelAndView gerarEtiqueta(HttpServletRequest request) {
		ModelAndView model = new ModelAndView(Constantes.POSTAR_ETIQUETA);
		Malote mal = malDAO.buscarMalote(request.getParameter(Constantes.ID));
		
		Usuario destinatario = usrDAO.getUsuarioById(mal.getIdUsrDestinatario());
		model.addObject("nomeDest", destinatario.getNomeRazaoSocial().toUpperCase());
		model.addObject("cepDest", destinatario.getCep());
		model.addObject("logradouroDest", destinatario.getLogradouro());
		model.addObject("numeroDest", destinatario.getNumero());
		model.addObject("bairroDest", destinatario.getBairro());
		model.addObject("cidadeDest", destinatario.getCidade());
		model.addObject("estadoDest", destinatario.getEstado());
		model.addObject("complementoDest", destinatario.getComplemento());

		Usuario remetente = usrDAO.getUsuarioById(mal.getIdUsrRemetente());
		model.addObject("nomeReme", remetente.getNomeRazaoSocial().toUpperCase());
		model.addObject("cepReme", remetente.getCep());
		model.addObject("logradouroReme", remetente.getLogradouro());
		model.addObject("numeroReme", remetente.getNumero());
		model.addObject("bairroReme", remetente.getBairro());
		model.addObject("cidadeReme", remetente.getCidade());
		model.addObject("estadoReme", remetente.getEstado());
		model.addObject("complementoReme", remetente.getComplemento());
		return model;
	}
}
