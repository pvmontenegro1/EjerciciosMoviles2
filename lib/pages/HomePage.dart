import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/ascii'),
              child: const Text('ASCII'),
            ),
            const Text("")
            ,
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/factorial'),
              child: const Text('Número Factorial'),
            ),
            const Text("")
            ,
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/mcm'),
              child: const Text('MCM'),
            ),
            const Text(""),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/factorization'),
              child: const Text('Factorización'),
            ),
          ],
        ),
      ),
    );
  }
}