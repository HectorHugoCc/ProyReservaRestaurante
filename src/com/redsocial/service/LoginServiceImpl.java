package com.redsocial.service;

import com.redsocial.bean.UsuarioBean;
import com.redsocial.dao.MySqlLoginDAO;

public class LoginServiceImpl implements LoginService {

	MySqlLoginDAO dao = new MySqlLoginDAO();
	
	@Override
	public UsuarioBean login(String usuario, String clave) throws Exception {
		return dao.login(usuario, clave);
	}

}
