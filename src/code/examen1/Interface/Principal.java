package code.examen1.Interface;

import java.util.Scanner;

public class Principal {
	
	static int num;
	public static void main(String[] args) {
		System.out.println("Contratacion profesores");
		System.out.println("Que tipo de profesor quiere:");
		System.out.println("1) Tiempo Completo");
		System.out.println("2) MedioTiempo");
		System.out.println("3) Interino");
		Scanner profesor = new Scanner (System.in);	
		int numero = profesor.nextInt();
		profesor.close();	
		Profesor prof = Eleccion.eleccion(numero);
		datos(prof);
	}
	
	
	private static void datos (Profesor prof) {
		System.out.println(prof.nombre());
		System.out.println("Numero de horas disponible:" + prof.getHoras()+ " Sueldo:" + prof.sueldo());
	}
	
}