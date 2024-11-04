import 'package:aik_sushi/components/tab_view.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  BurgerTab({super.key});
  final List ofBurger = [
    [
      "Stuffed Burger",
      "55",
      Colors.red,
      "lib/images/burger/burger.png",
    ],
    [
      "Classic Cheeseburger",
      "43",
      Colors.yellow,
      "lib/images/burger/cheese_burger.png",
    ],
    [
      "Level 1 Burger",
      "22",
      Colors.amber,
      "lib/images/burger/level_1_burger.png",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return TabViewComponent(ofFood: ofBurger);
  }
}
