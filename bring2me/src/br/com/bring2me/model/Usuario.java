package br.com.bring2me.model;

import java.util.Date;

public class Usuario {
		
	private int idUsuario;
	private String cpfCnpj;
	private String nomeRazaoSocial;
	private String telefone;
	private Date dtNascimento;
	private Date dtCriacao;
	private Date dtAtualizacao;
	private String logradouro;
	private int numero;
	private String bairro;
	private String cidade;
	private String estado;
	private int cep;
	private String complemento;
	
	public Usuario() {}

	public Usuario(int idUsuario, String cpfCnpj, String nomeRazaoSocial, String telefone, Date dtNascimento, Date dtCriacao,
			Date dtAtualizacao, String logradouro, int numero, String bairro, String cidade, String estado, int cep, String complemento) {
	
		this(cpfCnpj, nomeRazaoSocial, telefone, dtNascimento, dtCriacao, dtAtualizacao, logradouro, numero, bairro,
				cidade, estado, cep, complemento);
		this.idUsuario = idUsuario;
	}
	
	public Usuario(String cpfCnpj, String nomeRazaoSocial, String telefone, Date dtNascimento, Date dtCriacao, Date dtAtualizacao, 
			String logradouro, int numero, String bairro, String cidade, String estado, int cep, String complemento) {
		this.cpfCnpj = cpfCnpj;
		this.nomeRazaoSocial = nomeRazaoSocial;
		this.telefone = telefone;
		this.dtNascimento = dtNascimento;
		this.dtCriacao = dtCriacao;
		this.dtAtualizacao = dtAtualizacao;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.cidade = cidade;
		this.estado = estado;
		this.cep = cep;
		this.complemento = complemento;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getCpfCnpj() {
		return cpfCnpj;
	}

	public void setCpfCnpj(String cpfCnpj) {
		this.cpfCnpj = cpfCnpj;
	}

	public String getNomeRazaoSocial() {
		return nomeRazaoSocial;
	}

	public void setNomeRazaoSocial(String nomeRazaoSocial) {
		this.nomeRazaoSocial = nomeRazaoSocial;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}


	public Date getDtNascimento() {
		return dtNascimento;
	}

	public void setDtNascimento(Date dtNascimento) {
		this.dtNascimento = dtNascimento;
	}

	public Date getDtCriacao() {
		return dtCriacao;
	}

	public void setDtCriacao(Date dtCriacao) {
		this.dtCriacao = dtCriacao;
	}

	public Date getDtAtualizacao() {
		return dtAtualizacao;
	}

	public void setDtAtualizacao(Date dtAtualizacao) {
		this.dtAtualizacao = dtAtualizacao;
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

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public int getCep() {
		return cep;
	}

	public void setCep(int cep) {
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
		return "Usuario [idUsuario=" + idUsuario + ", cpfCnpj=" + cpfCnpj + ", razaoSocial=" + nomeRazaoSocial
				+ ", telefone1=" + telefone + ", dtNascimento=" + dtNascimento
				+ ", dtCriacao=" + dtCriacao + ", dtAtualizacao=" + dtAtualizacao + ", logradouro=" + logradouro
				+ ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", estado=" + estado + ", cep="
				+ cep + ", complemento=" + complemento + "]";
	}
		
}