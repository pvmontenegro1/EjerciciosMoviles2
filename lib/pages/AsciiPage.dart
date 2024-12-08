import '../logic/AsciiPageLogic.dart';
import 'package:flutter/material.dart';

class AsciiPage extends StatelessWidget {
  final AsciiPageLogic logic = AsciiPageLogic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabla de caracteres ASCII"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _generarWidgetTablaAscii(),
      ),
    );
  }

  Widget _generarWidgetTablaAscii() {
    String tablaAscii = logic.generarTablaAscii();
    List<String> lines = tablaAscii.split('\n');

    return ListView.builder(
      itemCount: lines.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Card(
            elevation: 2.0,
            child: ListTile(
              title: Text(
                lines[index],
                style: TextStyle(fontFamily: 'Courier', fontSize: 16),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            ),
          ),
        );
      },
    );
  }
}
