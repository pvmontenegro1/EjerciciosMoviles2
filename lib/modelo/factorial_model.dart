class FactorialModel {
  // Método para calcular el factorial
  double calcularFactorial(int numero) {
    double factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    return factorial;
  }
}
