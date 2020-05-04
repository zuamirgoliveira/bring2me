package br.com.bring2me.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import br.com.bring2me.model.Malote;
import br.com.bring2me.util.DateUtils;

public class MaloteDAOImpl implements MaloteDAO {
	
	private JdbcTemplate jdbcTemplate;

	public MaloteDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int salvar(Malote malote) {
		String sql = "INSERT INTO tb_malote (status, dt_postagem, dt_prev_entrega, dt_entrega, codigo_rastreio,"
				+ "tp_transporte, id_usr_remetente, id_usr_destinatario) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		
		return jdbcTemplate.update(sql, malote.getStatus(), malote.getDtPostagem(), malote.getDtPrevEntrega(), malote.getDtEntrega(),
				malote.getCodigoRastreio(), malote.getTpTransporte(), malote.getIdUsrRemetente(), malote.getIdUsrDestinatario());
	}

	@Override
	public int atualizar(Malote malote) {
		String sql = "UPDATE tb_malote SET status = ?, dt_postagem = ?, dt_prev_entrega = ?, dt_entrega = ?, codigo_rastreio = ?,"
				+ "tp_transporte = ?, id_usr_remetente = ?, id_usr_destinatario = ? WHERE id_malote = ?";
		
		return jdbcTemplate.update(sql, malote.getStatus(), malote.getDtPostagem(), malote.getDtPrevEntrega(), malote.getDtEntrega(),
				malote.getCodigoRastreio(), malote.getTpTransporte(), malote.getIdUsrRemetente(), malote.getIdUsrDestinatario());
	}
	
	@Override
	public int deletar(int malote) {
		String sql = "DELETE FROM tb_malote WHERE id_malote = ?";
		
		return jdbcTemplate.update(sql, malote);
	}

	@Override
	public Malote buscarMalote(int idMalote) {
		String sql = "SELECT * FROM tb_malote WHERE id_malote = " + idMalote;
		
		ResultSetExtractor<Malote> extractor = new ResultSetExtractor<Malote>() {
			@Override
			public Malote extractData(ResultSet rs) {
				Malote malote = new Malote();
				DateUtils dt = new DateUtils();
				try {
					if (rs.next()) {
						malote.setStatus(rs.getString("status"));
						malote.setDtPostagem(dt.stringToDate(rs.getString("dt_postagem")));
						malote.setDtPrevEntrega(dt.stringToDate(rs.getString("dt_prev_entrega")));
						malote.setDtEntrega(dt.stringToDate(rs.getString("dt_entrega")));
						malote.setCodigoRastreio(rs.getString("codigo_rastreio"));
						malote.setTpTransporte(rs.getString("tp_transporte"));
						malote.setIdUsrRemetente(Integer.parseInt(rs.getString("id_usr_remetente")));
						malote.setIdUsrDestinatario(Integer.parseInt(rs.getString("id_usr_destinatario")));
					}
				} catch (SQLException|DataAccessException e) {
					//logger
				}
				return malote;
			}
		};
		return jdbcTemplate.query(sql, extractor);
	}

	@Override
	public List<Malote> listarMalotes() {
		String sql = "SELECT * FROM tb_Malote";
		DateUtils dt = new DateUtils();
		
		return jdbcTemplate.query(
                sql,
                (rs, rowNum) ->
                       new Malote(
                    		   rs.getString("status"),
                    		   dt.stringToDate(rs.getString("dt_postagem")),
                    		   dt.stringToDate(rs.getString("dt_prev_entrega")),
                    		   dt.stringToDate(rs.getString("dt_entrega")),
                    		   rs.getString("codigo_rastreio"),
                    		   rs.getString("tp_transporte"),
                    		   Integer.parseInt(rs.getString("id_usr_remetente")),
                    		   Integer.parseInt(rs.getString("id_usr_destinatario"))
                    		   )
                       );
	}
}
