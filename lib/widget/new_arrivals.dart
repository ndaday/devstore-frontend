import 'package:devstore/theme.dart';
import 'package:devstore/widget/product_tile.dart';
import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14),
          Text("New Arrivals",
              style: titleTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              )),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      ),
    );
  }
}
