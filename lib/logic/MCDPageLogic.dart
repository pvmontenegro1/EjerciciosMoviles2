import 'dart:math';

class CalculatorController {
  // Método para calcular el valor de pi dado un número
  String calculatePi(double input) {
    try {
      double pi = acos(input); // Esto es igual a pi
      return 'El valor de pi con el input $input es: $pi';
    } catch (e) {
      return 'Error al calcular pi. Ingresa un valor válido.';
    }
  }

  // Método para calcular el valor de e dado un número
  String calculateE(double input) {
    try {
      double e = exp(input);  // Esto es igual a e
      return 'El valor de e con el input $input es: $e';
    } catch (e) {
      return 'Error al calcular e. Ingresa un valor válido.';
    }
  }
}
