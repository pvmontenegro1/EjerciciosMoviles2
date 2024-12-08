import 'package:flutter/material.dart';

class FactorialView extends StatelessWidget {
  final TextEditingController numeroController = TextEditingController();
  final void Function(int numero) onCalcular;

  FactorialView({required this.onCalcular});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Calculadora de Factorial",
          style: TextStyle(fontFamily: 'RobotoMono', fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple.shade100, Colors.deepPurple.shade400],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Icono Matemático
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Icon(
                      Icons.calculate_outlined,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Texto de Bienvenida
              const Center(
                child: Text(
                  "¡Descubre el Factorial!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Descripción
              const Center(
                child: Text(
                  "Ingresa un número y descubre su factorial fácilmente con un diseño increíble.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Campo de entrada
              TextField(
                controller: numeroController,
                decoration: InputDecoration(
                  labelText: "Número",
                  labelStyle: TextStyle(color: Colors.purple.shade900),
                  hintText: "Ejemplo: 5",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Icon(Icons.numbers, color: Colors.deepPurple),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),

              // Botón de cálculo
              ElevatedButton.icon(
                onPressed: () {
                  final numero = int.tryParse(numeroController.text);
                  if (numero != null) {
                    onCalcular(numero);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Por favor, ingresa un número válido.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.calculate),
                label: const Text(
                  "Calcular Factorial",
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Tarjeta decorativa con un mensaje matemático
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade100,
                  ),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.functions,
                        color: Colors.deepPurple,
                        size: 50,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Recuerda: ¡El factorial de un número es el producto de todos los enteros positivos menores o iguales a él!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
