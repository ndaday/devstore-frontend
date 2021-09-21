import 'package:devstore/pages/signin_page.dart';
import 'package:devstore/pages/signup_page.dart';
import 'package:devstore/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
        title: 'DevStore',
        routes: {
          '/splash': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/': (context) => SignUpPage(),
        });
  }
}
