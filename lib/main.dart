import 'package:aik_sushi/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AikSushi());
}

class AikSushi extends StatelessWidget {
  const AikSushi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
