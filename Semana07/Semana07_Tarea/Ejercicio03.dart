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
caramelos de obsequio.
*/

import 'dart:io';

class Chocolate {
  String tipo;
  double precioUnitario;

  Chocolate(this.tipo, this.precioUnitario);
}

void main() {
  Set<Chocolate> chocolatesDisponibles = {
    Chocolate('Primor', 8.5),
    Chocolate('Dulzura', 10.0),
    Chocolate('Tentación', 7.0),
    Chocolate('Explosión', 12.5),
  };

  print('Tipos de chocolates disponibles:');
  for (var chocolate in chocolatesDisponibles) {
    print('${chocolate.tipo}: S/. ${chocolate.precioUnitario}');
  }

  print('Ingrese el tipo de chocolate que desea comprar:');
  String? tipoChocolate = stdin.readLineSync();

  var chocolateSeleccionado = chocolatesDisponibles.firstWhere(
    (choco) => choco.tipo.toLowerCase() == tipoChocolate!.toLowerCase(),
    orElse: () => Chocolate('', 0),
  );

  if (chocolateSeleccionado.precioUnitario == 0) {
    print('Tipo de chocolate no válido.');
    return;
  }

  print('Ingrese la cantidad de chocolates:');
  int cantidad = int.parse(stdin.readLineSync()!);

  double importeCompra = chocolateSeleccionado.precioUnitario * cantidad;

  double descuento;
  if (cantidad < 5) {
    descuento = importeCompra * 0.04;
  } else if (cantidad < 10) {
    descuento = importeCompra * 0.065;
  } else if (cantidad < 15) {
    descuento = importeCompra * 0.09;
  } else {
    descuento = importeCompra * 0.115;
  }

  double importeAPagar = importeCompra - descuento;

  int caramelos = importeAPagar >= 250 ? cantidad * 3 : cantidad * 2;

  print('---');
  print('Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}');
  print('Importe del descuento: S/. ${descuento.toStringAsFixed(2)}');
  print('Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}');
  print('Cantidad de caramelos de obsequio: $caramelos');
}
