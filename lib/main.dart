import 'package:flutter/material.dart';
import 'package:intro_flutter_bloc/config/router/app_router.dart';
import 'package:intro_flutter_bloc/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.getTheme,
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.routes,
    );
  }
}