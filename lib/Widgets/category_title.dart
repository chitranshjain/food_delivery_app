import 'package:flutter/material.dart';

import '../contants.dart';

class CategoryTitle extends StatefulWidget {
  final String title;
  final bool active;

  const CategoryTitle({Key key, this.title, this.active = false})
      : super(key: key);

  @override
  _CategoryTitleState createState() => _CategoryTitleState();
}

class _CategoryTitleState extends State<CategoryTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        widget.title,
        style: Theme.of(context).textTheme.button.copyWith(
              color:
                  widget.active ? kPrimaryColor : kTextColor.withOpacity(0.4),
            ),
      ),
    );
  }
}
