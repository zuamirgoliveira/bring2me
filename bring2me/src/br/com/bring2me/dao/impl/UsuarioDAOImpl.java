package br.com.bring2me.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.model.Usuario;
import br.com.bring2me.util.DateUtils;

public class UsuarioDAOImpl implements UsuarioDAO {
	
	private JdbcTemplate jdbcTemplate;

	public UsuarioDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int salvar(Usuario usr) {
	
		String sql = "INSERT INTO tb_usuario (cpf_cnpj, nome_razao_social, telefone, dt_nascimento, dt_criacao, dt_atualizacao,"
				+ "	  logradouro, numero, bairro, cidade, estado, cep, complemento) VALUES (?, ?, ?, ?, SYSDATE(), ?, ?, ?, ?, ?, ?, ?, ?)";
		
		return jdbcTemplate.update(sql, usr.getCpfCnpj(), usr.getNomeRazaoSocial(), usr.getTelefone(), usr.getEmail(),
				usr.getDtAtualizacao(), usr.getLogradouro(), usr.getNumero(), usr.getBairro(), usr.getCidade(),
				usr.getEstado(), usr.getCep(), usr.getComplemento());
	}

	@Override
	public int atualizar(Usuario usr) {
		String sql = "UPDATE tb_usuario SET nome_razao_social = ?, telefone = ?, dt_nascimento = ?, dt_atualizacao = ?," + 
				"logradouro = ?, numero = ?, bairro = ?, cidade = ?, estado = ?, cep = ?, complemento = ? WHERE cpf_cnpj = ?";
		
		return jdbcTemplate.update(sql, usr.getNomeRazaoSocial(), usr.getTelefone(), usr.getEmail(),
				usr.getDtAtualizacao(), usr.getLogradouro(), usr.getNumero(), usr.getBairro(), usr.getCidade(),
				usr.getEstado(), usr.getCep(), usr.getComplemento(), usr.getCpfCnpj());
	}

	@Override
	public Usuario getUsuario(String cpfCnpj) {
		String sql = "SELECT * FROM tb_usuario WHERE cpf_cnpj = " + cpfCnpj;
		
		ResultSetExtractor<Usuario> extractor = new ResultSetExtractor<Usuario>() {
			@Override
			public Usuario extractData(ResultSet rs) {
				Usuario usr = new Usuario();
				DateUtils dt = new DateUtils();
				try {
					if (rs.next()) {
						usr.setIdUsuario(rs.getString("id_usuario"));
						usr.setCpfCnpj(rs.getString("cpf_cnpj"));
						usr.setNomeRazaoSocial(rs.getString("razao_social"));
						usr.setTelefone(rs.getString("telefone"));
						usr.setEmail(rs.getString("email"));
						usr.setDtCriacao(dt.stringToDate(rs.getString("dt_criacao")));
						usr.setDtAtualizacao(dt.stringToDate(rs.getString("dt_atualizacao")));
						usr.setLogradouro(rs.getString("logradouro"));
						usr.setNumero(rs.getString("numero"));
						usr.setBairro(rs.getString("bairro"));
						usr.setCidade(rs.getString("cidade"));
						usr.setEstado(rs.getString("estado"));
						usr.setCep(rs.getString("cep"));
						usr.setComplemento(rs.getString("complemento"));
					}
				} catch (SQLException|DataAccessException e) {
					//logger
			
				}
				return usr;
				
			}
		};
		return jdbcTemplate.query(sql, extractor);
	}

	@Override
	public List<Usuario> listarUsuarios() {
		String sql = "SELECT * FROM tb_usuario";
		DateUtils dt = new DateUtils();
		
		return jdbcTemplate.query(
                sql,
                (rs, rowNum) ->
                       new Usuario(
                    		    rs.getString("id_usuario"),
	       						rs.getString("cpf_cnpj"),
	       						rs.getString("nome_razao_social"),
	       						rs.getString("telefone"),
	       						rs.getString("email"),
	       						dt.stringToDate(rs.getString("dt_criacao")),
	       						dt.stringToDate(rs.getString("dt_atualizacao")),
	       						rs.getString("logradouro"),
	       						rs.getString("numero"),
	       						rs.getString("bairro"),
	       						rs.getString("cidade"),
	       						rs.getString("estado"),
	       						rs.getString("cep"),
	       						rs.getString("complemento")
                        )
        );
	}
	

}
