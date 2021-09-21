import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: secondaryColor,
        padding: EdgeInsets.all(12),
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: bgColor, width: 10)),
          child: Text(
            'DEVSTORE',
            style: titleTextStyle.copyWith(
              letterSpacing: 10,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
