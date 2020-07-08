import 'package:flutter/material.dart';

import '../contants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String image;
  final String ingredient;
  final int price;
  final String desc;
  const FoodCard({
    Key key,
    this.title,
    this.image,
    this.ingredient,
    this.price,
    this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 400,
      width: 270,
      child: Stack(
        children: <Widget>[
          //Big light background
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 380,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: kPrimaryColor.withOpacity(0.06),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15)),
            ),
          ),
          Positioned(
            left: -50,
            top: 0,
            child: Container(
              height: 184,
              width: 276,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: 80,
            child: Text(
              '\$$price',
              // ignore: deprecated_member_use
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .copyWith(color: kPrimaryColor),
            ),
          ),
          Positioned(
            top: 201,
            left: 40,
            child: Container(
              width: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // ignore: deprecated_member_use
                  Text(
                    title,
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'With $ingredient',
                    style: TextStyle(color: kTextColor.withOpacity(0.4)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    desc,
                    maxLines: 4,
                    style: TextStyle(
                      color: kTextColor.withOpacity(0.65),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
