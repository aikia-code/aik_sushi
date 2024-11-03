import 'package:aik_sushi/components/food_tile.dart';
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
    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: ofDonuts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return FoodTileComponent(
            foodFlavor: ofDonuts[index][0],
            foodPrice: ofDonuts[index][1],
            foodColor: ofDonuts[index][2],
            foodImagePath: ofDonuts[index][3],
          );
        });
  }
}
