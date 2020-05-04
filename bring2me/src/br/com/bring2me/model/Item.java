package br.com.bring2me.model;

public class Item {
	
	private int idItem;
	private String nome;
	private String descricao;
	private int quantidade;
	private double valor;
	private double peso;
	private int idMalote;
	
	public Item() {}

	public Item(int idItem, String nome, String descricao, int quantidade, double valor, double peso, int idMalote) {
		
		this(nome, descricao, quantidade, valor, peso, idMalote);
		this.idItem = idItem;
	}
	
	public Item(String nome, String descricao, int quantidade, double valor, double peso, int idMalote) {		
		this.nome = nome;
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.valor = valor;
		this.peso = peso;
		this.idMalote = idMalote;
	}

	public int getIdItem() {
		return idItem;
	}

	public void setIdItem(int idItem) {
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

	public int getIdMalote() {
		return idMalote;
	}

	public void setIdMalote(int idMalote) {
		this.idMalote = idMalote;
	}

	@Override
	public String toString() {
		return "Item [idItem=" + idItem + ", nome=" + nome + ", descricao=" + descricao + ", quantidade=" + quantidade
				+ ", valor=" + valor + ", peso=" + peso + ", idMalote=" + idMalote + "]";
	}
	
}
