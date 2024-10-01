/*Los cálculos salariales de los vendedores de una empresa se calculan de la siguiente 
manera: 
* Sueldo básico: S/.600 
* Comisión: 7% del importe total vendido si es que el importe total vendido es 
mayor a S/.15000; en caso contrario, 5% del importe total vendido 
* Bonificación: S/.25 por cada hijo si es que el número de hijos es menor a 5; en 
caso contrario, S/.22 por cada hijo 
* Sueldo bruto: La suma del sueldo básico, más la comisión y más la bonificación 
* Descuento: 15% del sueldo bruto si es que el sueldo bruto es mayor que S/.3500; 
en caso contrario, 11% del sueldo bruto 
* Sueldo neto: La resta del sueldo bruto menos el descuento 
Dado el importe total vendido y el número de hijos de un vendedor, diseñe un programa 
que determine el sueldo básico, la comisión, la bonificación, el sueldo bruto, el descuento 
y el sueldo neto.*/

import 'dart:io';

void main() {
  double sueldoBasico = 600.0;
  double comision;
  double bonificacion;
  double sueldoBruto;
  double descuento;
  double sueldoNeto;

  stdout.write('Ingrese el importe total vendido: ');
  double importeVendido = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el número de hijos: ');
  int numeroHijos = int.parse(stdin.readLineSync()!);

  if (importeVendido > 15000) {
    comision = 0.07 * importeVendido;
  } else {
    comision = 0.05 * importeVendido;
  }

  if (numeroHijos < 5) {
    bonificacion = 25.0 * numeroHijos;
  } else {
    bonificacion = 22.0 * numeroHijos;
  }

  sueldoBruto = sueldoBasico + comision + bonificacion;

  if (sueldoBruto > 3500) {
    descuento = 0.15 * sueldoBruto;
  } else {
    descuento = 0.11 * sueldoBruto;
  }

  sueldoNeto = sueldoBruto - descuento;

  stdout.write('------Reporte......\n');
  stdout.write('Sueldo básico: S/. ${sueldoBasico.toStringAsFixed(2)}\n');
  stdout.write('Comisión: S/. ${comision.toStringAsFixed(2)}\n');
  stdout.write('Bonificación: S/. ${bonificacion.toStringAsFixed(2)}\n');
  stdout.write('Sueldo bruto: S/. ${sueldoBruto.toStringAsFixed(2)}\n');
  stdout.write('Descuento: S/. ${descuento.toStringAsFixed(2)}\n');
  stdout.write('Sueldo neto: S/. ${sueldoNeto.toStringAsFixed(2)}\n');
}
