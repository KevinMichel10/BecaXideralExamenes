package code.examen1.Abstracta;
import java.util.Scanner;

public class Principal {
	
	static int num;
	public static void main(String[] args) {
		System.out.println("Contratacion profesores");
		System.out.println("Que tipo de profesor quiere:");
		System.out.println("1) Tiempo Completo");
		System.out.println("2) MedioTiempo");
		Scanner profesor = new Scanner (System.in);	
		System.out.println("3) Interino");
		//System.out.println("Introduzca el numero de horas que trabaja:");
		int numero = profesor.nextInt();
		//String numero = profesor.next();
		profesor.close();
		
		Profesor prof = Eleccion.eleccion(numero);
		datos(prof);
		
	}
	
	
	private static void datos (Profesor prof) {
		System.out.println(prof.nombre());
		System.out.println("Numero de horas disponible:" + prof.getHoras()+ " Sueldo:" + prof.sueldo());
	}
	
	
	
	
}