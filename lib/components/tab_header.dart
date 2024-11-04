import 'package:flutter/material.dart';

class TabHeaderComponent extends StatelessWidget {
  final String iconPath;

  const TabHeaderComponent({super.key, required this.iconPath});

  @override

  /// Builds a [Tab] widget that displays a given icon with a blue-grey
  /// background and a black foreground, with a circular border radius of 16.
  ///
  /// The icon is loaded from the given [iconPath], and the whole widget has a
  /// fixed height of 80. Margins and padding are applied with a value of 8 and
  /// 16, respectively.
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
