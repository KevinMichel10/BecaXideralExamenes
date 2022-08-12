package Pruebas;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import com.curso.v1.*;

class TestComposite {

	//Como tienen el mismo nombre se lleva acabo de manera correcta la comparacion
	@Test
	void test1() {
		String nombre="Dilan";
		Humano hum = new Niño("Dilan", null);
		assertEquals(nombre,hum.getName());
	}
	
	//Como tienen el mismo nombre se lleva acabo de manera correcta la comparacion
	@Test
	void test2() {
		Humano hum = new Padre("Efrain", null);
		Humano hum2 = new Niño("Efrain", null);
		assertEquals(hum2.getName(),hum.getName());
	}
	
	
	//Como tienen distinto apellido se cumple la condicion false al compararse
	@Test
	void test3() {
		 Padre rosario = new Padre("Rosario", "Flores");
		 Niño dilan = new Niño("Dilan", "Lopez");
			assertFalse(rosario.getLastName(),dilan.getLastName().contains("Flores"));
		
	}
	
	//Como ambos tienen el mismo apellido se cumple la condicion al compararse
	@Test
	void test4() {
		String test = "Lopez";
		Humano hum = new Padre(null, "Lopez");
		assertEquals(test,hum.getLastName());	
	}
	
	//Al no tener el mismo apellido mandara una test false, dando incorrecto el test
	@Test
	void test5() {
		 Padre rosario = new Padre("Efrain", "Flores");
		 Niño dilan = new Niño("Dilan", "Lopez");
			assertTrue(rosario.getLastName(),dilan.getLastName().contains("Flores"));
		
	}
	
	

}