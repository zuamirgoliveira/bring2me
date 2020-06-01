package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Malote;

public interface MaloteDAO {
	
	public int salvar(Malote novoMalote);
	
	public int atualizar(Malote malote);
	
	public int deletar(String idMalote);
	
	public Malote buscarMalote(String idMalote);
	
	public List<Malote> listarMalotes();
	
}
