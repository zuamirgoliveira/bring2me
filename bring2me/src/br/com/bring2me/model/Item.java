package br.com.bring2me.model;

public class Item {
	
	private String idItem;
	private String nome;
	private String descricao;
	private int quantidade;
	private double valor;
	private double peso;
	private String idMalote;
	
	public Item() {}

	public Item(String idItem, String nome, String descricao, int quantidade, double valor, double peso, String idMalote) {
		
		this(nome, descricao, quantidade, valor, peso, idMalote);
		this.idItem = idItem;
	}
	
	public Item(String nome, String descricao, int quantidade, double valor, double peso, String idMalote) {		
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

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
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
