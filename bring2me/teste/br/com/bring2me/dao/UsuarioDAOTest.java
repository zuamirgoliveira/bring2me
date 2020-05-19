package br.com.bring2me.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import br.com.bring2me.dao.impl.UsuarioDAOImpl;
import br.com.bring2me.model.Usuario;
import br.com.bring2me.util.*;

class UsuarioDAOTest {
	
	private DriverManagerDataSource dataSource;
	private UsuarioDAO dao;
	
	@BeforeEach
	void setupBeforeEach() {
		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/bring2medb");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		
		dao = new UsuarioDAOImpl(dataSource);
	}

	@Test
	void testSalvar() {
		DateUtils dt = new DateUtils();
		Usuario usr = new Usuario();
		
		usr.setNomeRazaoSocial("Zuamir Gutemberg");
		usr.setCpfCnpj("08704534401");
		usr.setTelefone("81982263905");
		usr.setDtNascimento(dt.stringToDate("20/12/1989"));
		usr.setDtCriacao(dt.currentDate());
		usr.setLogradouro("Avenida Dois");
		usr.setNumero("213");
		usr.setBairro("Parque Capibaribe");
		usr.setCidade("São Lourenço da Mata");
		usr.setEstado("Pernambuco");
		usr.setCep("54720270");
		usr.setComplemento("casa");
		
		int resultado = 0;
		for(int i = 0; i < 5; i++) {
			usr.setCpfCnpj("0870453440" + i);
			resultado = dao.salvar(usr);
		}
		
		
		assertTrue(resultado > 0);
	}

	@Test
	void testAtualizar() {
		DateUtils dt = new DateUtils();
		Usuario usr = new Usuario();
		
		usr.setNomeRazaoSocial("Zuamir Gutemberg Vieira Candido de Oliveira");
		usr.setCpfCnpj("08704534401");
		usr.setTelefone("81982263902");
		usr.setDtNascimento(dt.stringToDate("20/12/1989"));
		usr.setDtAtualizacao(dt.currentDate());
		usr.setLogradouro("Avenida Dois");
		usr.setNumero("213");
		usr.setBairro("Parque Capibaribe");
		usr.setCidade("São Lourenço da Mata");
		usr.setEstado("Pernambuco");
		usr.setCep("54720270");
		usr.setComplemento("casa");
		
		int resultado = dao.atualizar(usr);
		assertTrue(resultado > 0);

	}

	@Test
	void testBuscarUsuario() {
		String cpfCnpj = "81982263904";
		Usuario usr = dao.getUsuario(cpfCnpj);
		assertNotNull(usr);
	}

	@Test
	void testListarUsuarios() {
		List<Usuario> listaUsuarios = dao.listarUsuarios();
		assertTrue(!listaUsuarios.isEmpty());
	}

}
