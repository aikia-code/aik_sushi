import 'package:flutter/material.dart';

class TabHeaderComponent extends StatefulWidget {
  final String iconPath;

  const TabHeaderComponent({
    super.key,
    required this.iconPath,
  });

  @override
  State<TabHeaderComponent> createState() => _TabHeaderComponentState();
}

class _TabHeaderComponentState extends State<TabHeaderComponent> {
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
          widget.iconPath,
          color: Colors.black,
        ),
      ),
    );
  }
}
