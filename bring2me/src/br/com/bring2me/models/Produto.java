package br.com.bring2me.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Produto implements Serializable{
	
	private long codigo;
	private String nome;
	private String descriacao;
	private String marca;
	private int quantidade;
	private double valor;
	private double peso;
	private String imagem;
	
	public Produto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescriacao() {
		return descriacao;
	}
	public void setDescriacao(String descriacao) {
		this.descriacao = descriacao;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
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
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}	

	@Override
	public String toString() {
		return "Produto [codigo=" + codigo + ", nome=" + nome + ", descriacao=" + descriacao + ", marca=" + marca
				+ ", quantidade=" + quantidade + ", valor=" + valor + ", peso=" + peso + ", imagem=" + imagem + "]";
	}
	
}
