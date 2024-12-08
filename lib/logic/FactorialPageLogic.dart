import 'package:flutter/material.dart';
import '../pages/FactorialPage.dart';
import '../modelo/factorial_model.dart';

class FactorialController {
  final FactorialModel _modelo = FactorialModel();

  void calcularFactorial(BuildContext context, int numero) {
    double resultado = _modelo.calcularFactorial(numero);
    mostrarResultado(context, numero, resultado);
  }

  void mostrarResultado(BuildContext context, int numero, double resultado) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Resultado"),
        content: Text("El factorial de $numero es $resultado"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Aceptar"),
          ),
        ],
      ),
    );
  }
}
