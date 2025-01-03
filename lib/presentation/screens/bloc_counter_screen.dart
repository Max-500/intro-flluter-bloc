import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bloc Counter Screen'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Text('Counter Value: '),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+1'),
            onPressed: () {

            }
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            child: const Text('-1'),
            onPressed: () {

            }
          )
        ],
      ),
    );
  }
}