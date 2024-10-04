/*Ejercicio 6: Número perfecto
Implementa un programa que encuentre y muestre todos los números perfectos entre 1 
y 10,000. Un número perfecto es aquel que es igual a la suma de sus divisores propios. 
Usa un bucle para iterar y otro para encontrar los divisores de cada número.*/
bool esNumeroPerfecto(int n) {
  int sumaDivisores = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) {
      sumaDivisores += i;
    }
  }
  return sumaDivisores == n;
}

void main() {
  print('Números perfectos entre 1 y 10,000:');
  for (int i = 1; i <= 10000; i++) {
    if (esNumeroPerfecto(i)) {
      print(i);
    }
  }
}
