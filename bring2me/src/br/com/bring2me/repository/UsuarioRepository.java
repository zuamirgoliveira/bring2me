package br.com.bring2me.repository;

import org.springframework.data.repository.CrudRepository;

import br.com.bring2me.models.Usuario;

public interface UsuarioRepository extends CrudRepository<Usuario, Integer>{

}
