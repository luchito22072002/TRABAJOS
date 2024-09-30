/*  Diseñe un programa en Lenguaje Dart que determine el área total (A) y el
volumen (V) de un cilindro del que se conoce su radio (r) y su altura (h). Considere las
siguientes fórmulas: */

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  String? radioInput, alturaInput;
  double radio, altura, area, volumen;

  stdout.write('Ingrese el radio del cilindro: ');
  radioInput = stdin.readLineSync();
  radio = double.parse(radioInput!);

  stdout.write('Ingrese la altura del cilindro: ');
  alturaInput = stdin.readLineSync();
  altura = double.parse(alturaInput!);

  area = 2 * pi * radio * (radio + altura);
  volumen = pi * pow(radio, 2) * altura;

  stdout.write('---- Reporte ----\n');
  stdout.write('Radio: $radio\n');
  stdout.write('Altura: $altura\n');
  stdout.write('Área total: $area\n');
  stdout.write('Volumen: $volumen\n');
  stdout.write("-------------------");
}
