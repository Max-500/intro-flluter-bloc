import 'package:flutter/material.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
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