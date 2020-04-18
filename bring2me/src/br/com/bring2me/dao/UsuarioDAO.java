package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Login;
import br.com.bring2me.model.Usuario;

public interface UsuarioDAO {
	
	public int salvar(Usuario usr);
	
	public int atualizar(Usuario usr);
	
	public Usuario getUsuario(String cpfCnpj);
	
	public List<Usuario> listarUsuarios();
	
	public Login getLogin(Login login);

	
}
