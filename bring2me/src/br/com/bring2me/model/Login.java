package br.com.bring2me.model;

public class Login {
	
	private String idLogin;
	private String email;
	private String senha;
	
	public Login() {}
	
	public String getIdLogin() {
		return idLogin;
	}
	
	public void setIdLogin(String idLogin) {
		this.idLogin = idLogin;
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
