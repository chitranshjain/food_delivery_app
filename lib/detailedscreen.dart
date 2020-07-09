import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddeliveryapp/contants.dart';

class DetailedScreen extends StatefulWidget {
  String image, title, desc, ingredient;
  int price;
  DetailedScreen(
      {this.desc, this.price, this.title, this.image, this.ingredient});

  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/backward.svg',
                      height: 11,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/menu.svg',
                    height: 11,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.all(6.0),
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    // ignore: deprecated_member_use
                    children: [
                      TextSpan(
                        text: '${widget.title}\n',
                        style: Theme.of(context).textTheme.title,
                      ),
                      TextSpan(
                        text: 'With ${widget.ingredient}',
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: deprecated_member_use
                Text(
                  '\$${widget.price}',
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${widget.desc}',
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Add to Bag',
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          height: 11,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(16),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kPrimaryColor),
                          child: SvgPicture.asset('assets/icons/bag.svg'),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                              child: Text(
                                '0',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(
                                        color: kPrimaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
