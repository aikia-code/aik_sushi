import 'package:aik_sushi/components/food_tile.dart';
import 'package:flutter/material.dart';

class TabViewComponent extends StatelessWidget {
  final List ofFood;

  const TabViewComponent({super.key, required this.ofFood});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: ofFood.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return FoodTileComponent(
            foodFlavor: ofFood[index][0],
            foodPrice: ofFood[index][1],
            foodColor: ofFood[index][2],
            foodImagePath: ofFood[index][3],
          );
        });
  }
}
