import 'package:devstore/providers/product_provider.dart';
import 'package:devstore/theme.dart';
import 'package:devstore/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    return Container(
      margin: EdgeInsets.only(top: 14),
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
