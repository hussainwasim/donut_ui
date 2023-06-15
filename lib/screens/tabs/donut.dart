import 'package:donut_ui/screens/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List DonutOnSale = [
    ['chaco', '150', Colors.brown, "assets/images/donut.png"],
    ['stawberry', '250', Colors.red, "assets/images/do.png"],
    ['Mango', '120', Colors.yellow, "assets/images/don.png"],
    ['watermellon', '150', Colors.pink, "assets/images/donu.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: DonutOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: DonutOnSale[index][0],
          donutprice: DonutOnSale[index][1],
          donutcolor: DonutOnSale[index][2],
          donutimage: DonutOnSale[index][3],
        );
      },
    );
  }
}
