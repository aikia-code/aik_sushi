import 'package:aik_sushi/components/food_tile.dart';
import 'package:aik_sushi/components/tab_view.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  final List ofDonuts = [
    [
      "Strawberry Flavored",
      "52",
      Colors.red,
      "lib/images/donut/donut_strawberry.png",
    ],
    [
      "Sweet Yogurt Flavored",
      "32",
      Colors.pink,
      "lib/images/donut/donut_pink.png",
    ],
    [
      "Chocolate Flavored",
      "72",
      Colors.brown,
      "lib/images/donut/donut_choco.png",
    ],
    [
      "Caramel Flavored",
      "62",
      Colors.orange,
      "lib/images/donut/donut_caramel.png",
    ],
    [
      "Tumeric Glaze",
      "46",
      Colors.amber,
      "lib/images/donut/donut_tumeric.png",
    ],
    [
      "Extra Chocolate",
      "46",
      Colors.lime,
      "lib/images/donut/donut_extra_choco.png",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return TabViewComponent(ofFood: ofDonuts);
  }
}
