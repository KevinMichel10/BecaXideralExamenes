package code.examen1.Abstracta;

public class TiempoCompleto extends Profesor {
		
	public String nombre = "Profesor Tiempo Completo";
	int horas = 50;


	@Override
	public int sueldo() {
		return 75000;
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

