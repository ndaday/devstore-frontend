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
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        child: Text(nameButton),
        onPressed: onPressed,
      ),
    );
  }
}
