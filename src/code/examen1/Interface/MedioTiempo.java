package code.examen1.Interface;

public class MedioTiempo implements Profesor {
	
	public String nombre = "Profesor Medio Tiempo";
	int horas = 25;


	@Override
	public int sueldo() {
		return 65000;
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