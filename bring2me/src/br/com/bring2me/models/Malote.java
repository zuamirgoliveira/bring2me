package br.com.bring2me.models;

import java.util.Date;

public class Malote {
	
	private int codigo;
	private String codigoRastreio;
	private String tipoTrasnporte;
	private Date dataPostagem;
	private String statusEntrega;
	private Date dataPrevEntrega;
	private Date dataEntrega;
	private String imagem;
	
	private Usuario usuarioRemetente;
	private Usuario usuarioDestinatario;
	private Endereco codigoEndOrigem;
	private Endereco codigoEndDestino;
	private Produto produto;
	
	
	public Malote() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Malote(int codigo, String codigoRastreio, String tipoTrasnporte, Date dataPostagem, String statusEntrega,
			Date dataPrevEntrega, Date dataEntrega, String imagem, Usuario usuarioRemetente,
			Usuario usuarioDestinatario, Endereco codigoEndOrigem, Endereco codigoEndDestino, Produto produto) {
		super();
		this.codigo = codigo;
		this.codigoRastreio = codigoRastreio;
		this.tipoTrasnporte = tipoTrasnporte;
		this.dataPostagem = dataPostagem;
		this.statusEntrega = statusEntrega;
		this.dataPrevEntrega = dataPrevEntrega;
		this.dataEntrega = dataEntrega;
		this.imagem = imagem;
		this.usuarioRemetente = usuarioRemetente;
		this.usuarioDestinatario = usuarioDestinatario;
		this.codigoEndOrigem = codigoEndOrigem;
		this.codigoEndDestino = codigoEndDestino;
		this.produto = produto;
	}

	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getCodigoRastreio() {
		return codigoRastreio;
	}
	public void setCodigoRastreio(String codigoRastreio) {
		this.codigoRastreio = codigoRastreio;
	}
	public Endereco getCodigoEndOrigem() {
		return codigoEndOrigem;
	}
	public void setCodigoEndOrigem(Endereco codigoEndOrigem) {
		this.codigoEndOrigem = codigoEndOrigem;
	}
	public Endereco getCodigoEndDestino() {
		return codigoEndDestino;
	}
	public void setCodigoEndDestino(Endereco codigoEndDestino) {
		this.codigoEndDestino = codigoEndDestino;
	}
	public String getTipoTrasnporte() {
		return tipoTrasnporte;
	}
	public void setTipoTrasnporte(String tipoTrasnporte) {
		this.tipoTrasnporte = tipoTrasnporte;
	}
	public Date getDataPostagem() {
		return dataPostagem;
	}
	public void setDataPostagem(Date dataPostagem) {
		this.dataPostagem = dataPostagem;
	}
	public String getStatusEntrega() {
		return statusEntrega;
	}
	public void setStatusEntrega(String statusEntrega) {
		this.statusEntrega = statusEntrega;
	}
	public Date getDataPrevEntrega() {
		return dataPrevEntrega;
	}
	public void setDataPrevEntrega(Date dataPrevEntrega) {
		this.dataPrevEntrega = dataPrevEntrega;
	}
	public Date getDataEntrega() {
		return dataEntrega;
	}
	public void setDataEntrega(Date dataEntrega) {
		this.dataEntrega = dataEntrega;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public Usuario getUsuarioRemetente() {
		return usuarioRemetente;
	}
	public void setUsuarioRemetente(Usuario usuarioRemetente) {
		this.usuarioRemetente = usuarioRemetente;
	}
	public Usuario getUsuarioDestinatario() {
		return usuarioDestinatario;
	}
	public void setUsuarioDestinatario(Usuario usuarioDestinatario) {
		this.usuarioDestinatario = usuarioDestinatario;
	}
	public Produto getProduto() {
		return produto;
	}
	public void setProduto(Produto produto) {
		this.produto = produto;
	}

}
