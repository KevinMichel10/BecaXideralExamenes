package com.curso.v1;

import java.util.*;

//Se crea una clase abuelo que implementara de humano
public class Abuelo implements Humano {
	
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

	    public Abuelo(String name, String lastName){
	        this.name = name;
	        this.lastName = lastName;
	    }

	    @Override
	    public void print() {
	        System.out.println("==============================");
	        System.out.println("Nombre : " + getName());
	        System.out.println("Apellido : " + getLastName());
	        System.out.println("Niños :");
	        //Se crea un for each para asignacion de niños 
	        for (Humano niño: niños) {
	            System.out.println("  - Nombre : " + niño.getName());
	        }
	        System.out.println("==============================");
	    }

	    private List<Humano> niños = new ArrayList<>();
	    @Override
	    public void addNiño(Humano niño) {
	        niños.add(niño);
	    }

	    @Override
	    public void addPadre(Humano padre) {

	    }
	}


