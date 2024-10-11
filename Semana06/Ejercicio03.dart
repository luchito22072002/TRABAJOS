/*Una dulcería vende chocolates a los precios dados en la siguiente tabla:
Tipo de chocolate Precio unitario
Primor - S/. 8.5
Dulzura - S/. 10.0
Tentación - S/. 7.0
Explosión - S/. 12.5
Como oferta, la tienda aplica un porcentaje de descuento sobre el importe de la compra, 
basándose en la cantidad de chocolates adquiridos, de acuerdo con la siguiente tabla:
Cantidad de chocolates Descuento
< 5 - 4.0%
≥ 5 y < 10 - 6.5%
≥ 10 y < 15 - 9.0%
≥ 15 - 11.5%
Adicionalmente, si el importe a pagar es no menor de S/. 250, la tienda obsequia 3 caramelos por 
cada chocolate; en caso contrario, obsequia 2 caramelos por cada chocolate.
Dado el tipo de chocolate y la cantidad de unidades adquiridas, diseñe un programa que 
determine el importe de la compra, el importe del descuento, el importe a pagar y la cantidad de 
caramelos de obsequio.*/
import 'dart:io';

void main() {
  stdout.write('------------ Dulcería de Chocolates ------------\n');

  String tipoChocolate = leerTipoChocolate();
  int cantidadUnidades = leerCantidadUnidades();

  double precioUnitario = obtenerPrecio(tipoChocolate);
  double importeCompra = calcularImporte(precioUnitario, cantidadUnidades);
  double descuento = calcularDescuento(importeCompra, cantidadUnidades);
  double importeFinal = importeCompra - descuento;
  int caramelos = calcularCaramelos(importeFinal, cantidadUnidades);

  reporte(importeCompra, descuento, importeFinal, caramelos);
}

String leerTipoChocolate() {
  stdout.write(
      'Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ');
  String? tipo = stdin.readLineSync();
  return tipo!.toLowerCase();
}

int leerCantidadUnidades() {
  stdout.write('Ingrese la cantidad de chocolates adquiridos: ');
  String? input = stdin.readLineSync();
  return int.parse(input!);
}

double obtenerPrecio(String tipo) {
  switch (tipo) {
    case 'primor':
      return 8.5;
    case 'dulzura':
      return 10.0;
    case 'tentación':
      return 7.0;
    case 'explosión':
      return 12.5;
    default:
      stdout.write(
          'Tipo de chocolate no válido. Se asignará el precio de Primor.\n');
      return 8.5;
  }
}

double calcularImporte(double precio, int cantidad) {
  return precio * cantidad;
}

double calcularDescuento(double importe, int cantidad) {
  double porcentajeDescuento;

  if (cantidad < 5) {
    porcentajeDescuento = 0.04; // 4%
  } else if (cantidad >= 5 && cantidad < 10) {
    porcentajeDescuento = 0.065; // 6.5%
  } else if (cantidad >= 10 && cantidad < 15) {
    porcentajeDescuento = 0.09; // 9%
  } else {
    porcentajeDescuento = 0.115; // 11.5%
  }

  return importe * porcentajeDescuento;
}

int calcularCaramelos(double importeFinal, int cantidad) {
  return importeFinal >= 250 ? cantidad * 3 : cantidad * 2;
}

void reporte(double importeCompra, double descuento, double importeFinal,
    int caramelos) {
  stdout.write('------------ Reporte ------------\n');
  stdout
      .write('Importe de la Compra: S/. ${importeCompra.toStringAsFixed(2)}\n');
  stdout.write('Importe del Descuento: S/. ${descuento.toStringAsFixed(2)}\n');
  stdout.write('Importe a Pagar: S/. ${importeFinal.toStringAsFixed(2)}\n');
  stdout.write('Cantidad de Caramelos de Obsequio: $caramelos\n');
  stdout.write('-----------------------------------\n');
}
