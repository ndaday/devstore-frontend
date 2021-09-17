import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: secondaryColor,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(10),
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: primaryColor, width: 5)),
          child: Text(
            'DEVSTORE',
            style: primaryTextStyle.copyWith(letterSpacing: 10),
          ),
        ),
      ),
    );
  }
}
