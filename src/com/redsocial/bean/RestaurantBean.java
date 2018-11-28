package com.redsocial.bean;

import java.io.File;

public class RestaurantBean {
	
	private int idRestaurant;
	private String nomRest;
	private int tenedores;
	private double ticket;
	private String tipo;
	private String horario;
	private int capacidad;
	private String estacionamiento;
	
	//Para las fotos
	private File fotos;
	private String fotosFileName;
	private String fotosContentType;
	private byte[] fotosBytes;
	 
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
	public File getFotos() {
		return fotos;
	}
	public void setFotos(File fotos) {
		this.fotos = fotos;
	}
	public String getFotosFileName() {
		return fotosFileName;
	}
	public void setFotosFileName(String fotosFileName) {
		this.fotosFileName = fotosFileName;
	}
	public String getFotosContentType() {
		return fotosContentType;
	}
	public void setFotosContentType(String fotosContentType) {
		this.fotosContentType = fotosContentType;
	}
	public byte[] getFotosBytes() {
		return fotosBytes;
	}
	public void setFotosBytes(byte[] fotosBytes) {
		this.fotosBytes = fotosBytes;
	}
	
	
	
}
