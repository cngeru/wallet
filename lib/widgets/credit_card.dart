import 'package:flutter/material.dart';

import '../size_config.dart';

class CreditCard extends StatelessWidget {
  final String bal;
  final Color cardColor;
  const CreditCard({
    Key key,
    this.bal,
    this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.7,
      height: SizeConfig.screenHeight * 0.22,
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  "\$585,850.00",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(16),
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              "**** **** **** 4567",
              style: TextStyle(fontSize: getProportionateScreenHeight(16)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("07/24"),
                Container(
                  child: Image.asset(
                    "assets/images/mc_symbol.png",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
