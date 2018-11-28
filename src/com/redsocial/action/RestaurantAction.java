package com.redsocial.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.redsocial.bean.FiltroBean;
import com.opensymphony.xwork2.ActionSupport;
import com.redsocial.bean.RestaurantBean;
import com.redsocial.bean.TipoBean;
import com.redsocial.bean.UsuarioBean;
import com.redsocial.service.RestaurantService;
import com.redsocial.service.RestaurantServiceImpl;
import com.redsocial.util.Constantes;

@SuppressWarnings("serial")
@ParentPackage("dawi")
public class RestaurantAction extends ActionSupport {

	private static final Log log = LogFactory.getLog(RestaurantAction.class);
	//Para el usuario
	private List<UsuarioBean> data;
	
	private InputStream imagenfoto;
	private int idusuario;
	private String nombre;
	private String apellidos;
	private String login;
	private String password;
	private String correo;
	private String sexo;
	private String fechaNacimiento;
	private File fotos;
	
	//Para el restaurante
	private InputStream imagenfotos;
	private List<RestaurantBean> datos;
	private int idRestaurant;
	private String nomRest;
	private int tenedores;
	private double ticket;
	private String tipo;
	private String horario;
	private int capacidad;
	private String estacionamiento;
	
	// Para la consulta
	private List<RestaurantBean> lstRestaurant = new ArrayList<RestaurantBean>();
	private String filtro = "";

	// Para el combo
	private List<TipoBean> lstTipo = new ArrayList<TipoBean>();
	//private List<DistritoBean> lstDistrito = new ArrayList<DistritoBean>();
	
	//Para la superconsulta
	private FiltroBean filtroVarios;

	// Para insertar y actualizar
	private String id;
	private RestaurantBean restaurant = new RestaurantBean();
	

