import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275,
      width: 215,
      margin: EdgeInsets.only(right: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryColor,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/shoes_1.png',
            width: 215,
            height: 150,
          ),
        ],
      ),
    );
  }
}
