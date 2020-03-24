package br.com.bring2me.models;

import java.util.Date;

public class Tramite {
	private int codigoMalote;
	private String status;
	private String descricaoStatus;
	private Date dataInicial;
	private Date dataFinal;
	private String local;
	private String uf;
	
	public Tramite() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Tramite(int codigoMalote, String status, String descricaoStatus, Date dataInicial, Date dataFinal,
			String local, String uf) {
		super();
		this.codigoMalote = codigoMalote;
		this.status = status;
		this.descricaoStatus = descricaoStatus;
		this.dataInicial = dataInicial;
		this.dataFinal = dataFinal;
		this.local = local;
		this.uf = uf;
	}
	
	public int getCodigoMalote() {
		return codigoMalote;
	}
	public void setCodigoMalote(int codigoMalote) {
		this.codigoMalote = codigoMalote;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescricaoStatus() {
		return descricaoStatus;
	}
	public void setDescricaoStatus(String descricaoStatus) {
		this.descricaoStatus = descricaoStatus;
	}
	public Date getDataInicial() {
		return dataInicial;
	}
	public void setDataInicial(Date dataInicial) {
		this.dataInicial = dataInicial;
	}
	public Date getDataFinal() {
		return dataFinal;
	}
	public void setDataFinal(Date dataFinal) {
		this.dataFinal = dataFinal;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	

}
