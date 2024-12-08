//import 'package:appcompleto/pages/AsciiPage.dart';
//import 'package:appcompleto/pages/FactorialPage.dart';
import 'package:appcompleto/pages/AsciiPage.dart';
import 'package:appcompleto/pages/FactorialPage.dart';
import 'package:appcompleto/pages/HomePage.dart';
import 'package:appcompleto/pages/NumerosPrimosPage.dart';

import './pages/FactorizationPage.dart';
//import 'package:appcompleto/pages/HomePage.dart';
import './pages/MCDPage.dart';
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
        '/ascii': (context) =>  AsciiPage(),
        '/factorial': (context) => FactorialPage(),
        '/mcm': (context) =>  MCDPage(),
        '/factorization': (context) => FactorizationPage(),
        '/primos':(context) => NumerosPrimosPage() 
      },
    );
  }
}