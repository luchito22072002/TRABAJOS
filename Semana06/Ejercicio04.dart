/*Una tienda vende tres tipos de productos a los precios dados en la siguiente tabla: 
Producto Precio
P1 S/. 15.0
P2 S/. 17.5
P3 S/. 20.0
Como oferta la tienda ofrece un regalo de acuerdo con la siguiente tabla:
Unidades adquiridas Regalo
Menos de 26 Un lapicero
26 a 50 Un cuaderno
Más de 50 Una agenda
Dado el tipo de producto y la cantidad de unidades adquiridas, diseñe un programa que 
determine el importe a pagar y el regalo.*/
import 'dart:io';

void main() {
  stdout.write('------------ Tienda de Productos ------------\n');

  String tipoProducto = leerTipoProducto();
  int cantidadUnidades = leerCantidadUnidades();

  double precio = obtenerPrecio(tipoProducto);
  double importeTotal = calcularImporte(precio, cantidadUnidades);
  String regalo = determinarRegalo(cantidadUnidades);

  reporte(importeTotal, regalo);
}

String leerTipoProducto() {
  stdout.write('Ingrese el tipo de producto (P1, P2, P3): ');
  String? tipo = stdin.readLineSync();
  return tipo!.toUpperCase();
}

int leerCantidadUnidades() {
  stdout.write('Ingrese la cantidad de unidades adquiridas: ');
  String? input = stdin.readLineSync();
  return int.parse(input!);
}

double obtenerPrecio(String tipo) {
  switch (tipo) {
    case 'P1':
      return 15.0;
    case 'P2':
      return 17.5;
    case 'P3':
      return 20.0;
    default:
      stdout
          .write('Tipo de producto no válido. Se asignará el precio de P1.\n');
      return 15.0;
  }
}

double calcularImporte(double precio, int cantidad) {
  return precio * cantidad;
}

String determinarRegalo(int cantidad) {
  if (cantidad < 26) {
    return 'Un lapicero';
  } else if (cantidad >= 26 && cantidad <= 50) {
    return 'Un cuaderno';
  } else {
    return 'Una agenda';
  }
}

void reporte(double importeTotal, String regalo) {
  stdout.write('------------ Reporte ------------\n');
  stdout.write('Importe a Pagar: S/. ${importeTotal.toStringAsFixed(2)}\n');
  stdout.write('Regalo: $regalo\n');
  stdout.write('-----------------------------------\n');
}
