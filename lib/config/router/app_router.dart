import 'package:flutter/material.dart';
import '../../presentation/screens/screens.dart';

class AppRouter {

  static const String initialRoute = '/';

  static Map<String, Widget Function(BuildContext context)> routes = {
    '/' : (BuildContext context) => const HomeScreen(),
    '/cubits': (BuildContext context) => const CubitCounterScreen(),
    '/blocs': (BuildContext context) => const BlocCounterScreen()
  };

}