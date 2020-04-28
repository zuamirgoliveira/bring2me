package br.com.bring2me.model;

public class Login {
	
	private int idUsuario;
	private String nmUsuario;
	private String email;
	private String senha;
	
	public Login() {}
	
	public int getIdusuario() {
		return idUsuario;
	}
	
	public String getNmUsuario() {
		return nmUsuario;
	}
	
	public void setNmUsuario(String nmUsuario) {
		this.nmUsuario = nmUsuario;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSenha() {
		return senha;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}

}
