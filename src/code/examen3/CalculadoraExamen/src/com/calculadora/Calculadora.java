package com.calculadora;

import java.util.*;
import java.util.function.BinaryOperator;

public class Calculadora {

	public static void main(String[] args) {

		// Creacion de lambdas para la realizacion de operaciones
		// Se utiliza BinaryOperator para introducir 2 valores double y regrese uno del
		// mismpo tipo

		BinaryOperator<Double> suma = (x, y) -> x + y;
		BinaryOperator<Double> resta = (x, y) -> x - y;
		BinaryOperator<Double> multi = (x, y) -> x * y;
		BinaryOperator<Double> div = (x, y) -> x / y;
		BinaryOperator<Double> potencia = (x, y) -> Math.pow(x, y); // Se utliza Math.pow para realizar la potencia
		BinaryOperator<Double> raiz = (x, y) -> Math.pow(x, 1 / y); // Se utliza Math.pow para realizar la raiz ya que
																	// la operacion sqrt nos causaria conflicto
		BinaryOperator<Double> max = (x, y) -> Math.max(x, y);// Mayor numero entre los dos
		BinaryOperator<Double> min = (x, y) -> Math.min(x, y);// Menos numero entre los dos

		// Creacion de la lista para guardar las lambdas creadas anteriormente
		List<BinaryOperator<Double>> listOpe = new ArrayList<>();

		// Se agregan las operaciones a la lista
		listOpe.add(suma); // 0
		listOpe.add(resta); // 1
		listOpe.add(multi); // 2
		listOpe.add(div); // 3
		listOpe.add(potencia);// 4
		listOpe.add(raiz);// 5
		listOpe.add(max);// 6
		listOpe.add(min);// 7

		// Se realiza la ejecucion del metodo con la lista ya incluida
		ejecutaOperaciones(listOpe);
	}

	static void ejecutaOperaciones(List<BinaryOperator<Double>> listOperaciones) {
		for (BinaryOperator<Double> ope : listOperaciones) {

			// Se crea un try catch para atrapar la excepcion que puede suceder si se
			// realiza una division x/0
			try {
				System.out.println(ope.apply(10.0, 5.0));
				// En caso de que la division sea incorrecta (x/0) se imprimira el mensaje en
				// consola
			} catch (ArithmeticException e) {
				System.out.println("La división no se pudo realizar");
			}

		}
	}
}
