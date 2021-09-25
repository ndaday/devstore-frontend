import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      child: BottomAppBar(
        color: secondaryColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 10, bottom: 5),
              child: IconButton(
                icon: Icon(Icons.home_outlined, color: white),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50, top: 10, bottom: 5),
              child: IconButton(
                icon: Icon(Icons.chat_outlined, color: white),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, top: 10, bottom: 5),
              child: IconButton(
                icon: Icon(Icons.favorite_outline, color: white),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15, top: 10, bottom: 5),
              child: IconButton(
                icon: Icon(Icons.person_outline, color: white),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
