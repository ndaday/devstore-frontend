import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productItem;

  const ProductCard({
    Key? key,
    required this.productItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      padding: paddingLeft.copyWith(right: 14, bottom: 14),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: white70,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image.network(
          //   productItem.galleries![0].url!,
          //   width: 215,
          //   height: 150,
          //   fit: BoxFit.cover,
          //   errorBuilder: (context, error, stackTrace) {
          //     print(error);
          //     return Icon(
          //       Icons.broken_image,
          //       size: 48,
          //     );
          //   },
          // ),
          Flexible(
            child: CachedNetworkImage(
              width: 200,
              height: 140,
              fit: BoxFit.cover,
              imageUrl: productItem.galleries![0].image!,
              placeholder: (context, url) => new Icon(
                Icons.broken_image,
                size: 48,
              ),
              errorWidget: (context, url, error) => new Icon(
                Icons.broken_image,
                size: 48,
              ),
            ),
          ),
          Text(productItem.category!.name!),
          Text(
            productItem.name!,
            style: TextStyle(fontWeight: semiBold),
            overflow: TextOverflow.ellipsis,
          ),
          Text('\$${productItem.price!}', style: priceTextStyle),
        ],
      ),
    );
  }
}
