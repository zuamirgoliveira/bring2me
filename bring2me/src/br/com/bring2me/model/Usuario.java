package br.com.bring2me.model;

import java.util.Date;

public class Usuario {
		
	private int codigo;
	private String cpfCnpj;
	private String razaoSocial;
	private String nome;
	private String telefone1;
	private String telefone2;
	private String email;
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
	private boolean statusUsuario;
	
	public Usuario() {}

	public Usuario(int codigo, String cpfCnpj, String razaoSocial, String nome, String telefone1, String telefone2, String email,
			Date dtNascimento, Date dtCriacao, Date dtAtualizacao, String logradouro, int numero, String bairro,
			String cidade, String estado, int cep, String complemento, boolean statusUsuario) {
	
		this(cpfCnpj, razaoSocial, nome, telefone1, telefone2, email, dtNascimento, dtCriacao, dtAtualizacao, logradouro, numero, bairro,
				cidade, estado, cep, complemento, statusUsuario);
		this.codigo = codigo;
	}
	
	public Usuario(String cpfCnpj, String razaoSocial, String nome, String telefone1, String telefone2, String email,
			Date dtNascimento, Date dtCriacao, Date dtAtualizacao, String logradouro, int numero, String bairro,
			String cidade, String estado, int cep, String complemento, boolean statusUsuario) {
		this.cpfCnpj = cpfCnpj;
		this.razaoSocial = razaoSocial;
		this.nome = nome;
		this.telefone1 = telefone1;
		this.telefone2 = telefone2;
		this.email = email;
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
		this.statusUsuario = statusUsuario;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getCpfCnpj() {
		return cpfCnpj;
	}

	public void setCpfCnpj(String cpfCnpj) {
		this.cpfCnpj = cpfCnpj;
	}

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone1() {
		return telefone1;
	}

	public void setTelefone1(String telefone1) {
		this.telefone1 = telefone1;
	}

	public String getTelefone2() {
		return telefone2;
	}

	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
	
	public boolean getStatusUsuario() {
		return statusUsuario;
	}

	public void setStatusUsuario(boolean statusUsuario) {
		this.statusUsuario = statusUsuario;
	}

	@Override
	public String toString() {
		return "Usuario [codigo=" + codigo + ", cpfCnpj=" + cpfCnpj + ", razaoSocial=" + razaoSocial + ", nome=" + nome
				+ ", telefone1=" + telefone1 + ", telefone2=" + telefone2 + ", email=" + email + ", dtNascimento=" + dtNascimento
				+ ", dtCriacao=" + dtCriacao + ", dtAtualizacao=" + dtAtualizacao + ", logradouro=" + logradouro
				+ ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", estado=" + estado + ", cep="
				+ cep + ", complemento=" + complemento + ", statusUsuario=" +statusUsuario+ "]";
	}
		
}