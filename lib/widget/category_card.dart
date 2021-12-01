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
      width: 120,
      margin: EdgeInsets.only(right: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          onPrimary: white,
          textStyle: TextStyle(
              inherit: true, color: primaryTextColor, fontWeight: semiBold),
          shape: StadiumBorder(),
        ).copyWith(
            backgroundColor: MaterialStateProperty.resolveWith((states) =>
                states.any((element) => element == MaterialState.pressed)
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
