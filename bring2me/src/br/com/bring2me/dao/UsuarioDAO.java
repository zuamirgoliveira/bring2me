package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Usuario;

public interface UsuarioDAO {
	
	public int salvar(Usuario novoUsuario);
	
	public int atualizar(Usuario usuario);
	
	public Usuario getUsuario(String cpfCnpj);
	
	public List<Usuario> listarUsuarios();
	
}
