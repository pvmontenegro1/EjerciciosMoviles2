import 'package:flutter/material.dart';
import '../logic/AsciiPageLogic.dart';

class AsciiPage extends StatefulWidget {
  const AsciiPage({super.key});

  @override
  State<AsciiPage> createState() => _AsciiPageState();
}

class _AsciiPageState extends State<AsciiPage> {
  @override
  Widget build(BuildContext context) {
    // Generamos la tabla de caracteres ASCII filtrados
    List<Map<String, String>> asciiTable = generateFilteredAsciiTable();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de Caracteres ASCII'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Tabla de Caracteres ASCII ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: asciiTable.length,
                itemBuilder: (context, index) {
                  final entry = asciiTable[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          entry['decimal']!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        'Carácter: ${entry['character']}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Código decimal: ${entry['decimal']}'),
                    ),
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
