package com.luv2code.springboot.cruddemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="estudiante") //Nombre de la tabla de base de datos
public class Estudiante { 

	// define fields
	//No se cambia, se respeta
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)//El id se autogenera
	@Column(name="id")
	private int id;
	
	//Se puede cambiar
	@Column(name="nombre")//Mapeo contra una columna que se llame first_name
	private String nombre;//Nombre a nivel objeto
	
	@Column(name="apellido")
	private String apellido;
	
	@Column(name="email")
	private String email;
	
	@Column(name="escuela")
	private String escuela;
	
		
	// define constructors
	
	public Estudiante() {
		//Constructor vacio
		
	}

	public Estudiante(String nombre, String apellido, String email, String escuela) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.escuela = escuela;
	}
	
	public Estudiante(int id,String nombre, String apellido, String email, String escuela) {
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.escuela = escuela;
	}

	// define getter/setter
	//Atributos privados
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEscuela() {
		return escuela;
	}

	public void setEscuela(String escuela) {
		this.escuela = escuela;
	}
	
	// define tostring
	//Metodo toString
	@Override
	public String toString() {
		return "Estudiante [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", email=" + email +", escuela="+escuela+ "]";
	}
		
}











