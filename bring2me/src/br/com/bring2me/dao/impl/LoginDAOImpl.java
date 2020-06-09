package br.com.bring2me.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import br.com.bring2me.dao.LoginDAO;
import br.com.bring2me.model.Login;

public class LoginDAOImpl implements LoginDAO {
	
	private JdbcTemplate jdbcTemplate;

	public LoginDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int salvar(Login login) {
	
		String sql = "INSERT INTO tb_login (email, senha) VALUES (?, ?)";
		
		return jdbcTemplate.update(sql, login.getEmail(), login.getSenha());
	}

	@Override
	public int atualizar(Login login) {
		String sql = "UPDATE tb_login SET email = ?, senha = ? WHERE id_login = ?";
		
		return jdbcTemplate.update(sql, login.getEmail(), login.getSenha());
	}

	@Override
	public Login getLogin(String email) {
		String sql = "SELECT * FROM tb_login WHERE email = '" + email + "'";
		
		ResultSetExtractor<Login> extractor = new ResultSetExtractor<Login>() {
			@Override
			public Login extractData(ResultSet rs) {
				Login login = new Login();
				try {
					if (rs.next()) {
						login.setIdLogin(rs.getString("id_login"));
						login.setEmail(rs.getString("email"));
						login.setSenha(rs.getString("senha"));
						
					}
				} catch (SQLException|DataAccessException e) {
					//logger
			
				}
				return login;
				
			}
		};
		return jdbcTemplate.query(sql, extractor);
	}	

}
