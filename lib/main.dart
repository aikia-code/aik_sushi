import 'package:aik_sushi/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AikSushi());
}

class AikSushi extends StatefulWidget {
  const AikSushi({super.key});

  @override
  State<AikSushi> createState() => _AikSushiState();
}

class _AikSushiState extends State<AikSushi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
