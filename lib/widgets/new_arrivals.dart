import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';
import 'product_tile.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

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
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: productProvider.products
                  .map(
                    (product) => ProductTile(
                      productTile: product,
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
