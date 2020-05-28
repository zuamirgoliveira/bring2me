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

@Controller
public class ItemController {
	
	@Autowired
	private ItemDAO itenDAO;
	
	@RequestMapping(value = "/itens")
	public ModelAndView listarItems(ModelAndView model) {
		model.setViewName("item/listar-itens");
		List<Item> itemLista = itenDAO.listarItens();
		model.addObject("itemLista", itemLista);
		
		return model;
	}
	
	@RequestMapping(value = "/novo-item", method = RequestMethod.GET)
	public ModelAndView novoItem(ModelAndView model) {
		model.setViewName("item/form-item");
		Item novoItem = new Item();
		model.addObject("item", novoItem);
		
		return model;
	}
	
	@RequestMapping(value = "/salvar-item", method = RequestMethod.POST)
	public ModelAndView salvarItem(@ModelAttribute Item item) {
		ModelAndView model = new ModelAndView("redirect:/item");
		
		if(item.getIdItem().isEmpty() || item.getIdItem() == null) {
			if(itenDAO.salvar(item) == 0) {
				model.setViewName("item/form-itens");
			}
			
		} else {
			if(itenDAO.atualizar(item) == 0) {
				model.setViewName("item/form-itens");
			}
		}
		return model;
	}
	
	@RequestMapping(value = "/editar-item", method = RequestMethod.GET)
	public ModelAndView editarItem(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		Item item = itenDAO.buscarItem(id);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("item/form-item");
		model.addObject("item", item);
		return model;
	}
	
	@RequestMapping(value = "/deletar-item", method = RequestMethod.GET)
	public ModelAndView deletarItem(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		int item = itenDAO.deletar(id);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("item/listar-itens");
		return model;
	}

}
