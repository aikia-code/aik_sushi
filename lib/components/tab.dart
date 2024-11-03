import 'package:flutter/material.dart';

class TabComponent extends StatelessWidget {
  final String iconPath;

  const TabComponent({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          iconPath,
          color: Colors.black,
        ),
      ),
    );
  }
}
