/* CEjercicio01: Desarrollar un programa en Lenguaje Dart que permita calcular el área y
perímetro de un cuadrado. */

import 'dart:io';

void main(List<String> args) {
  String? ladoInput;

  double lado, area, perimetro;

  stdout.write('Ingrese la longitud del lado del cuadrado: ');
  ladoInput = stdin.readLineSync();

  lado = double.parse(ladoInput!);

  area = lado * lado;
  perimetro = 4 * lado;

  stdout.write('---- Reporte ----\n');
  stdout.write('Lado: $lado\n');
  stdout.write('Área: $area\n');
  stdout.write('Perímetro: $perimetro\n');
  stdout.write("-------------------");
}
