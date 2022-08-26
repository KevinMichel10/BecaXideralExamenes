package com.javatechie.spring.batch.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //Se utiliza Lombok para los getter, setter y ToString
@Table(name = "ESTUDIANTE_INFO")
@Data  
@AllArgsConstructor //Se utiliza lombok para constructor con todos los argumentos
@NoArgsConstructor //Se utiliza lombok para constructor sin arguentemos
public class Estudiante {

    @Id
    @Column(name = "ESTUDIANTE_ID")
    private int id;
    @Column(name = "NOMBRE")
    private String nombre;
    @Column(name = "APELLIDO")
    private String apellido;
    @Column(name = "EMAIL")
    private String email;
    @Column(name = "ESCUELA")
    private String escuela;   
}
