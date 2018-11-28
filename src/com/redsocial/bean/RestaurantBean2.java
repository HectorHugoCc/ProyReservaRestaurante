package com.redsocial.bean;



public class RestaurantBean2 {
	
	private int idRestaurant;
	private String nomRest;
	private int tenedores;
	private double ticket;
	private TipoBean tipo;
	private String horario;
	private int capacidad;
	 
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
	public TipoBean getTipo() {
		return tipo;
	}
	public void setTipo(TipoBean tipo) {
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
	
	
	
}
