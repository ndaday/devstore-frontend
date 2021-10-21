import 'package:devstore/pages/login/sign_in_page.dart';
import 'package:devstore/pages/login/sign_up_page.dart';
import 'package:devstore/pages/main_page.dart';
import 'package:devstore/pages/splash_screen.dart';
import 'package:devstore/providers/auth_provider.dart';
import 'package:devstore/providers/product_provider.dart';
import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: backgroundPrimary));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.latoTextTheme(),
            primaryColor: primaryColor,
          ),
          title: 'DevStore',
          routes: {
            '/': (context) => SplashPage(),
            '/sign-in': (context) => SignInPage(),
            '/sign-up': (context) => SignUpPage(),
            '/main-page': (context) => MainPage(),
          }),
    );
  }
}
