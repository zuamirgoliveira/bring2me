package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Item;

public interface ItemDAO {
	
	public int salvar(Item novoItem);
	
	public int atualizar(Item item);
	
	public int deletar(String idItem);
	
	public Item buscarItem(String idItem);
	
	public List<Item> listarItens();
	
	public List<Item> listarItensMalote(String idMalote);
	
}
