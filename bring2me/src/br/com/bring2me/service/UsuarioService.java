package br.com.bring2me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.bring2me.models.Usuario;
import br.com.bring2me.repository.UsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioRepository usrRepo;
	
	public List<Usuario> listAll() {
		return (List<Usuario>) usrRepo.findAll();
	}

}
