package com.redsocial.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.redsocial.bean.TipoBean;

import com.redsocial.bean.UsuarioBean;

import com.redsocial.bean.FiltroBean;
import com.redsocial.bean.RestaurantBean;

public class MySqlRestaurantDAO implements RestaurantDAO {

	/*
	 * Session en myIbatis-->Coneccion de BD SqlSessionFactory -->Permite crear
	 * conexiones
	 */

	SqlSessionFactory sqlMapper = null;
	{
		String archivo = "ConfiguracionIbatis.xml";
		try {
			Reader reader = Resources.getResourceAsReader(archivo);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<RestaurantBean> listaRestaurant(String filtro) throws Exception {
		List<RestaurantBean> lista = new ArrayList<RestaurantBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			lista = session.selectList("SQL_consultaRestaurant",filtro +"%");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return lista;
	}

	@Override
	public int actualizaRestaurant(RestaurantBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.update("SQL_actualizaRestaurant",bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}

	@Override
	public int insertaRestaurant(RestaurantBean bean) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.insert("SQL_insertaRestaurant", bean);
			session.commit(); 
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}  finally{
			session.close();
		}
		return salida;
	}

	@Override
	public int eliminaRestaurant(int idRestaurant) throws Exception {
		int salida = -1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.delete("SQL_eliminaRestaurant",idRestaurant);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally{
			session.close();
		}
		return salida;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TipoBean> listaTipo() throws Exception {
		List<TipoBean> lista = new ArrayList<TipoBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			lista = session.selectList("SQL_listaTipo");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}

		return lista;
	}
	
	//*@SuppressWarnings("unchecked")
	//@Override
	//public List<DistritoBean> listaDistrito() throws Exception {
		//List<DistritoBean> lista = new ArrayList<DistritoBean>();
		//SqlSession session = null;
		//try {
			//session = sqlMapper.openSession();
			//lista = session.selectList("SQL_listaDistrito");
		//} catch (Exception e) {
			//e.printStackTrace();
		//}finally{
			//session.close();
		//}

		//return lista;
	//}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RestaurantBean> listaRestauranteXvarios(FiltroBean bean) throws Exception {
		List<RestaurantBean> salida =  new ArrayList<RestaurantBean>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			salida = session.selectList("SQL_listaRestauranteVarios",bean);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			session.close();
		}
		return salida;
	}
	@Override
	public int inserta(UsuarioBean bean) throws Exception {
		int insertados =-1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			insertados = session.insert("SQL_insertaUsuario", bean);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally{
			session.close();
		}
		return insertados;
	}
	@Override
	public UsuarioBean obtienePorPK(int idUsuario) throws Exception {
		SqlSession session = null;
		UsuarioBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (UsuarioBean)session.selectOne("SQL_usuarioPorPK", idUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
	@Override
	public int insertaRest(RestaurantBean bean) throws Exception {
		int insertados =-1;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			insertados = session.insert("SQL_insertaRest", bean);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally{
			session.close();
		}
		return insertados;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<RestaurantBean> listaRest() throws Exception {
		SqlSession session = null;
		List lista  = null;
		try {
			session = sqlMapper.openSession();
			lista = session.selectList("SQL_listaRest");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return lista;
	}
	
	@Override
	public RestaurantBean obtieneResPorPK(int idRes) throws Exception {
		SqlSession session = null;
		RestaurantBean bean  = null;
		try {
			session = sqlMapper.openSession();
			bean = (RestaurantBean)session.selectOne("SQL_restaurantPorPK", idRes);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return bean;
	}
	
}
