package br.com.bring2me.model;

import java.util.Date;
import java.util.List;

public class Malote {
	
	private String idMalote;
	private String status;
	private Date dtPostagem;
	private Date dtPrevEntrega;
	private Date dtEntrega;
	private String codigoRastreio;
	private String tpTransporte;
	private String idUsrRemetente;
	private String idUsrDestinatario;
	
	private Usuario remetente;
	private Usuario destinatario;
	
	private String[] itens; 
	
	private String etiqueta;

	public Malote() {}

	public Malote(String idMalote, String status, Date dtPostagem, Date dtPrevEntrega, Date dtEntrega,
			String codigoRastreio, String tpTransporte, String idUsrRemetente, String idUsrDestinatario) {
		
		this(status, dtPostagem, dtPrevEntrega, dtEntrega, codigoRastreio, tpTransporte, idUsrRemetente, idUsrDestinatario);
		this.idMalote = idMalote;
	}
	
	public Malote(String status, Date dtPostagem, Date dtPrevEntrega, Date dtEntrega,
			String codigoRastreio, String tpTransporte, String idUsrRemetente, String idUsrDestinatario) {
		
		this.status = status;
		this.dtPostagem = dtPostagem;
		this.dtPrevEntrega = dtPrevEntrega;
		this.dtEntrega = dtEntrega;
		this.codigoRastreio = codigoRastreio;
		this.tpTransporte = tpTransporte;
		this.idUsrRemetente = idUsrRemetente;
		this.idUsrDestinatario = idUsrDestinatario;
		
	}

	public String getIdMalote() {
		return idMalote;
	}

	public void setIdMalote(String idMalote) {
		this.idMalote = idMalote;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getDtPostagem() {
		return dtPostagem;
	}

	public void setDtPostagem(Date dtPostagem) {
		this.dtPostagem = dtPostagem;
	}

	public Date getDtPrevEntrega() {
		return dtPrevEntrega;
	}

	public void setDtPrevEntrega(Date dtPrevEntrega) {
		this.dtPrevEntrega = dtPrevEntrega;
	}

	public Date getDtEntrega() {
		return dtEntrega;
	}

	public void setDtEntrega(Date dtEntrega) {
		this.dtEntrega = dtEntrega;
	}

	public String getCodigoRastreio() {
		return codigoRastreio;
	}

	public void setCodigoRastreio(String codigoRastreio) {
		this.codigoRastreio = codigoRastreio;
	}

	public String getTpTransporte() {
		return tpTransporte;
	}

	public void setTpTransporte(String tpTransporte) {
		this.tpTransporte = tpTransporte;
	}

	public String getIdUsrRemetente() {
		return idUsrRemetente;
	}

	public void setIdUsrRemetente(String idUsrRemetente) {
		this.idUsrRemetente = idUsrRemetente;
	}

	public String getIdUsrDestinatario() {
		return idUsrDestinatario;
	}

	public void setIdUsrDestinatario(String idUsrDestinatario) {
		this.idUsrDestinatario = idUsrDestinatario;
	}
	
	public Usuario getRemetente() {
		return remetente;
	}

	public void setRemetente(Usuario remetente) {
		this.remetente = remetente;
	}

	public Usuario getDestinatario() {
		return destinatario;
	}

	public void setDestinatario(Usuario destinatario) {
		this.destinatario = destinatario;
	}
	
	public String[] getItens() {
		return itens;
	}

	public void setDestinatario(String[] itens) {
		this.itens = itens;
	}
	
	public String getEtiqueta() {
		return etiqueta;
	}

	public void setEtiqueta(String etiqueta) {
		this.etiqueta = etiqueta;
	}
	
	@Override
	public String toString() {
		return "Malote [idMalote=" + idMalote + ", status=" + status + ", dtPostagem=" + dtPostagem + ", dtPrevEntrega="
				+ dtPrevEntrega + ", dtEntrega=" + dtEntrega + ", codigoRastreio=" + codigoRastreio + ", tpTransporte="
				+ tpTransporte + ", idUsrRemetente=" + idUsrRemetente + ", idUsrDestinatario=" + idUsrDestinatario + "]";
	}

}
