import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category_provider.dart';
import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);

    // return Container(
    //   margin: EdgeInsets.only(top: 12),
    //   child:
    //   SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Row(
    //       mainAxisSize: MainAxisSize.max,
    //       children: categoryProvider.categories
    //           .map((categoryItem) => CategoryCard(
    //                 categoryItem: categoryItem,
    //               ))
    //           .toList(),
    //     ),
    //   ),
    // );
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 12),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categoryProvider.categories
            .map((categoryItem) => CategoryCard(
                  categoryItem: categoryItem,
                ))
            .toList(),
      ),
    );
  }
}
