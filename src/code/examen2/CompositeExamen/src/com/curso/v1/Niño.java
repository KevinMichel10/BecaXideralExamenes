package com.curso.v1;

import java.util.*;

//Se crea una clase niño que implementara de humano
public class Niño implements Humano {
	
	//Creacion de variables de referencia
	private String name;
    private String lastName;

    @Override
    public String getName() {
        return name;
    }

    @Override
    public String getLastName() {
        return lastName;
    }

    public Niño(String name, String lastName){
        this.name = name;
        this.lastName = lastName;
    }

    @Override
    public void print() {
        System.out.println("==============================");
        System.out.println("Nombre : " + getName());
        System.out.println("Apellido : " + getLastName());
        System.out.println("Padres :");
        //Se realiza un for each para la asignacion de padres 
        for (Humano padre: padres) {
            System.out.println("  - Nombre : " + padre.getName());
        }
        System.out.println("==============================");
    }

    @Override
    public void addNiño(Humano niño) {

    }

    //Se agrega a una lista la asignacion de padres
    private List<Humano> padres = new ArrayList<>();
    @Override
    public void addPadre(Humano padre) {
        padres.add(padre);
    }
}



