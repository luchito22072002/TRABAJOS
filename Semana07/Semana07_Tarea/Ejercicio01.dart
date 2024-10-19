/*En una universidad, los alumnos están clasificados en cuatro categorías. A cada categoría le
corresponde una pensión mensual distinta dada en la siguiente tabla:
Categoría Pensión
A S/. - 550
B S/. - 500
C S/. - 460
D S/. - 400
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

class Estudiante {
  String codigo;
  String nombres;
  String categoria;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.categoria, this.nota1, this.nota2);

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  double calcularPension() {
    switch (categoria.toUpperCase()) {
      case 'A':
        return 550;
      case 'B':
        return 500;
      case 'C':
        return 460;
      case 'D':
        return 400;
      default:
        throw Exception('Categoría inválida');
    }
  }

  double calcularDescuento(double promedio) {
    if (promedio < 14.00) {
      return 0;
    } else if (promedio < 16.00) {
      return calcularPension() * 0.10;
    } else if (promedio < 18.00) {
      return calcularPension() * 0.12;
    } else {
      return calcularPension() * 0.15;
    }
  }

  void mostrarInformacion() {
    double promedio = calcularPromedio();
    double pensionActual = calcularPension();
    double descuento = calcularDescuento(promedio);
    double nuevaPension = pensionActual - descuento;

    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Categoría: $categoria');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${promedio.toStringAsFixed(2)}');
    print('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}');
    print('Descuento: S/. ${descuento.toStringAsFixed(2)}');
    print('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}');
  }
}

void main() {
  List<Estudiante> listaEstudiante = [];

  while (true) {
    print('Ingrese código del estudiante (o "salir" para terminar):');
    String? inputCodigo = stdin.readLineSync();
    if (inputCodigo?.toLowerCase() == 'salir') break;

    String codigo = inputCodigo ?? '';

    print('Ingrese nombres del estudiante:');
    String nombres = stdin.readLineSync()!;

    print('Ingrese categoría del estudiante (A, B, C, D):');
    String categoria = stdin.readLineSync()!;

    print('Ingrese nota 1 del estudiante:');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Ingrese nota 2 del estudiante:');
    double nota2 = double.parse(stdin.readLineSync()!);

    listaEstudiante.add(Estudiante(codigo, nombres, categoria, nota1, nota2));
    print('---');
  }

  print('---');
  print('Lista de estudiantes:');
  for (var estudiante in listaEstudiante) {
    estudiante.mostrarInformacion();
    print('---');
  }
}
