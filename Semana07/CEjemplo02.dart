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
    print('Ingrese código del estudiante (o "salir" para terminar):');
    String? inputCodigo = stdin.readLineSync();
    if (inputCodigo?.toLowerCase() == 'salir') break;

    String codigo = inputCodigo ?? '';

    print('Ingrese nombres del estudiante:');
    String nombres = stdin.readLineSync()!;

    print('Ingrese nota 1 del estudiante:');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Ingrese nota 2 del estudiante:');
    double nota2 = double.parse(stdin.readLineSync()!);

    listaEstudiante.add(Estudiante(codigo, nombres, nota1, nota2));
    print('---');
  }

  print('---');
  print('Lista de estudiantes:');
  for (var estudiante in listaEstudiante) {
    estudiante.mostrarInformacion();
    print('---');
  }
}
