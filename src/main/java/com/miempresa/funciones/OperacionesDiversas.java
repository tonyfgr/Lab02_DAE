package com.miempresa.funciones;

public class OperacionesDiversas {
    public double calcularRaizCuadrada(double numero) {
        if (numero >= 0) {
            return Math.sqrt(numero);
        } else {
            throw new ArithmeticException("No se puede calcular la raíz cuadrada de un número negativo.");
        }
    }

    public double calcularRaizCubica(double numero) {
        return Math.cbrt(numero);
    }

    public double calcularPotencia(double base, double exponente) {
        return Math.pow(base, exponente);
    }

    public int calcularFactorial(int numero) {
        if (numero < 0) {
            throw new ArithmeticException("No se puede calcular el factorial de un número negativo.");
        }
        int factorial = 1;
        for (int i = 1; i <= numero; i++) {
            factorial *= i;
        }
        return factorial;
    }

    public double calcularLogaritmo(double numero) {
        if (numero > 0) {
            return Math.log(numero);
        } else {
            throw new ArithmeticException("No se puede calcular el logaritmo de un número no positivo.");
        }
    }
}

