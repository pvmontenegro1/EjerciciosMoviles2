

class CalculoMCDControl {
  // Método para calcular el MCD de dos números
  String calculateMCD(int input1, int input2) {
    int x = input1.abs();
    int y = input2.abs();

    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }

    return 'El MCD es: $x';
  }
}
