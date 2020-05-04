package br.com.bring2me.dao;

import java.util.List;

import br.com.bring2me.model.Tramite;

public interface TramiteDAO {
	
	public int salvar(Tramite novoUsuario);
	
	public List<Tramite> listarTramite(int idTramite);
	
}
