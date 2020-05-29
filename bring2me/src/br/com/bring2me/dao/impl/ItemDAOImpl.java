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
		
		return jdbcTemplate.update(sql, item.getNome(), item.getDescricao(), Integer.parseInt(item.getQuantidade()), Double.parseDouble(item.getValor()), Double.parseDouble(item.getPeso()));
	}

	@Override
	public int atualizar(Item item) {
		String sql = "UPDATE tb_item SET nome = ?, descricao = ?, quantidade = ?, valor = ?, peso = ? WHERE id_item = ?";
		
		return jdbcTemplate.update(sql, item.getNome(), item.getDescricao(), Integer.parseInt(item.getQuantidade()), Double.parseDouble(item.getValor()), Double.parseDouble(item.getPeso()));
	}
	
	@Override
	public int deletar(String item) {
		String sql = "DELETE FROM tb_item WHERE id_item = ?";
		
		return jdbcTemplate.update(sql, item);
	}

	@Override
	public Item buscarItem(String idItem) {
		String sql = "SELECT * FROM tb_item WHERE id_item = " + idItem;
		
		ResultSetExtractor<Item> extractor = new ResultSetExtractor<Item>() {
			@Override
			public Item extractData(ResultSet rs) {
				Item item = new Item();
				try {
					if (rs.next()) {
						item.setIdItem(rs.getString("id_item"));
						item.setNome(rs.getString("nome"));
						item.setDescricao(rs.getString("descricao"));
						item.setQuantidade(rs.getString("quantidade"));
						item.setValor(rs.getString("valor"));
						item.setPeso(rs.getString("peso"));
						item.setIdMalote(rs.getString("id_malote"));
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
		String sql = "SELECT * FROM tb_item ORDER BY id_item DESC";
		
		return jdbcTemplate.query(
                sql,
                (rs, rowNum) ->
                       new Item(
                    		   rs.getString("id_item"),
                    		   rs.getString("nome"),
                    		   rs.getString("descricao"),
                    		   rs.getString("quantidade"),
                    		   rs.getString("valor"),
                    		   rs.getString("peso"),
                    		   rs.getString("id_malote")
                    		   )
                       );
	}
}
