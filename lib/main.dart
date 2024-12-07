import 'package:appcompleto/pages/AsciiPage.dart';
import 'package:appcompleto/pages/FactorialPage.dart';
import 'package:appcompleto/pages/FactorizationPage.dart';
import 'package:appcompleto/pages/HomePage.dart';
import 'package:appcompleto/pages/MCDPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejerccios',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
       routes: {
        '/ascii': (context) => const AsciiPage(),
        '/factorial': (context) => const FactorialPage(),
        '/mcm': (context) => const McmPage(),
        '/factorization': (context) => FactorizationPage(),
      },
    );
  }
}