/*Ejercicio 3: Factorial de números grandes
Escribe un programa que calcule el factorial de un número grande (por ejemplo, 100) 
utilizando estructuras repetitivas y el tipo de datos BigInteger para manejar grandes 
números.*/
import 'dart:io';

BigInt factorial(int n) {
  BigInt result = BigInt.from(1);
  for (int i = 2; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}

void main() {
  print('Ingrese un número entero para calcular su factorial:');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print('El factorial no está definido para números negativos.');
  } else {
    BigInt resultado = factorial(numero);
    print('El factorial de $numero es: $resultado');
  }
}
