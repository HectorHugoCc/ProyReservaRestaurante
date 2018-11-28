package com.redsocial.dao;

import java.util.List;


import com.redsocial.bean.FiltroBean;
import com.redsocial.bean.RestaurantBean;
import com.redsocial.bean.TipoBean;
import com.redsocial.bean.UsuarioBean;

public interface RestaurantDAO {
	
	public List<RestaurantBean> listaRestaurant(String filtro) throws Exception;
	public int actualizaRestaurant(RestaurantBean bean) throws Exception;
	public int insertaRestaurant(RestaurantBean bean) throws Exception;
	public int eliminaRestaurant(int idRestaurant) throws Exception;
	public List<TipoBean> listaTipo() throws Exception;
	public List<RestaurantBean> listaRestauranteXvarios(FiltroBean bean) throws Exception;
	public int inserta(UsuarioBean bean) throws Exception;
	public UsuarioBean obtienePorPK(int idUsuario) throws Exception;
	public int insertaRest(RestaurantBean bean) throws Exception;
	public List<RestaurantBean> listaRest() throws Exception;
	public RestaurantBean obtieneResPorPK(int idRes) throws Exception;
	
}
