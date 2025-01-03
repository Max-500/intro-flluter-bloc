import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_flutter_bloc/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const _CounterCubitView()
    );
  }
}

class _CounterCubitView extends StatelessWidget {
  const _CounterCubitView();

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cubit Counter Screen'),
        actions: [
          IconButton(onPressed: () => context.read<CounterCubit>().reset(), icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            print('el estado cambio');
            return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter Value: ${counterState.counter}'),
              Text('Transaction\'s Number: ${counterState.transactionCount}')
            ],
          );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+1'),
            onPressed: () => context.read<CounterCubit>().increaseBy(1)
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3',
            child: const Text('-1'),
            onPressed: () => context.read<CounterCubit>().deductBy(1)
          )
        ],
      ),
    );
  }
}