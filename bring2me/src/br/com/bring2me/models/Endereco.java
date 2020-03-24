package br.com.bring2me.models;

public class Endereco {
	private int codigo;
	private int codigoUsuario;
	private String logradouro;
	private int numero;
	private String bairro;
	private String cidade;
	private String uf;
	private String cep;
	private String complemento;
	
	public Endereco() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Endereco(int codigo, int codigoUsuario, String logradouro, int numero, String bairro, String cidade,
			String uf, String cep, String complemento) {
		super();
		this.codigo = codigo;
		this.codigoUsuario = codigoUsuario;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.cidade = cidade;
		this.uf = uf;
		this.cep = cep;
		this.complemento = complemento;
	}

	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public int getCodigoUsuario() {
		return codigoUsuario;
	}
	public void setCodigoUsuario(int codigoUsuario) {
		this.codigoUsuario = codigoUsuario;
	}
	public String getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	
	@Override
	public String toString() {
		return "Endereco [codigo=" + codigo + ", codigoUsuario=" + codigoUsuario + ", logradouro=" + logradouro
				+ ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", uf=" + uf + ", cep=" + cep
				+ ", complemento=" + complemento + "]";
	}

}
