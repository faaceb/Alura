package br.com.alura.gerenciador.web;

import javax.servlet.http.Cookie;

public class Cookies {

	private Cookie[] cookies;
	
	public Cookies(Cookie[] cookiesRecebidos) {
		this.cookies = cookiesRecebidos;
	}
	
	private Cookie[] getCookies() {
		return cookies;
	}
	
	public Cookie getUsuarioLogado() {
		if (this.getCookies() == null)
	        return null;
		for (Cookie cookie : this.getCookies()){
			if (cookie.getName().equals("usuario.logado")){
				return cookie;
			}
		}
		return null;
	}
}