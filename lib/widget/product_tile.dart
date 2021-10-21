import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/shoes_1.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hiking'),
                Text(
                  'COURT VISION 2.0',
                  style: titleTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                Text('\$68', style: priceTextStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
