import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddeliveryapp/contants.dart';

import 'Widgets/category_title.dart';
import 'Widgets/food_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool itactive = false;
  bool assactive = false;
  bool contactive = false;
  bool indactive = false;
  bool chiactive = false;
  bool allactive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
          child: SvgPicture.asset(
            'assets/icons/plus.svg',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 350, top: 50),
            child: Align(
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Simple way to find \nTasty food',
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      allactive = true;
                      itactive = false;
                      assactive = false;
                      contactive = false;
                      indactive = false;
                      chiactive = false;
                    });
                  },
                  child: CategoryTitle(
                    title: 'All',
                    active: allactive,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      allactive = false;
                      itactive = true;
                      assactive = false;
                      contactive = false;
                      indactive = false;
                      chiactive = false;
                    });
                  },
                  child: CategoryTitle(
                    title: 'Italian',
                    active: itactive,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      allactive = false;
                      itactive = false;
                      assactive = true;
                      contactive = false;
                      indactive = false;
                      chiactive = false;
                    });
                  },
                  child: CategoryTitle(
                    title: 'Asian',
                    active: assactive,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      allactive = false;
                      itactive = false;
                      assactive = false;
                      contactive = true;
                      indactive = false;
                      chiactive = false;
                    });
                  },
                  child: CategoryTitle(
                    title: 'Continental',
                    active: contactive,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      allactive = false;
                      itactive = false;
                      assactive = false;
                      contactive = false;
                      indactive = true;
                      chiactive = false;
                    });
                  },
                  child: CategoryTitle(
                    title: 'Indian',
                    active: indactive,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      allactive = false;
                      itactive = false;
                      assactive = false;
                      contactive = false;
                      indactive = false;
                      chiactive = true;
                    });
                  },
                  child: CategoryTitle(
                    title: 'Chinese',
                    active: chiactive,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  ingredient: 'Red Tomato',
                  price: 20,
                  desc:
                      'This is a dummy text. It will contain the description of the food which will be provided by the app owner or the chef.',
                  image: 'assets/images/image_1.png',
                ),
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  ingredient: 'Red Tomato',
                  price: 20,
                  desc:
                      'This is a dummy text. It will contain the description of the food which will be provided by the app owner or the chef.',
                  image: 'assets/images/image_2.png',
                ),
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  ingredient: 'Red Tomato',
                  price: 20,
                  desc:
                      'This is a dummy text. It will contain the description of the food which will be provided by the app owner or the chef.',
                  image: 'assets/images/image_1.png',
                ),
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  ingredient: 'Red Tomato',
                  price: 20,
                  desc:
                      'This is a dummy text. It will contain the description of the food which will be provided by the app owner or the chef.',
                  image: 'assets/images/image_2.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
