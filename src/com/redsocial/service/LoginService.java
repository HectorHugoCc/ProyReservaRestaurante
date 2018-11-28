package com.redsocial.service;

import com.redsocial.bean.UsuarioBean;

public interface LoginService {

	
	public  UsuarioBean login(String usuario, String clave) throws Exception;
	
}
