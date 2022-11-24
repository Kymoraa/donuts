import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  final double borderRadius = 12.0;

  const DonutTile({
    Key? key,
    required this.donutFlavor,
    required this.donutPrice,
    this.donutColor,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      color: donutColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            // donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              child: Image.asset(imageName),
            ),
            // donut flavor
            Text(
              donutFlavor,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Dunkin\'s',
              style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            // love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  // add button
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
