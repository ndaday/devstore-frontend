import 'package:devstore/theme.dart';
import 'package:devstore/widget/categories.dart';
import 'package:devstore/widget/header.dart';
import 'package:devstore/widget/popular_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, right: 24, left: 24),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderWidget(titleText: 'Hello, User', subtitleText: '@username'),
              Icon(
                Icons.person_pin,
                size: 60,
                color: secondaryColor,
              ),
            ],
          ),
          CategoriesList(),
          PopularProduct(),
        ],
      ),
    );
  }
}
