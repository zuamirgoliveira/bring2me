package br.com.bring2me.model;

import java.util.Date;

public class Malote {
	
	private int idMalote;
	private String status;
	private Date dtPostagem;
	private Date dtPrevEntrega;
	private Date dtEntrega;
	private String codioRastreio;
	private String tpTransporte;
	private int usrRemetente;
	private int usrDestinatario;
	
	public Malote() {}

	public Malote(int idMalote, String status, Date dtPostagem, Date dtPrevEntrega, Date dtEntrega,
			String codioRastreio, String tpTransporte, int usrRemetente, int usrDestinatario) {
		
		this(status, dtPostagem, dtPrevEntrega, dtEntrega, codioRastreio, tpTransporte, usrRemetente, usrDestinatario);
		this.idMalote = idMalote;
	}
	
	public Malote(String status, Date dtPostagem, Date dtPrevEntrega, Date dtEntrega,
			String codioRastreio, String tpTransporte, int usrRemetente, int usrDestinatario) {
		
		this.status = status;
		this.dtPostagem = dtPostagem;
		this.dtPrevEntrega = dtPrevEntrega;
		this.dtEntrega = dtEntrega;
		this.codioRastreio = codioRastreio;
		this.tpTransporte = tpTransporte;
		this.usrRemetente = usrRemetente;
		this.usrDestinatario = usrDestinatario;
	}

	public int getIdMalote() {
		return idMalote;
	}

	public void setIdMalote(int idMalote) {
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

	public String getCodioRastreio() {
		return codioRastreio;
	}

	public void setCodioRastreio(String codioRastreio) {
		this.codioRastreio = codioRastreio;
	}

	public String getTpTransporte() {
		return tpTransporte;
	}

	public void setTpTransporte(String tpTransporte) {
		this.tpTransporte = tpTransporte;
	}

	public int getUsrRemetente() {
		return usrRemetente;
	}

	public void setUsrRemetente(int usrRemetente) {
		this.usrRemetente = usrRemetente;
	}

	public int getUsrDestinatario() {
		return usrDestinatario;
	}

	public void setUsrDestinatario(int usrDestinatario) {
		this.usrDestinatario = usrDestinatario;
	}

	@Override
	public String toString() {
		return "Malote [idMalote=" + idMalote + ", status=" + status + ", dtPostagem=" + dtPostagem + ", dtPrevEntrega="
				+ dtPrevEntrega + ", dtEntrega=" + dtEntrega + ", codioRastreio=" + codioRastreio + ", tpTransporte="
				+ tpTransporte + ", usrRemetente=" + usrRemetente + ", usrDestinatario=" + usrDestinatario + "]";
	}

}
