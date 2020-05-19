package br.com.bring2me.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import br.com.bring2me.dao.ItemDAO;
import br.com.bring2me.model.Item;

public class ItemDAOImpl implements ItemDAO {
	
	private JdbcTemplate jdbcTemplate;

	public ItemDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public int salvar(Item item) {
		String sql = "INSERT INTO tb_item (nome, descricao, quantidade, valor, peso) VALUES (?, ?, ?, ?, ?)";
		
		return jdbcTemplate.update(sql, item.getNome(), item.getDescricao(), item.getQuantidade(), item.getPeso(), item.getValor());
	}

	@Override
	public int atualizar(Item item) {
		String sql = "UPDATE tb_item SET nome = ?, descricao = ?, quantidade = ?, peso = ?, valor = ? WHERE id_item = ?";
		
		return jdbcTemplate.update(sql, item.getNome(), item.getDescricao(), item.getQuantidade(), item.getPeso(), item.getValor());
	}
	
	@Override
	public int deletar(int item) {
		String sql = "DELETE FROM tb_item WHERE id_item = ?";
		
		return jdbcTemplate.update(sql, item);
	}

	@Override
	public Item buscarItem(int idItem) {
		String sql = "SELECT * FROM tb_item WHERE id_item = " + idItem;
		
		ResultSetExtractor<Item> extractor = new ResultSetExtractor<Item>() {
			@Override
			public Item extractData(ResultSet rs) {
				Item item = new Item();
				try {
					if (rs.next()) {
						item.setNome(rs.getString("nome"));
						item.setDescricao(rs.getString("descricao"));
						item.setQuantidade(Integer.parseInt(rs.getString("quantidade")));
						item.setValor(Double.parseDouble(rs.getString("valor")));
						item.setPeso(Double.parseDouble(rs.getString("peso")));
						item.setIdMalote(Integer.parseInt(rs.getString("id_malote")));
					}
				} catch (SQLException|DataAccessException e) {
					//logger
				}
				return item;
			}
		};
		return jdbcTemplate.query(sql, extractor);
	}

	@Override
	public List<Item> listarItens() {
		String sql = "SELECT * FROM tb_Item";
		
		return jdbcTemplate.query(
                sql,
                (rs, rowNum) ->
                       new Item(
                    		   rs.getString("nome"),
                    		   rs.getString("descricao"),
                    		   Integer.parseInt(rs.getString("quantidade")),
                    		   Double.parseDouble(rs.getString("valor")),
                    		   Double.parseDouble(rs.getString("peso")),
                    		   Integer.parseInt(rs.getString("id_malote"))
                    		   )
                       );
	}
}
