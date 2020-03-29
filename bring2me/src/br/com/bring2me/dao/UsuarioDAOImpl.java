package br.com.bring2me.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import br.com.bring2me.model.Usuario;
import br.com.bring2me.util.DateUtils;

public class UsuarioDAOImpl implements UsuarioDAO {
	
	private JdbcTemplate jdbcTemplate;

	public UsuarioDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int salvar(Usuario usr) {
	
		String sql = "INSERT INTO tb_usuario (cpf_cnpj, razao_social, nome, telefone_1, telefone_2, email, dt_nascimento, dt_criacao, dt_atualizacao,"
				+ "	  logradouro, numero, bairro, cidade, estado, cep, complemento) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		return jdbcTemplate.update(sql, usr.getCpfCnpj(), usr.getRazaoSocial(), usr.getNome(), usr.getTelefone1(), usr.getTelefone2(), usr.getEmail(), usr.getDtNascimento(),
				usr.getDtCriacao(), usr.getDtAtualizacao(), usr.getLogradouro(), usr.getNumero(), usr.getBairro(), usr.getCidade(),
				usr.getEstado(), usr.getCep(), usr.getComplemento());
	}

	@Override
	public int atualizar(Usuario usr) {
		String sql = "UPDATE tb_usuario SET razao_social = ?, nome = ?, telefone_1 = ?, telefone_2 = ?, email = ?, dt_nascimento = ?, dt_atualizacao = ?," + 
				"logradouro = ?, numero = ?, bairro = ?, cidade = ?, estado = ?, cep = ?, complemento = ? WHERE cpf_cnpj = ?";
		
		return jdbcTemplate.update(sql, usr.getRazaoSocial(), usr.getNome(), usr.getTelefone1(), usr.getTelefone2(), usr.getEmail(), usr.getDtNascimento(),
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
						usr.setCodigo(Integer.parseInt(rs.getString("codigo")));
						usr.setCpfCnpj(rs.getString("cpf_cnpj"));
						usr.setRazaoSocial(rs.getString("razao_social"));
						usr.setNome(rs.getString("nome"));
						usr.setTelefone1(rs.getString("telefone_1"));
						usr.setTelefone2(rs.getString("telefone_2"));
						usr.setEmail(rs.getString("email"));
						usr.setDtNascimento(dt.stringToDate(rs.getString("dt_nascimento")));
						usr.setDtCriacao(dt.stringToDate(rs.getString("dt_criacao")));
						usr.setDtAtualizacao(dt.stringToDate(rs.getString("dt_atualizacao")));
						usr.setLogradouro(rs.getString("logradouro"));
						usr.setNumero(Integer.parseInt(rs.getString("numero")));
						usr.setBairro(rs.getString("bairro"));
						usr.setCidade(rs.getString("cidade"));
						usr.setEstado(rs.getString("estado"));
						usr.setCep(Integer.parseInt(rs.getString("cep")));
						usr.setComplemento(rs.getString("complemento"));
						usr.setStatusUsuario(rs.getString("status_usuario"));
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
	public int ativarDesativarUsr(String cpfCnpj, String status) {
		String sql = "UPDATE tb_usuario SET dt_atualizacao = ?, status_usuario = ? WHERE cpf_cnpj = ?";
		
		DateUtils dt = new DateUtils();
		
		return jdbcTemplate.update(sql, dt.currentDate(), status, cpfCnpj);
	}

	@Override
	public List<Usuario> listarUsuarios() {
		String sql = "SELECT * FROM tb_usuario";
		DateUtils dt = new DateUtils();
		
		return jdbcTemplate.query(
                sql,
                (rs, rowNum) ->
                       new Usuario(
                    		    Integer.parseInt(rs.getString("codigo")),
	       						rs.getString("cpf_cnpj"),
	       						rs.getString("razao_social"),
	       						rs.getString("nome"),
	       						rs.getString("telefone_1"),
	       						rs.getString("telefone_2"),
	       						rs.getString("email"),
	       						dt.stringToDate(rs.getString("dt_nascimento")),
	       						dt.stringToDate(rs.getString("dt_criacao")),
	       						dt.stringToDate(rs.getString("dt_atualizacao")),
	       						rs.getString("logradouro"),
	       						Integer.parseInt(rs.getString("numero")),
	       						rs.getString("bairro"),
	       						rs.getString("cidade"),
	       						rs.getString("estado"),
	       						Integer.parseInt(rs.getString("cep")),
	       						rs.getString("complemento"),
	       						rs.getString("status_usuario")
                        )
        );
	}
	

}
