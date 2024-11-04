import 'package:aik_sushi/components/tab_view.dart';
import 'package:flutter/material.dart';

class SushiTab extends StatelessWidget {
  SushiTab({super.key});

  final List ofSushi = [
    [
      "Sushi Maki",
      "25",
      Colors.grey,
      "lib/images/sushi/maki.png",
    ],
    [
      "Nigiri Sushi",
      "23",
      Colors.orange,
      "lib/images/sushi/nigiri.png",
    ],
    [
      "3-piece Sushi",
      "52",
      Colors.deepOrange,
      "lib/images/sushi/sushi_1.png",
    ],
    [
      "3-piece Sushi Rolls",
      "40",
      Colors.lightGreen,
      "lib/images/sushi/sushi.png",
    ],
    [
      "Uramaki Classic",
      "24",
      Colors.teal,
      "lib/images/sushi/uramaki_classic.png",
    ],
    [
      "Classic Nigiri",
      "30",
      Colors.green,
      "lib/images/sushi/nigiri_classic.png",
    ],
    [
      "Classic Maki",
      "21",
      Colors.cyan,
      "lib/images/sushi/maki_classic.png",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return TabViewComponent(ofFood: ofSushi);
  }
}
