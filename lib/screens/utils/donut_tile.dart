import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutprice;
  final String donutimage;
  final donutcolor;
  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutprice,
      required this.donutimage,
      this.donutcolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutcolor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '₹' + donutprice,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: donutcolor[800],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: donutcolor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36.0,
              ),
              child: Image.asset(donutimage),
            ),
            Text(
              donutFlavor,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: donutcolor[400],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Donkins",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.pink[400],
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.grey[600],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
