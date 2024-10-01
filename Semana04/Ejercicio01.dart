/*En una universidad, los alumnos están categorizados en cuatro categorías. A cada 
categoría le corresponde una pensión mensual distinta dada en la siguiente tabla:
Categoría Pensión
A S/. 550
B S/. 500
C S/. 460
D S/. 400
Semestralmente, la universidad efectúa rebajas en las pensiones de sus estudiantes a 
partir del segundo ciclo en base al promedio ponderado del ciclo anterior en porcentajes 
dados en la tabla siguiente:
Nota Promedio Promedio Descuento
0 a 13.99 No hay descuento
14.00 a 15.99 10 %
16.00 a 17.99 12 %
18.00 a 20.00 15 %
Implemente una aplicación utilizando lenguaje Dart que determine cuánto de rebaja 
recibirá un estudiante sobre su pensión actual y a cuánto asciende su nueva pensión.*/
import 'dart:io';

void main() {
  String? categoria;
  double promedio, pensionActual, rebaja, nuevaPension;

  const Map<String, double> pensiones = {
    'A': 550.0,
    'B': 500.0,
    'C': 460.0,
    'D': 400.0,
  };

  stdout.write('Ingrese la categoría del estudiante (A, B, C, D): ');
  categoria = stdin.readLineSync()?.toUpperCase();

  if (pensiones.containsKey(categoria)) {
    stdout.write('Ingrese el promedio del ciclo anterior: ');
    String? promedioStr = stdin.readLineSync();
    promedio = double.parse(promedioStr!);

    pensionActual = pensiones[categoria]!;

    double descuento;
    if (promedio >= 0 && promedio < 14.00) {
      descuento = 0.0;
    } else if (promedio >= 14.00 && promedio < 16.00) {
      descuento = 0.10;
    } else if (promedio >= 16.00 && promedio < 18.00) {
      descuento = 0.12;
    } else if (promedio >= 18.00 && promedio <= 20.00) {
      descuento = 0.15;
    } else {
      stdout.write('Promedio inválido.\n');
      return;
    }

    rebaja = pensionActual * descuento;
    nuevaPension = pensionActual - rebaja;

    stdout.write('------Reporte......\n');
    stdout.write('Pensión actual: S/. ${pensionActual.toStringAsFixed(2)}\n');
    stdout.write('Rebaja aplicada: S/. ${rebaja.toStringAsFixed(2)}\n');
    stdout.write('Nueva pensión: S/. ${nuevaPension.toStringAsFixed(2)}\n');
  } else {
    stdout.write('Categoría inválida.\n');
  }
}
