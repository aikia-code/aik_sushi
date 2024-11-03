import 'package:aik_sushi/components/food_tile.dart';
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
    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: ofBurger.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return FoodTileComponent(
            foodFlavor: ofBurger[index][0],
            foodPrice: ofBurger[index][1],
            foodColor: ofBurger[index][2],
            foodImagePath: ofBurger[index][3],
          );
        });
  }
}
