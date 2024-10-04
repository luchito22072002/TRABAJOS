/*Ejercicio 1: Sumatoria de números primos en un rango
Escribe un programa que solicite dos números y calcule la sumatoria de los números 
primos que existen entre esos dos valores. Utiliza un bucle for o while para recorrer los 
números en el rango y verifica si son primos.*/
import 'dart:io';

bool esPrimo(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  print('Ingrese el primer número:');
  int inicio = int.parse(stdin.readLineSync()!);
  print('Ingrese el segundo número:');
  int fin = int.parse(stdin.readLineSync()!);
  int sumaPrimos = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i;
    }
  }
  print('La sumatoria de números primos entre $inicio y $fin es: $sumaPrimos');
}
