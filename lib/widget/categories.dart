import 'package:devstore/providers/category_provider.dart';
import 'package:devstore/theme.dart';
import 'package:devstore/widget/category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CategoryProvider categoryProvider = Provider.of<CategoryProvider>(context);

    return Container(
      margin: EdgeInsets.only(top: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: categoryProvider.categories
              .map((categoryItem) => CategoryCard(
                    categoryItem: categoryItem,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
