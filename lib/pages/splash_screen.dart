import 'package:devstore/providers/product_provider.dart';
import 'package:devstore/theme.dart';
import 'package:devstore/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getInit();

    super.initState();
  }

  getInit() async {
    Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushNamedAndRemoveUntil(
        context, '/sign-in', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
