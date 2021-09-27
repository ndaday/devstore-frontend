import 'package:devstore/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final categories = List<String>.generate(7, (i) => 'Category $i');
  CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 30,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.only(right: 14),
              padding: EdgeInsets.symmetric(horizontal: 6),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(categories[index],
                  style: titleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  )));
        },
      ),
    );
  }
}
