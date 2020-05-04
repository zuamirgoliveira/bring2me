package br.com.bring2me.model;

import java.util.Date;

public class Tramite {
	
	private int idMalote;
	private String uf;
	private String local;
	private Date dtInicial;
	private Date dtFinal;
	private String status;
	private String desStatus;
	
	public Tramite() {}
	
	public Tramite(int idMalote, String uf, String local, Date dtInicial, Date dtFinal, String status,
			String desStatus) {

		this(uf, local, dtInicial, dtFinal, status, desStatus); 
		this.idMalote = idMalote;
	}

	public Tramite(String uf, String local, Date dtInicial, Date dtFinal, String status,
			String desStatus) {

		this.uf = uf;
		this.local = local;
		this.dtInicial = dtInicial;
		this.dtFinal = dtFinal;
		this.status = status;
		this.desStatus = desStatus;
	}

	public int getIdMalote() {
		return idMalote;
	}

	public void setIdMalote(int idMalote) {
		this.idMalote = idMalote;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public Date getDtInicial() {
		return dtInicial;
	}

	public void setDtInicial(Date dtInicial) {
		this.dtInicial = dtInicial;
	}

	public Date getDtFinal() {
		return dtFinal;
	}

	public void setDtFinal(Date dtFinal) {
		this.dtFinal = dtFinal;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDesStatus() {
		return desStatus;
	}

	public void setDesStatus(String desStatus) {
		this.desStatus = desStatus;
	}

	@Override
	public String toString() {
		return "Tramite [idMalote=" + idMalote + ", uf=" + uf + ", local=" + local + ", dtInicial=" + dtInicial
				+ ", dtFinal=" + dtFinal + ", status=" + status + ", desStatus=" + desStatus + "]";
	}
	
}
