import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: primaryColor,
      child: Icon(
        Icons.shopping_cart_outlined,
        color: Colors.white,
      ),
    );
  }
}
