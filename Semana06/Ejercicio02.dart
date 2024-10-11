/*Una empresa evalúa a sus empleados bajo dos criterios: puntualidad y rendimiento. En cada caso, 
el empleado recibe un puntaje que va de 1 a 10, de acuerdo con los siguientes criterios: 
Puntaje por puntualidad: - está en función de los minutos de tardanza de acuerdo con la 
siguiente tabla:
Minutos de tardanza Puntaje
0 - 10
1 a 2 - 8
3 a 5 - 6
6 a 9 - 4
Mas de - 9 0
Puntaje por rendimiento: - está en función de la cantidad de observaciones efectuadas al 
empleado por no cumplir sus obligaciones de acuerdo con la siguiente tabla:
Observaciones efectuadas Puntaje
0 - 10
1 - 8
2 - 5
3 - 1
Mas de 3 - 0
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
y la bonificación que le corresponden.*/
import 'dart:io';

void main() {
  stdout.write('------------ Evaluación de Empleados ------------\n');

  int minutosTardanza = leerMinutosTardanza();
  int observaciones = leerObservaciones();

  int puntajePuntualidad = calcularPuntajePuntualidad(minutosTardanza);
  int puntajeRendimiento = calcularPuntajeRendimiento(observaciones);
  int puntajeTotal = puntajePuntualidad + puntajeRendimiento;
  double bonificacion = calcularBonificacion(puntajeTotal);

  reporte(puntajePuntualidad, puntajeRendimiento, puntajeTotal, bonificacion);
}

int leerMinutosTardanza() {
  stdout.write('Ingrese minutos de tardanza: ');
  String? input = stdin.readLineSync();
  return int.parse(input!);
}

int leerObservaciones() {
  stdout.write('Ingrese la cantidad de observaciones: ');
  String? input = stdin.readLineSync();
  return int.parse(input!);
}

int calcularPuntajePuntualidad(int minutos) {
  if (minutos == 0) return 10;
  if (minutos >= 1 && minutos <= 2) return 8;
  if (minutos >= 3 && minutos <= 5) return 6;
  if (minutos >= 6 && minutos <= 9) return 4;
  return 0; // Más de 9 minutos
}

int calcularPuntajeRendimiento(int observaciones) {
  if (observaciones == 0) return 10;
  if (observaciones == 1) return 8;
  if (observaciones == 2) return 5;
  if (observaciones == 3) return 1;
  return 0; // Más de 3 observaciones
}

double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) return puntajeTotal * 2.5;
  if (puntajeTotal >= 11 && puntajeTotal <= 13) return puntajeTotal * 5.0;
  if (puntajeTotal >= 14 && puntajeTotal <= 16) return puntajeTotal * 7.5;
  if (puntajeTotal >= 17 && puntajeTotal <= 19) return puntajeTotal * 10.0;
  return puntajeTotal * 12.5; // Puntaje total de 20
}

void reporte(int puntajePuntualidad, int puntajeRendimiento, int puntajeTotal,
    double bonificacion) {
  stdout.write('------------ Reporte ------------\n');
  stdout.write('Puntaje por Puntualidad: $puntajePuntualidad\n');
  stdout.write('Puntaje por Rendimiento: $puntajeRendimiento\n');
  stdout.write('Puntaje Total: $puntajeTotal\n');
  stdout.write('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}\n');
  stdout.write('-----------------------------------\n');
}
