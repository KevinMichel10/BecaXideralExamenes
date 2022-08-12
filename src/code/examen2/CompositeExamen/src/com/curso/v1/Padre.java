package com.curso.v1;

import java.util.*;
//Se crea una clase padre que implementara de humano
public class Padre implements Humano {
	
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

	    public Padre(String name, String lastName){
	        this.name = name;
	        this.lastName = lastName;
	    }

	    @Override
	    public void print() {
	        System.out.println("==============================");
	        System.out.println("Nombre : " + getName());
	        System.out.println("Apellido : " + getLastName());
	        System.out.println("Padres :");
	        //Se crea un for each para asignacion de padre, en este caso seria abuelo 
	        for (Humano padre: abuelo) {
	            System.out.println("  - Nombre : " + padre.getName());
	        }
	        System.out.println("Niños :");
	        //Se crea un for each para asignacion de niños
	        for (Humano niño: niños) {
	            System.out.println("  - Nombre : " + niño.getName());
	        }
	        System.out.println("==============================");
	    }

	    private List<Humano> niños = new ArrayList<>();
	    @Override
	    public void addNiño(Humano child) {
	        niños.add(child);
	    }

	    private List<Humano> abuelo = new ArrayList<>();
	    @Override
	    public void addPadre(Humano padre) {
	        abuelo.add(padre);
	    }
	}

