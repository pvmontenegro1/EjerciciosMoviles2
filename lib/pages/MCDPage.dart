import 'package:flutter/material.dart';
import '/logic/MCDPageLogic.dart'; // Importamos la lógica del controlador

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controladores de texto para los TextFields
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  String _resultado = "";

  // Instanciamos el controlador
  final CalculoMCDControl _calculatorController = CalculoMCDControl();

  // Función para calcular el MCD
  void _calculateMCD() {
    setState(() {
      try {
        // Convertimos los valores ingresados a enteros
        int num1 = int.parse(_num1Controller.text);
        int num2 = int.parse(_num2Controller.text);

        // Calculamos el MCD usando el controlador
        _resultado = _calculatorController.calculateMCD(num1, num2);
      } catch (e) {
        _resultado = "Por favor, ingresa números válidos.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 3: MCD'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.purple.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TextField para ingresar el primer número
                TextField(
                  controller: _num1Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Ingresa el primer número',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),

                // TextField para ingresar el segundo número
                TextField(
                  controller: _num2Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Ingresa el segundo número',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),

                // Botón para calcular el MCD
                ElevatedButton(
                  onPressed: _calculateMCD,
                  child: Text('Calcular MCD'),
                ),
                SizedBox(height: 20),

                // Mostrar el resultado
                Text(
                  _resultado,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
