package com.curso.v1;

public class Principal {
	
	 public static void main(String[] args) {
		 	
		 	System.out.println("Árbol genealógico");
		 	
		 	//Se crean los objetos y su referencia
		 	Niño dilan = new Niño("Dilan", "Lopez");
		 	Niño xiadani = new Niño("Xiadani", "Lopez");
	        Padre ernesto = new Padre("Ernesto", "Lopez");
	        Padre rosario = new Padre("Rosario", "Flores");
	        
	       //Se lleva acabo la asignacion de padres e hijos
	        dilan.addPadre(ernesto);
	        dilan.addPadre(rosario);
	        ernesto.addNiño(dilan);
	        rosario.addNiño(dilan);
	        xiadani.addPadre(ernesto);
	        xiadani.addPadre(rosario);
	        ernesto.addNiño(xiadani);
	        rosario.addNiño(xiadani);
	        
	        
	        //Se crea el abuelo
	        Abuelo efrain = new Abuelo("Efrain", "Lopez");
	        
	        //Al abuelo se le asigna un hijo y al hijo por defecto se le asigna un padre
	        efrain.addNiño(ernesto);
	        ernesto.addPadre(efrain);

	        //Se imprimen los resultados
	        efrain.print();
	        ernesto.print();
	        dilan.print();
	        xiadani.print();
	    }
	}

