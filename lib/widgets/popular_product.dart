import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';
import 'product_card.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14),
          Text("Popular Products",
              style: titleTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              )),
          SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: productProvider.products
                  .map(
                    (product) => ProductCard(
                      productItem: product,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
