/*Ejercicio 8: Verificación de un número Armstrong
Escribe un programa que verifique si un número de n dígitos ingresado por el usuario es 
un número de Armstrong (o narcisista). Utiliza un bucle for para separar y elevar cada 
dígito a la potencia correspondiente.*/
import 'dart:io';
import 'dart:math';

bool esNumeroArmstrong(int numero) {
  String strNumero = numero.toString();
  int n = strNumero.length;
  int suma = 0;
  for (int i = 0; i < n; i++) {
    suma += pow(int.parse(strNumero[i]), n).toInt();
  }
  return suma == numero;
}
void main() {
  print('Ingrese un número:');
  int numero = int.parse(stdin.readLineSync()!);
  
  if (esNumeroArmstrong(numero)) {
    print('$numero es un número Armstrong.');
  } else {
    print('$numero no es un número Armstrong.');
  }
}
