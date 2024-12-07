import 'package:appcompleto/logic/FactorizationPageLogic.dart';
import 'package:flutter/material.dart';

class FactorizationPage extends StatefulWidget {
  @override
  _FactorizationPageState createState() => _FactorizationPageState();
}

class _FactorizationPageState extends State<FactorizationPage> {
  final FactorizationPageLogic _logic = FactorizationPageLogic();
  final TextEditingController _controller = TextEditingController();

  List<String> _result = [];

  void _factorizeNumber() {
    // Obtiene el número ingresado por el usuario
    int? number = int.tryParse(_controller.text);

    if (number == null || number <= 0) {
      // Muestra un mensaje de error si el número es inválido
      setState(() {
        _result = ["Por favor ingrese un número válido mayor a 0."];
      });
      return;
    }

    // Calcula la factorización y actualiza el estado
    setState(() {
      _result = _logic.facorizar(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorización de Números'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingrese un número',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _factorizeNumber,
              child: Text('Factorizar'),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _result.length,
                itemBuilder: (context, index) {
                  return Text(
                    _result[index],
                    style: TextStyle(fontSize: 18),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
