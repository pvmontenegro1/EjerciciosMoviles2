import 'package:flutter/material.dart';
import '/logic/MCDPageLogic.dart'; 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _piController = TextEditingController();
  final TextEditingController _eController = TextEditingController();
  String _resultado = "";
  String _resultado2 = "";

  // Instanciamos el controlador
  final CalculatorController _calculatorController = CalculatorController();

  // Función para calcular valores de pi y e
  void _calcularValores() {
    try {
      double piInput = double.parse(_piController.text);  // Lee el input para pi
      double eInput = double.parse(_eController.text);  // Lee el input para e

      setState(() {
        // Calculamos los valores usando el controller
        _resultado = _calculatorController.calculatePi(piInput);
        _resultado2 = _calculatorController.calculateE(eInput);
      });
    } catch (e) {
      setState(() {
        _resultado = 'Error en la entrada de pi. Asegúrate de ingresar un valor numérico.';
        _resultado2 = 'Error en la entrada de e. Asegúrate de ingresar un valor numérico.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 4: Paso de Parámetros'),
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
                // TextField para ingresar un valor para calcular pi
                TextField(
                  controller: _piController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Ingresa un valor para calcular pi (por ejemplo, -1)',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                // TextField para ingresar un valor para calcular e
                TextField(
                  controller: _eController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Ingresa un valor para calcular e (por ejemplo, 1)',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                // Botón para ejecutar el cálculo
                ElevatedButton(
                  onPressed: _calcularValores,
                  child: Text('Calcular Pi y e'),
                ),
                SizedBox(height: 20),

                // Mostrar los resultados
                Text(
                  _resultado,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  _resultado2,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
