/* Un padre repartirá una cantidad de dinero entre sus cinco hijos. Cada uno
recibirá una cantidad equivalente a: • Tamar: 85% del monto recibido por Josué • Josué:
27% de la cantidad a repartir • Caleb: 23% del monto total recibido entre Josué y Daniel •
Daniel: 25% de la cantidad a repartir • David: lo que queda del dinero a repartir Dada la
cantidad de dinero a repartir, diseñe un programa en lenguaje Dart que determine cuánto
de dinero recibirá cada hijo. */

import 'dart:io';

void main(List<String> args) {
  String? totalInput;
  double total, josue, daniel, tamar, caleb, david;

  stdout.write('Ingrese la cantidad total de dinero a repartir: ');
  totalInput = stdin.readLineSync();
  total = double.parse(totalInput!);

  josue = total * 0.27;
  daniel = total * 0.25;
  tamar = josue * 0.85;
  caleb = (josue + daniel) * 0.23;
  david = total - (josue + daniel + tamar + caleb);

  stdout.write('---- Reporte ----\n');
  stdout.write('Dinero recibido por Josué: \$${josue.toStringAsFixed(2)}\n');
  stdout.write('Dinero recibido por Daniel: \$${daniel.toStringAsFixed(2)}\n');
  stdout.write('Dinero recibido por Tamar: \$${tamar.toStringAsFixed(2)}\n');
  stdout.write('Dinero recibido por Caleb: \$${caleb.toStringAsFixed(2)}\n');
  stdout.write('Dinero recibido por David: \$${david.toStringAsFixed(2)}\n');
  stdout.write("-------------------");
}
