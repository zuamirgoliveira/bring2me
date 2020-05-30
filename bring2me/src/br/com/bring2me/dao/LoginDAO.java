package br.com.bring2me.dao;

import br.com.bring2me.model.Login;

public interface LoginDAO {
	
	public int salvar(Login login);
	
	public int atualizar(Login login);
	
	public Login getLogin(String email);
	
}
