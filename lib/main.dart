import 'package:demo/features/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'features/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      routes: {
        "home": (context) {
          return const HomeScreen();
        },
        "login": (context) {
          return const LoginScreen();
        },
      },
    );
  }
}
