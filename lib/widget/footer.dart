import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  final String footerText;
  final String buttonText;
  final GestureTapCallback onPressed;

  const FooterWidget({
    Key? key,
    required this.footerText,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(footerText, style: subTextStyle),
          TextButton(
            onPressed: onPressed,
            child: Text(buttonText),
          )
        ],
      ),
    );
  }
}
