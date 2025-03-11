import 'package:flutter/material.dart';
import 'package:netflix/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),   // qual a tela que irá iniciar meu app
    );
  }
}
