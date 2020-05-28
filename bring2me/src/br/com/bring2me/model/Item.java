package br.com.bring2me.model;

public class Item {
	
	private String idItem;
	private String nome;
	private String descricao;
	private String quantidade;
	private String valor;
	private String peso;
	private String idMalote;
	
	public Item() {}

	public Item(String idItem, String nome, String descricao, String quantidade, String valor, String peso, String idMalote) {
		
		this(nome, descricao, quantidade, valor, peso, idMalote);
		this.idItem = idItem;
	}
	
	public Item(String nome, String descricao, String quantidade, String valor, String peso, String idMalote) {		
		this.nome = nome;
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.valor = valor;
		this.peso = peso;
		this.idMalote = idMalote;
	}

	public String getIdItem() {
		return idItem;
	}

	public void setIdItem(String idItem) {
		this.idItem = idItem;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(String quantidade) {
		this.quantidade = quantidade;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	public String getIdMalote() {
		return idMalote;
	}

	public void setIdMalote(String idMalote) {
		this.idMalote = idMalote;
	}

	@Override
	public String toString() {
		return "Item [idItem=" + idItem + ", nome=" + nome + ", descricao=" + descricao + ", quantidade=" + quantidade
				+ ", valor=" + valor + ", peso=" + peso + ", idMalote=" + idMalote + "]";
	}
	
}
