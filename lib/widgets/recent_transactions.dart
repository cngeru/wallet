import 'package:card_manager/size_config.dart';
import 'package:flutter/material.dart';

class RecentTransacts extends StatelessWidget {
  final String transactTitle;
  final String time;
  final String amt;
  final Color priceColor;
  final IconData iconType;
  const RecentTransacts({
    Key key,
    this.transactTitle,
    this.time,
    this.priceColor,
    this.iconType,
    this.amt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: getProportionateScreenWidth(50),
              height: getProportionateScreenHeight(50),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Icon(
                iconType,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$transactTitle",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(16)),
              ),
              Text(
                "$time",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Text(
            "$amt",
            style: TextStyle(
                color: priceColor,
                fontSize: getProportionateScreenHeight(18),
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
