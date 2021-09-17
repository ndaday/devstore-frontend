import 'package:devstore/theme.dart';
import 'package:devstore/widget/logo.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          children: [
            Logo(),
            Image.asset('assets/box1.jpeg'),
          ],
        ),
      ),
    );
  }
}
