import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel productTile;
  const ProductTile({Key? key, required this.productTile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              productTile.galleries![0].url!,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                print(error);
                return Icon(
                  Icons.broken_image,
                  size: 48,
                );
              },
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productTile.category!.name!),
                Text(
                  productTile.name!,
                  style: titleTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                Text('\$${productTile.price!}', style: priceTextStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
