import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String nameButton;
  final GestureTapCallback onPressed;

  const CustomButton({
    Key? key,
    required this.nameButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(primaryColor),
          padding: WidgetStateProperty.all(EdgeInsets.all(15)),
        ),
        child: Text(nameButton),
        onPressed: onPressed,
      ),
    );
  }
}
