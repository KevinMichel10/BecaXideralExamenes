package code.examen1.Abstracta;

public class Eleccion {

	public static Profesor eleccion (int e) {			
	/*	Profesor selec = null;
		switch(e) {
		case "c":
		if(!e.equals("c")) {
			return selec = new TiempoCompleto();
		}

		case "m":
		if(!e.equals("m")) {
			return selec = new MedioTiempo();
		}
		case "i":
			if(!e.equals("i")) {
			return selec = new Interino();
		}
	}
		return selec;
}
}*/
			Profesor selec = null;
				
				switch(e) {
				case 1: 
					return selec = new TiempoCompleto();
				case 2: 
					return selec = new MedioTiempo();
				case 3:
					return selec = new Interino();
				
				}
				return selec;
				
				
			}
			
		}
