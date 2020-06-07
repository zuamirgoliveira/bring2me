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
import br.com.bring2me.model.Item;
import br.com.bring2me.util.Constantes;

@Controller
public class ItemController {
	
	@Autowired
	private ItemDAO itenDAO;
	
	@RequestMapping(value = "/itens")
	public ModelAndView listarItems(ModelAndView model) {
		model.setViewName(Constantes.ITEM_INDEX);
		List<Item> itemLista = itenDAO.listarItens();
		model.addObject("itemLista", itemLista);
		
		return model;
	}
	
	@RequestMapping(value = "/novo-item", method = RequestMethod.GET)
	public ModelAndView novoItem(ModelAndView model) {
		model.setViewName(Constantes.ITEM_FORM);
		Item novoItem = new Item();
		model.addObject("item", novoItem);
		
		return model;
	}
	
	@RequestMapping(value = "/salvar-item", method = RequestMethod.POST)
	public ModelAndView salvarItem(@ModelAttribute Item item) {
		ModelAndView model = new ModelAndView(Constantes.ITEM_FORM);
		
		if(item.getIdItem().isEmpty() || item.getIdItem() == null) {
			if(itenDAO.salvar(item) == 1) {
				model.addObject(Constantes.TITULO_MODAL, "Sucesso");
				model.addObject(Constantes.MENSAGEM, "Item cadastrado com sucesso!");				
			} else {
				model.addObject(Constantes.TITULO_MODAL, "Erro");
				model.addObject(Constantes.MENSAGEM, "Erro ao cadastrar o item. Tente novamente  mais tarde.");				
			}
		} else {
			if(itenDAO.atualizar(item) == 1) {
				model.addObject(Constantes.TITULO_MODAL, "Sucesso");
				model.addObject(Constantes.MENSAGEM, "Item atualizado com sucesso!");
			} else {
				model.addObject(Constantes.TITULO_MODAL, "Erro");
				model.addObject(Constantes.MENSAGEM, "Erro ao atualizar o item. Tente novamente  mais tarde.");
			}
		}
		
		return model;
	}
	
	@RequestMapping(value = "/editar-item", method = RequestMethod.GET)
	public ModelAndView editarItem(HttpServletRequest request) {
		String id = request.getParameter(Constantes.ID);
		Item item = itenDAO.buscarItem(id);
		
		ModelAndView model = new ModelAndView();
		model.setViewName(Constantes.ITEM_FORM);
		model.addObject("item", item);
		return model;
	}
	
	@RequestMapping(value = "/deletar-item", method = RequestMethod.GET)
	public ModelAndView deletarItem(HttpServletRequest request) {
		ModelAndView model = new ModelAndView(Constantes.ITEM_INDEX);
		String id = request.getParameter(Constantes.ID);
		
		if(itenDAO.deletar(id) == 1) {
			model.addObject(Constantes.TITULO_MODAL, "Sucesso");
			model.addObject(Constantes.MENSAGEM, "Item removido com sucesso!");				
		} else {
			model.addObject(Constantes.TITULO_MODAL, "Erro");
			model.addObject(Constantes.MENSAGEM, "Erro ao deletar o item. Tente novamente  mais tarde.");				
		}
		
		List<Item> itemLista = itenDAO.listarItens();
		model.addObject("itemLista", itemLista);
		
		return model;
	}
}
