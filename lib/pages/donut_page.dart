import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class DonutPage extends StatelessWidget {
  DonutPage({Key? key}) : super(key: key);

  List donuts = [
    // [donutFlavor, donutPrice, donutColor, donutImage]
    ['Ice Cream', '36', Colors.blue, 'assets/images/icecream_donut.png'],
    ['Strawberry', '45', Colors.red, 'assets/images/strawberry_donut.png'],
    ['Grape', '84', Colors.purple, 'assets/images/grape_donut.png'],
    ['Chocolate', '95', Colors.brown, 'assets/images/chocolate_donut.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donuts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donuts[index][0],
          donutPrice: donuts[index][1],
          donutColor: donuts[index][2],
          imageName: donuts[index][3],
        );
      },
    );
  }
}
