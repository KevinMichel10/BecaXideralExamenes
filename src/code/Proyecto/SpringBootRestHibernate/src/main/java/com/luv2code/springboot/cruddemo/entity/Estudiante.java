package com.luv2code.springboot.cruddemo.entity;

import javax.persistence.*;
import lombok.*;

@Data 
@NoArgsConstructor @AllArgsConstructor
@Entity
@Table(name="estudiante") //Nombre de la tabla de base de datos
public class Estudiante { 

	// definir campos
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)//El id se autogenera
	@Column(name="id")
	private int id;
	
	//Se puede cambiar
	@Column(name="nombre")//Mapeo contra una columna que se llame nombre
	private String nombre;//Nombre a nivel objeto
	
	@Column(name="apellido")
	private String apellido;
	
	@Column(name="email")
	private String email;
	
	@Column(name="escuela")
	private String escuela;
	
		
}











