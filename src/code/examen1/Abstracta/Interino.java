package code.examen1.Abstracta;

public class Interino extends Profesor {
	
	
	public String nombre = "Profesor Interino";
	int horas = 5;


	@Override
	public int sueldo() {
		return 50000;
	}

	@Override
	public String nombre() {	
		return nombre;
	}

	@Override
	public int getHoras() {
		return horas;
	}
	
}