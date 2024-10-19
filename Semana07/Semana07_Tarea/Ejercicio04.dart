/*Una tienda vende tres tipos de productos a los precios dados en la siguiente tabla:
Producto Precio
P1 - S/. 15.0
P2 - S/. 17.5
P3 - S/. 20.0
Como oferta la tienda ofrece un regalo de acuerdo con la siguiente tabla:
Unidades adquiridas Regalo
Menos de 26 - Un lapicero
26 a 50 - Un cuaderno
Más de 50 - Una agenda
Dado el tipo de producto y la cantidad de unidades adquiridas, diseñe un programa que
determine el importe a pagar y el regalo.
*/
import 'dart:io';

void main() {
  Map<String, double> productos = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  print('Tipos de productos disponibles y precios:');
  productos.forEach((producto, precio) {
    print('$producto: S/. $precio');
  });

  print('Ingrese el tipo de producto (P1, P2, P3):');
  String? tipoProducto = stdin.readLineSync();

  if (!productos.containsKey(tipoProducto)) {
    print('Tipo de producto no válido.');
    return;
  }

  print('Ingrese la cantidad de unidades adquiridas:');
  int cantidad = int.parse(stdin.readLineSync()!);

  double precioUnitario = productos[tipoProducto]!;
  double importeAPagar = precioUnitario * cantidad;

  String regalo;
  if (cantidad < 26) {
    regalo = 'Un lapicero';
  } else if (cantidad <= 50) {
    regalo = 'Un cuaderno';
  } else {
    regalo = 'Una agenda';
  }

  print('---');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
  print('Regalo: $regalo');
}
