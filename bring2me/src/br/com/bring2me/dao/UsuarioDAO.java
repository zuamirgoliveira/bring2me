package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Usuario;

public interface UsuarioDAO {
	
	public int salvar(Usuario usr);
	
	public int atualizar(Usuario usr);
	
	public Usuario getUsuario(String cpfCnpj);
	
	public int ativarDesativarUsr(String cpfCnpj, boolean status);
	
	public List<Usuario> listarUsuarios();

	
}
