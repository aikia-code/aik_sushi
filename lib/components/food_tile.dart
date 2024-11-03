import 'package:flutter/material.dart';

class FoodTileComponent extends StatelessWidget {
  final String foodFlavor;
  final String foodPrice;
  final foodColor;
  final String foodImagePath;

  const FoodTileComponent({
    super.key,
    required this.foodFlavor,
    required this.foodPrice,
    required this.foodColor,
    required this.foodImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: foodColor[50],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            //price

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: foodColor[100],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '\$$foodPrice',
                    style: TextStyle(
                      color: foodColor[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                )
              ],
            ),

            //picture

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 8.0,
              ),
              child: Image.asset(
                foodImagePath,
              ),
            ),

            //flavor

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                foodFlavor,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "StikXL",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.normal,
                  fontSize: 12.0,
                ),
              ),
            ),

            //spacer
            Expanded(
              child: SizedBox(),
            ),

            //love icon button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red[400],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[900],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
