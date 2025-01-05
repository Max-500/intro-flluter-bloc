import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_flutter_bloc/config/router/app_router.dart';
import 'package:intro_flutter_bloc/config/theme/app_theme.dart';
import 'package:intro_flutter_bloc/presentation/blocs/counter_bloc/counter_bloc.dart';
import 'package:intro_flutter_bloc/presentation/blocs/counter_cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => CounterBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.getTheme,
        initialRoute: AppRouter.initialRoute,
        routes: AppRouter.routes,
      ),
    );
  }
}