	@Action(value = "/cargaTipo", results = { @Result(name = "success", type = "json") })
	public String cargaTipo() {
		log.info("En carga tipo");
		try {
			RestaurantServiceImpl service = new RestaurantServiceImpl();
			lstTipo = service.listaTipo();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	@Action(value = "/eliminaRestaurant", results = { @Result(name = "success", location = "/crudRestaurant.jsp") })
	public String elimina() {
		log.info("En eliminar Restaurant");
		RestaurantService service = new RestaurantServiceImpl();
		try {
			service.eliminaRestaurant(Integer.parseInt(id));
			lstRestaurant = service.listaRestaurant(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	@Action(value = "/actualizaRestaurant", results = { @Result(name = "success", location = "/crudRestaurant.jsp") })
	public String actualiza() {
		log.info("En actualizar Restaurant");
		RestaurantService service = new RestaurantServiceImpl();
		try {
			service.actualizaRestaurant(restaurant);
			lstRestaurant = service.listaRestaurant(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

	@Action(value = "/registraRestaurant", results = { @Result(name = "success", location = "/crudRestaurant.jsp") })
	public String registra() {
		log.info("En registrar Restaurant");
		
		try {
			RestaurantService service = new RestaurantServiceImpl();
			service.insertaRestaurant(restaurant);
			lstRestaurant = service.listaRestaurant(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}

	@Action(value = "/consultaRestaurant", results = { @Result(name = "success", location = "/crudRestaurant.jsp") })
	public String listar() {
		log.info("En listar Restaurant");
		try {
			RestaurantService service = new RestaurantServiceImpl();
			lstRestaurant = service.listaRestaurant(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SUCCESS;
	}
	
	@Action(value="/consultaVarios",
			results={@Result(name="success",location="/listaRestaurantePorVarios.jsp")
	})
	public String consultaVarios(){
		RestaurantServiceImpl service = new RestaurantServiceImpl();
		try {
			if(filtroVarios == null){
				filtroVarios = new FiltroBean();
			}
			lstRestaurant = service.listaRestauranteXvarios(filtroVarios);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	
	@Action(value = "/registraUsuario", results = { @Result(location = "/login.jsp", name = "success") })
	public String registraUsuario() {
		RestaurantServiceImpl services = new RestaurantServiceImpl();
		log.info("En registra Usuario");
		try {
			UsuarioBean usuario = new UsuarioBean();
			usuario.setNombre(nombre);
			usuario.setApellidos(apellidos);
			usuario.setFechaNacimiento(fechaNacimiento);
			usuario.setSexo(sexo);
			usuario.setLogin(login);
			usuario.setPassword(password);
			usuario.setCorreo(correo);
			usuario.setFotosBytes(Constantes.getBytesFromFile(fotos));
			services.inserta(usuario);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	@Action(value = "/registraRest", results = { @Result(location = "/registraRestaurante.jsp", name = "success") })
	public String registraRest() {
		RestaurantServiceImpl services = new RestaurantServiceImpl();
		log.info("En registra Rest");
		try {
			RestaurantBean restaurante = new RestaurantBean();
			restaurante.setNomRest(nomRest);
			restaurante.setTenedores(tenedores);
			restaurante.setTicket(ticket);
			restaurante.setTipo(tipo);
			restaurante.setHorario(horario);
			restaurante.setCapacidad(capacidad);
			restaurante.setEstacionamiento(estacionamiento);
			restaurante.setFotosBytes(Constantes.getBytesFromFile(fotos));
			services.insertaRest(restaurante);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	

	@Action(value = "/listaRest", results = { @Result(location = "/listaRestaurante.jsp", name = "success") })
	public String listaRest() {
		RestaurantService service = new RestaurantServiceImpl();
		try {
			datos = service.listaRest();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	@Action(value = "/verFoto", results = { @Result(params = { "inputName",	"imagenfotos" }, name = "success", type = "stream") })
	public String verFoto() throws Exception {
		try {
			RestaurantService service = new RestaurantServiceImpl();
			RestaurantBean bean = service.obtieneResPorPK(idRestaurant);
			imagenfotos = new ByteArrayInputStream(bean.getFotosBytes());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public List<RestaurantBean> getDatos() {
		return datos;
	}

	public void setDatos(List<RestaurantBean> datos) {
		this.datos = datos;
	}

	public List<UsuarioBean> getData() {
		return data;
	}

	public void setData(List<UsuarioBean> data) {
		this.data = data;
	}

	
	
	
	public InputStream getImagenfotos() {
		return imagenfotos;
	}

	public void setImagenfotos(InputStream imagenfotos) {
		this.imagenfotos = imagenfotos;
	}

	public InputStream getImagenfoto() {
		return imagenfoto;
	}

	public void setImagenfoto(InputStream imagenfoto) {
		this.imagenfoto = imagenfoto;
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public File getFotos() {
		return fotos;
	}

	public void setFotos(File fotos) {
		this.fotos = fotos;
	}

	public FiltroBean getFiltroVarios() {
		return filtroVarios;
	}

	public void setFiltroVarios(FiltroBean filtroVarios) {
		this.filtroVarios = filtroVarios;
	}

	public List<RestaurantBean> getLstRestaurant() {
		return lstRestaurant;
	}

	public void setLstRestaurant(List<RestaurantBean> lstRestaurant) {
		this.lstRestaurant = lstRestaurant;
	}

	public String getFiltro() {
		return filtro;
	}

	public void setFiltro(String filtro) {
		this.filtro = filtro;
	}

	public List<TipoBean> getLstTipo() {
		return lstTipo;
	}

	public void setLstTipo(List<TipoBean> lstTipo) {
		this.lstTipo = lstTipo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public RestaurantBean getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(RestaurantBean restaurant) {
		this.restaurant = restaurant;
	}

	

	public int getIdRestaurant() {
		return idRestaurant;
	}

	public void setIdRestaurant(int idRestaurant) {
		this.idRestaurant = idRestaurant;
	}

	public String getNomRest() {
		return nomRest;
	}

	public void setNomRest(String nomRest) {
		this.nomRest = nomRest;
	}

	public int getTenedores() {
		return tenedores;
	}

	public void setTenedores(int tenedores) {
		this.tenedores = tenedores;
	}

	

	public double getTicket() {
		return ticket;
	}

	public void setTicket(double ticket) {
		this.ticket = ticket;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public int getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}

	public String getEstacionamiento() {
		return estacionamiento;
	}

	public void setEstacionamiento(String estacionamiento) {
		this.estacionamiento = estacionamiento;
	}



	

	
}
