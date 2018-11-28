package com.redsocial.dao;

import com.redsocial.bean.UsuarioBean;

public interface LoginDAO {

	public  UsuarioBean login(String usuario, String clave) throws Exception;
}
