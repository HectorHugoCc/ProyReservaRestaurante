package com.redsocial.service;

import java.util.List;


import com.redsocial.bean.FiltroBean;
import com.redsocial.bean.RestaurantBean;
import com.redsocial.bean.TipoBean;
import com.redsocial.bean.UsuarioBean;
import com.redsocial.dao.MySqlRestaurantDAO;

public class RestaurantServiceImpl implements RestaurantService{

	MySqlRestaurantDAO dao = new MySqlRestaurantDAO();
	
	@Override
	public List<RestaurantBean> listaRestaurant(String filtro) throws Exception {
		return dao.listaRestaurant(filtro);
	}

	@Override
	public int actualizaRestaurant(RestaurantBean bean) throws Exception {
		return dao.actualizaRestaurant(bean);
	}

	@Override
	public int insertaRestaurant(RestaurantBean bean) throws Exception {
		return dao.insertaRestaurant(bean);
	}

	@Override
	public int eliminaRestaurant(int idRestaurant) throws Exception {
		return dao.eliminaRestaurant(idRestaurant);
	}
	
	@Override
	public List<TipoBean> listaTipo() throws Exception {
		return dao.listaTipo();
	}
	
	//@Override
	//public List<DistritoBean> listaDistrito() throws Exception {
		//return dao.listaDistrito();
	//}

	@Override
	public List<RestaurantBean> listaRestauranteXvarios(FiltroBean bean) throws Exception {
		return dao.listaRestauranteXvarios(bean);
	}

	@Override
	public int inserta(UsuarioBean bean) throws Exception {
		return dao.inserta(bean);
	}

	@Override
	public UsuarioBean obtienePorPK(int idUsuario) throws Exception {
		return dao.obtienePorPK(idUsuario);
	}

	@Override
	public int insertaRest(RestaurantBean bean) throws Exception {
		return dao.insertaRest(bean);
	}

	@Override
	public List<RestaurantBean> listaRest() throws Exception {
		return dao.listaRest();
	}

	@Override
	public RestaurantBean obtieneResPorPK(int idRes) throws Exception {
		return dao.obtieneResPorPK(idRes);
	}
}
