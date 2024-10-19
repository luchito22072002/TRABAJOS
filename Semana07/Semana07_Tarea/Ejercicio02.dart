/*Una empresa evalúa a sus empleados bajo dos criterios: puntualidad y rendimiento. En cada caso,
el empleado recibe un puntaje que va de 1 a 10, de acuerdo con los siguientes criterios:
Puntaje por puntualidad: - está en función de los minutos de tardanza de acuerdo con la
siguiente tabla:
Minutos de tardanza Puntaje
0 10
1 a 2 8
3 a 5 6
6 a 9 4
Mas de 9 0
Puntaje por rendimiento: - está en función de la cantidad de observaciones efectuadas al
empleado por no cumplir sus obligaciones de acuerdo con la siguiente tabla:
Observaciones efectuadas Puntaje
0 10
1 8
2 5
3 1
Mas de 3 0
El puntaje total del empleado es la suma del puntaje por puntualidad más el puntaje por
rendimiento. Basándose en el puntaje total, el empleado recibe una bonificación anual de acuerdo
con la siguiente tabla:
Puntaje total Bonificación
Menos de 11 - S/. 2.5 por punto
11 a 13 - S/. 5.0 por punto
14 a 16 - S/. 7.5 por punto
17 a 19 - S/. 10.0 por punto
20 - S/. 12.5 por punto
Dados los minutos de tardanza y el número de observaciones de un empleado, diseñe un
programa que determine el puntaje por puntualidad, el puntaje por rendimiento, el puntaje total
y la bonificación que le corresponden
*/
import 'dart:io';

class Empleado {
  String codigo;
  String nombres;
  int minutosTardanza;
  int observaciones;

  Empleado(this.codigo, this.nombres, this.minutosTardanza, this.observaciones);

  int calcularPuntajePuntualidad() {
    if (minutosTardanza == 0) return 10;
    if (minutosTardanza <= 2) return 8;
    if (minutosTardanza <= 5) return 6;
    if (minutosTardanza <= 9) return 4;
    return 0;
  }

  int calcularPuntajeRendimiento() {
    if (observaciones == 0) return 10;
    if (observaciones == 1) return 8;
    if (observaciones == 2) return 5;
    if (observaciones == 3) return 1;
    return 0;
  }

  double calcularBonificacion(int puntajeTotal) {
    if (puntajeTotal < 11) return puntajeTotal * 2.5;
    if (puntajeTotal <= 13) return puntajeTotal * 5.0;
    if (puntajeTotal <= 16) return puntajeTotal * 7.5;
    if (puntajeTotal <= 19) return puntajeTotal * 10.0;
    return 12.5;
  }

  void mostrarInformacion() {
    int puntajePuntualidad = calcularPuntajePuntualidad();
    int puntajeRendimiento = calcularPuntajeRendimiento();
    int puntajeTotal = puntajePuntualidad + puntajeRendimiento;
    double bonificacion = calcularBonificacion(puntajeTotal);

    print('Código: $codigo');
    print('Nombres: $nombres');
    print('Minutos de tardanza: $minutosTardanza');
    print('Observaciones: $observaciones');
    print('Puntaje por puntualidad: $puntajePuntualidad');
    print('Puntaje por rendimiento: $puntajeRendimiento');
    print('Puntaje total: $puntajeTotal');
    print('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}');
  }
}

void main() {
  List<Empleado> listaEmpleados = [];

  while (true) {
    print('Ingrese código del empleado (o "salir" para terminar):');
    String? inputCodigo = stdin.readLineSync();
    if (inputCodigo?.toLowerCase() == 'salir') break;

    print('Ingrese nombres del empleado:');
    String nombres = stdin.readLineSync()!;

    print('Ingrese minutos de tardanza:');
    int minutosTardanza = int.parse(stdin.readLineSync()!);

    print('Ingrese número de observaciones:');
    int observaciones = int.parse(stdin.readLineSync()!);

    listaEmpleados
        .add(Empleado(inputCodigo!, nombres, minutosTardanza, observaciones));
    print('---');
  }

  print('---');
  print('Lista de empleados:');
  for (var empleado in listaEmpleados) {
    empleado.mostrarInformacion();
    print('---');
  }
}
