import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

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
      width: 120,
      margin: EdgeInsets.only(right: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: white, backgroundColor: primaryColor,
          textStyle: TextStyle(
              inherit: true, color: primaryTextColor, fontWeight: semiBold),
          shape: StadiumBorder(),
        ).copyWith(
            backgroundColor: WidgetStateProperty.resolveWith((states) =>
                states.any((element) => element == WidgetState.selected)
                    ? primaryColor
                    : Colors.grey)),
        onPressed: () {},
        child: Text(
          categoryItem.name!,
        ),
      ),
    );
  }
}
