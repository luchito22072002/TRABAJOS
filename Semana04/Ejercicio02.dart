/*El ejército nacional ha decidido hacer una jornada de ventas de libretas militares para 
muchos hombres que no han definido su situación militar u otros que no son aptos para 
prestar el servicio.
Además de la edad de joven, se tendrá en cuenta el nivel del sistema de beneficio de la 
persona. Para todos los hombres mayores de 18 años la libreta tendrá un costo de S/. 
350, pero para aquellos que tengan nivel 1 se les hará un descuento del 40%; para los de 
nivel 2, el descuento será del 30%; para nivel 3 del 15%; y para los demás estratos o 
niveles no habrá descuento. 
Para los jóvenes con los 18 años la libreta tiene un costo de S/. 200 y los jóvenes con 
nivel del sistema de beneficio 1, tendrán un descuento del 60%; para los de nivel 2,descuento del 40%; para los del 3, un descuento del 20% y para los demás estratos no 
habrá descuento. 
Realizar una aplicación que tome la edad y el nivel del sistema de beneficio de un hombre 
y nos muestre descuento que le hacen y su valor final a pagar.*/
import 'dart:io';

void main() {
  int edad;
  int nivel;
  double costo, descuento, totalPagar;

  stdout.write('Ingrese la edad del hombre: ');
  edad = int.parse(stdin.readLineSync()!);

  stdout.write(
      'Ingrese el nivel del sistema de beneficio (1, 2, 3, o cualquier otro): ');
  nivel = int.parse(stdin.readLineSync()!);

  if (edad > 18) {
    costo = 350.0;
    switch (nivel) {
      case 1:
        descuento = 0.40;
        break;
      case 2:
        descuento = 0.30;
        break;
      case 3:
        descuento = 0.15;
        break;
      default:
        descuento = 0.0;
    }
  } else if (edad == 18) {
    costo = 200.0;
    switch (nivel) {
      case 1:
        descuento = 0.60;
        break;
      case 2:
        descuento = 0.40;
        break;
      case 3:
        descuento = 0.20;
        break;
      default:
        descuento = 0.0;
    }
  } else {
    stdout.write('La edad debe ser 18 o mayor para comprar la libreta.\n');
    return;
  }

  double montoDescuento = costo * descuento;
  totalPagar = costo - montoDescuento;

  stdout.write('------Reporte......\n');
  stdout
      .write('Costo original de la libreta: S/. ${costo.toStringAsFixed(2)}\n');
  stdout
      .write('Descuento aplicado: S/. ${montoDescuento.toStringAsFixed(2)}\n');
  stdout.write('Total a pagar: S/. ${totalPagar.toStringAsFixed(2)}\n');
}
