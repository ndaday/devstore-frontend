import 'package:devstore/pages/main_page.dart';
import 'package:devstore/pages/sign_in_page.dart';
import 'package:devstore/pages/sign_up_page.dart';
import 'package:devstore/pages/splash_screen.dart';
import 'package:devstore/theme.dart';
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
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
          primaryColor: primaryColor,
        ),
        title: 'DevStore',
        routes: {
          '/splash': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/': (context) => MainPage(),
        });
  }
}
