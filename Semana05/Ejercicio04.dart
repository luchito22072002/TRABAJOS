/*Ejercicio 4: Inversión de un número
Crea un programa que invierta los dígitos de un número entero ingresado por el usuario, 
utilizando un bucle while para extraer y reordenar los dígitos.*/
import 'dart:io';

void main() {
  print('Ingrese un número entero:');
  int numero = int.parse(stdin.readLineSync()!);

  int inverso = 0;

  while (numero > 0) {
    int digito = numero % 10;
    inverso = inverso * 10 + digito;
    numero ~/= 10;
  }

  print('El número invertido es: $inverso');
}
