package br.com.bring2me.models;

import java.util.Date;

public class PessoaJuridica extends Usuario {

	private String cnpj;
	private String razaoSocial;

	public PessoaJuridica() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PessoaJuridica(int codigo, String nome, String sobrenome, String cnpj, String razaoSocial, String telefone1, String telefone2, Date dtCriacao,
			Date dtAtualizacao, String logradouro, int numero, String bairro, String cidade, String estado, long cep,
			String complemento) {
		super(codigo, nome, sobrenome, telefone1, telefone2, dtCriacao, dtAtualizacao, logradouro, numero, bairro, cidade,
				estado, cep, complemento);
		this.cnpj = cnpj;
		this.razaoSocial = razaoSocial;
	}
	
	public String getcnpj() {
		return cnpj;
	}
	public void setcnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public String getRazaoSocial() {
		return razaoSocial;
	}
	public void setrazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}
	
	@Override
	public String toString() {
		return "Usuario [codigo=" + getCodigo() + ", nome=" + getNome() + ", sobrenome=" + getSobrenome() + ", cnpj=" + cnpj
				+ ", razaoSocial=" + razaoSocial + ", telefone1=" + getTelefone1()
				+ ", telefone2=" + getTelefone2() + ", dtCriacao=" + getDtCriacao() + ", dtAtualizacao=" + getDtAtualizacao()
				+ ", logradouro=" + getLogradouro() + ", numero=" + getNumero() + ", bairro=" + getBairro() + ", cidade=" + getCidade()
				+ ", estado=" + getEstado() + ", cep=" + getCep() + ", complemento=" + getComplemento() + "]";
	}
	
}
