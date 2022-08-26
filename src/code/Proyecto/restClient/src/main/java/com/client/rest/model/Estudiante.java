package com.client.rest.model;

import lombok.*;

@NoArgsConstructor //Lombok para constructor sin argumentos
@AllArgsConstructor //Lombok para constructor con todos los argumentos 
@Data //Lombok para getter, setter y toString
public class Estudiante { 
	
	private int id;
	private String nombre;//Nombre a nivel objeto
	private String apellido;
	private String email;
	private String escuela;

}











