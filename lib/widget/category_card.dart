import 'package:devstore/models/category_model.dart';
import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryItem;

  const CategoryCard({
    Key? key,
    required this.categoryItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          categoryItem.name!,
          style: TextStyle(color: primaryTextColor, fontWeight: semiBold),
        ),
      ),
    );
  }
}
