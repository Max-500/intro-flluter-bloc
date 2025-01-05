import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_flutter_bloc/presentation/blocs/counter_cubit/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _CounterCubitView();
  }
}

class _CounterCubitView extends StatelessWidget {
  const _CounterCubitView();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: context.select((CounterCubit value) => Text('Cubit Counter Screen #${value.state.transactionCount}'),),
        actions: [
          IconButton(onPressed: () => context.read<CounterCubit>().reset(), icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter Value: ${state.counter}'),
              Text('Transaction\'s Number: ${state.transactionCount}')
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