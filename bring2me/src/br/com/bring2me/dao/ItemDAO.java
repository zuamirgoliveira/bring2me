package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Item;

public interface ItemDAO {
	
	public int salvar(Item novoUsuario);
	
	public int atualizar(Item usuario);
	
	public int deletar(int usuario);
	
	public Item buscarItem(int idItem);
	
	public List<Item> listarItens();
	
}
