import 'dart:io';

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  double calcularPromedio() {
    return (nota1 + nota2) / 2;
  }

  void mostrarInformacion() {
    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Promedio: ${calcularPromedio()}');
  }
}

void main() {
  List<Estudiante> listaEstudiante = [];

  while (true) {
    String codigo = ingresarCodigo();
    if (codigo.toLowerCase() == 'salir') break;

    String nombres = ingresarNombres();
    double nota1 = ingresarNota('1');
    double nota2 = ingresarNota('2');

    listaEstudiante.add(Estudiante(codigo, nombres, nota1, nota2));
    print('---');
  }

  mostrarListaEstudiantes(listaEstudiante);
}

String ingresarCodigo() {
  print('Ingrese código del estudiante (o "salir" para terminar):');
  return stdin.readLineSync()!;
}

String ingresarNombres() {
  print('Ingrese nombres del estudiante:');
  return stdin.readLineSync()!;
}

double ingresarNota(String numeroNota) {
  print('Ingrese nota $numeroNota del estudiante:');
  return double.parse(stdin.readLineSync()!);
}

void mostrarListaEstudiantes(List<Estudiante> listaEstudiante) {
  print('---');
  print('Lista de estudiantes:');
  for (var estudiante in listaEstudiante) {
    estudiante.mostrarInformacion();
    print('---');
  }
}
