import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';
import 'detail_page.dart';

class DonutPage extends StatelessWidget {
  DonutPage({Key? key}) : super(key: key);

  List donuts = [
    // [donutFlavor, donutPrice, donutColor, donutImage]
    ['Ice Cream', '36', Colors.blue, 'assets/images/icecream_donut.png'],
    ['Strawberry', '45', Colors.red, 'assets/images/strawberry_donut.png'],
    ['Grape', '84', Colors.purple, 'assets/images/grape_donut.png'],
    ['Chocolate', '95', Colors.brown, 'assets/images/chocolate_donut.png'],
  ];

  List nutritionalValue = [
    // sugar, salt, fat, energy
    [['8 Gram', '2%'], ['8 Gram', '.3%'], ['8 Gram', '12%'], ['140 Kcal', '40%']],
    [['9 Gram', '3%'], ['9 Gram', '.4%'], ['9 Gram', '11%'], ['110 Kcal', '43%']],
    [['6 Gram', '2%'], ['6 Gram', '.3%'], ['6 Gram', '11%'], ['150 Kcal', '32%']],
    [['10 Gram', '4%'], ['10 Gram', '.5%'], ['10 Gram', '13%'], ['170 Kcal', '61%']],
  ];

  List donutDetails = [
    "Ice cream donuts come decorated with rainbow sprinkles and coated with either milk or white chocolate. "
        "Inside, you’ll find creamy vanilla ice cream. What more could you want on a warm summer’s day.",
    "These incredibly delicious, super easy baked strawberry donuts are packed with fresh strawberries, "
        "dipped in strawberry glaze, and so tender and moist they almost melt in your mouth. The aroma of fresh "
        "strawberries makes everyone smile.",
    "The grape donut maintains the most unique flavors among donuts. They are as light-as-air and filled with "
        "a nice, tasty grape jelly. They are showered with powdered sugar for the coveted 'oohs and aahs'.",
    "Enjoy these moist and fluffy baked chocolate donuts full of chocolate flavor. Covered in a thick, white or dark "
        "chocolate glaze, these are perfect for any chocoholic.",
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
        return GestureDetector(
          onTap: (){
            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (_) => DetailPage(
                  donutFlavor: donuts[index][0],
                  donutPrice: donuts[index][1],
                  donutColor: donuts[index][2],
                  imageName: donuts[index][3],
                  sugar: nutritionalValue[index][0],
                  salt: nutritionalValue[index][1],
                  fat: nutritionalValue[index][2],
                  energy: nutritionalValue[index][3],
                  donutDetails: donutDetails[index],
                ),
              ),
            );
          },
          child: DonutTile(
            donutFlavor: donuts[index][0],
            donutPrice: donuts[index][1],
            donutColor: donuts[index][2],
            imageName: donuts[index][3],
          ),
        );
      },
    );
  }
}
