import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 215,
      padding: paddingLeft.copyWith(right: 14, bottom: 14),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: white70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/shoes_1.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Text('Hiking'),
          Text(
            'COURT VISION 2.0',
            style: TextStyle(fontWeight: semiBold),
            overflow: TextOverflow.ellipsis,
          ),
          Text('\$68', style: priceTextStyle),
        ],
      ),
    );
  }
}
