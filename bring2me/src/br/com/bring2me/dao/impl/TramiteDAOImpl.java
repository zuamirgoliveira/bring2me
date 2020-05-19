package br.com.bring2me.dao.impl;

import java.util.List;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import br.com.bring2me.dao.TramiteDAO;
import br.com.bring2me.model.Tramite;
import br.com.bring2me.util.DateUtils;

public class TramiteDAOImpl implements TramiteDAO {
	
	private JdbcTemplate jdbcTemplate;

	public TramiteDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int salvar(Tramite tramite) {
		String sql = "INSERT INTO tb_Tramite (id_malote, uf, local, dt_inicial, dt_final, status, des_status) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		return jdbcTemplate.update(sql, tramite.getIdMalote(), tramite.getUf(), tramite.getLocal(), tramite.getDtInicial(),
				tramite.getDtFinal(), tramite.getStatus(), tramite.getDesStatus());
	}

	@Override
	public List<Tramite> listarTramite(int IdTramite) {
		String sql = "SELECT * FROM tb_Tramite WHERE id_tramite = " + IdTramite;
		DateUtils dt = new DateUtils();
		
		return jdbcTemplate.query(
                sql,
                (rs, rowNum) ->
                       new Tramite(
                    		   Integer.parseInt(rs.getString("id_malote")),
                    		   rs.getString("uf"),
                    		   rs.getString("local"),
                    		   dt.stringToDate(rs.getString("dt_inicial")),
                    		   dt.stringToDate(rs.getString("dt_final")),
                    		   rs.getString("status"),
                    		   rs.getString("des_status")
                    		   )
                       );
	}
}
