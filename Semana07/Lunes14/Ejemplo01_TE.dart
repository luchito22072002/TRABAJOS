import 'dart:io';

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  void mostrarInformacion() {
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() => (nota1 + nota2) / 2;
}

void main() {
  String codigo = obtenerEntrada('Ingrese el código del estudiante: ');
  String nombres = obtenerEntrada('Ingrese los nombres del estudiante: ');
  double nota1 = obtenerNota('Ingrese la nota 1: ');
  double nota2 = obtenerNota('Ingrese la nota 2: ');

  Estudiante estudiante = Estudiante(codigo, nombres, nota1, nota2);
  estudiante.mostrarInformacion();
}

String obtenerEntrada(String mensaje) {
  stdout.write(mensaje);
  return stdin.readLineSync()!;
}

double obtenerNota(String mensaje) {
  return double.parse(obtenerEntrada(mensaje));
}
