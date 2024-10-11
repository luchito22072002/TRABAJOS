/*En una universidad, los alumnos están clasificados en cuatro categorías. A cada categoría le 
corresponde una pensión mensual distinta dada en la siguiente tabla:
Categoría Pensión
A - S/. 550
B - S/. 500
C - S/. 460
D - S/. 400
Semestralmente, la universidad efectúa rebajas en las pensiones de sus estudiantes a partir del 
segundo ciclo basándose en el promedio ponderado del ciclo anterior en porcentajes dados en 
la tabla siguiente:
Promedio Descuento
0 a 13.99 - No hay descuento
14.00 a 15.99 - 10 %
16.00 a 17.99 - 12 %
18.00 a 20.00 - 15 %
Dado el promedio ponderado y la categoría de un estudiante, diseñe un programa que determine 
cuánto de rebaja recibirá sobre su pensión actual y a cuánto asciende su nueva pensión.*/
import 'dart:io';

void main() {
  stdout.write('------------ Ingreso de Datos ------------\n');

  String categoria = leerCategoria();
  double promedio = leerPromedio();

  double pension = obtenerPension(categoria);
  double descuento = calcularDescuento(promedio, pension);
  double nuevaPension = pension - descuento;

  reporte(categoria, promedio, descuento, nuevaPension);
}

String leerCategoria() {
  stdout.write('Ingrese la categoría (A, B, C, D): ');
  String? categoria = stdin.readLineSync();
  return categoria!.toUpperCase();
}

double leerPromedio() {
  stdout.write('Ingrese el promedio ponderado: ');
  String? input = stdin.readLineSync();
  return double.parse(input!);
}

double obtenerPension(String categoria) {
  switch (categoria) {
    case 'A':
      return 550.0;
    case 'B':
      return 500.0;
    case 'C':
      return 460.0;
    case 'D':
      return 400.0;
    default:
      stdout
          .write('Categoría no válida. Se asignará categoría D por defecto.\n');
      return 400.0;
  }
}

double calcularDescuento(double promedio, double pension) {
  double porcentajeDescuento;

  if (promedio < 14.0) {
    porcentajeDescuento = 0.0;
  } else if (promedio < 16.0) {
    porcentajeDescuento = 0.10; // 10%
  } else if (promedio < 18.0) {
    porcentajeDescuento = 0.12; // 12%
  } else {
    porcentajeDescuento = 0.15; // 15%
  }

  return pension * porcentajeDescuento;
}

void reporte(
    String categoria, double promedio, double descuento, double nuevaPension) {
  stdout.write('------------ Reporte ------------\n');
  stdout.write('Categoría: $categoria\n');
  stdout.write('Promedio: $promedio\n');
  stdout.write('Descuento: S/. ${descuento.toStringAsFixed(2)}\n');
  stdout.write('Nueva Pensión: S/. ${nuevaPension.toStringAsFixed(2)}\n');
  stdout.write('-----------------------------------\n');
}
