package br.com.bring2me.models;

import java.util.Date;

public class PessoaFisica extends Usuario{

	private String cpf;
	private Date dtNascimento;
	
	public PessoaFisica() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PessoaFisica(int codigo, String nome, String sobrenome, String cpf, Date dtNascimento, String telefone1, String telefone2, Date dtCriacao,
			Date dtAtualizacao, String logradouro, int numero, String bairro, String cidade, String estado, long cep,
			String complemento) {
		super(codigo, nome, sobrenome, telefone1, telefone2, dtCriacao, dtAtualizacao, logradouro, numero, bairro, cidade,
				estado, cep, complemento);
		this.cpf = cpf;
		this.dtNascimento = dtNascimento;
	}
	
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public Date getDtNascimento() {
		return dtNascimento;
	}
	public void setDtNascimento(Date dtNascimento) {
		this.dtNascimento = dtNascimento;
	}
	
	@Override
	public String toString() {
		return "Usuario [codigo=" + getCodigo() + ", nome=" + getNome() + ", sobrenome=" + getSobrenome() + ", cpf=" + cpf
				+ ", dtNascimento=" + dtNascimento + ", telefone1=" + getTelefone1()
				+ ", telefone2=" + getTelefone2() + ", dtCriacao=" + getDtCriacao() + ", dtAtualizacao=" + getDtAtualizacao()
				+ ", logradouro=" + getLogradouro() + ", numero=" + getNumero() + ", bairro=" + getBairro() + ", cidade=" + getCidade()
				+ ", estado=" + getEstado() + ", cep=" + getCep() + ", complemento=" + getComplemento() + "]";
	}
	
}
