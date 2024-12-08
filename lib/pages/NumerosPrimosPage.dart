import 'package:appcompleto/logic/NumerosPrimosLogic.dart';
import 'package:flutter/material.dart';

class NumerosPrimosPage extends StatefulWidget {
  @override
  _NumerosPrimosPageState createState() => _NumerosPrimosPageState();
}

class _NumerosPrimosPageState extends State<NumerosPrimosPage> {
  List<String> numerosPrimos=[];

  @override
  void initState() {
    super.initState();
    final logic = NumerosPrimosLogic();
    numerosPrimos = logic.numPrimos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Números Primos'),
      ),
      body: numerosPrimos.isNotEmpty
          ? ListView.builder(
              itemCount: numerosPrimos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(numerosPrimos[index]),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}