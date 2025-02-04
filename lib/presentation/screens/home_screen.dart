import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Cubits'),
              subtitle: const Text('Gestor de Estado Simple'),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: () => Navigator.pushNamed(context, '/cubits'),
            ),
            ListTile(
              title: const Text('Bloc'),
              subtitle: const Text('Gestor de Estado Compuesto'),
              trailing: const Icon(Icons.arrow_forward_rounded),
              onTap: () => Navigator.pushNamed(context, '/blocs'),
            ),
            const Divider(),
            ListTile(
              title: const Text('New User'),
              subtitle: const Text('Manejo de Formularios'),
              trailing: const Icon(Icons.add_circle_outline_rounded),
              onTap: () => Navigator.pushNamed(context, '/new-user'),
            )
          ],
        ),
      ),
    );
  }
}