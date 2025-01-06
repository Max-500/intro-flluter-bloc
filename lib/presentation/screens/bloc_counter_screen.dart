import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_flutter_bloc/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) => Text('Bloc Counter Screen #${state.transactionCount}')),
        actions: [
          IconButton(onPressed: () => context.read<CounterBloc>().add(const CounterReset()), icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: context.select((CounterBloc counterBloc) => Text('Counter Value: ${counterBloc.state.counter}')),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+1'),
            onPressed: () => context.read<CounterBloc>().add(const CounterIncreased(1))
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            child: const Text('-1'),
            onPressed: () => context.read<CounterBloc>().add(const CounterDecreased(1))
          )
        ],
      ),
    );
  }
}