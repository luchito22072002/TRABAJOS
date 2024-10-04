/*Ejercicio 7: Matriz de espiral
Crea un programa que imprima una matriz cuadrada de tamaño n x n en forma de espiral. 
Utiliza bucles anidados para recorrer las posiciones de la matriz en el orden adecuado.*/
import 'dart:io';

void main() {
  print('Ingrese el tamaño de la matriz (N):');
  int n = int.parse(stdin.readLineSync()!);
  
  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));
  
  int valor = 1;
  int inicioFila = 0, finFila = n - 1;
  int inicioColumna = 0, finColumna = n - 1;
  
  while (inicioFila <= finFila && inicioColumna <= finColumna) {
    for (int i = inicioColumna; i <= finColumna; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;
    
    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finColumna] = valor++;
    }
    finColumna--;
    
    if (inicioFila <= finFila) {
      for (int i = finColumna; i >= inicioColumna; i--) {
        matriz[finFila][i] = valor++;
      }
      finFila--;
    }
    
    if (inicioColumna <= finColumna) {
      for (int i = finFila; i >= inicioFila; i--) {
        matriz[i][inicioColumna] = valor++;
      }
      inicioColumna++;
    }
  }
  
  print('Matriz en espiral:');
  for (var fila in matriz) {
    print(fila);
  }
}
