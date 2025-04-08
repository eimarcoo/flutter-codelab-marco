import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter em Ação')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Clique no botão abaixo!',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  // Função do botão
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          content: const Text('Você clicou no botão!'),
                        ),
                  );
                },
                child: const Text('Clique aqui!'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
