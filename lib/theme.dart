import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xff7678ED);
Color secondaryColor = Color(0xff38abbe);
Color alertColor = Color(0xffDF2935);
Color priceColor = Color(0xff2c96f1);

Color bgColor = Color(0xff58485b);

Color primaryTextColor = Color(0xffffffff);
Color secondaryTextColor = Color(0xffc4c4c4);

TextStyle titleTextStyle = GoogleFonts.lato(color: primaryTextColor);
TextStyle subTextStyle = GoogleFonts.lato(color: secondaryTextColor);
TextStyle priceTextStyle = GoogleFonts.lato(color: priceColor);
TextStyle alertTextStyle = GoogleFonts.lato(color: alertColor);

EdgeInsets marginAll = EdgeInsets.all(30);

EdgeInsets marginTop = EdgeInsets.only(top: 24);
EdgeInsets marginBottom = EdgeInsets.only(bottom: 30);

EdgeInsets marginHorizontal = EdgeInsets.symmetric(horizontal: 30);
EdgeInsets marginVertical = EdgeInsets.symmetric(vertical: 30);

EdgeInsets paddingAll = EdgeInsets.all(24);

EdgeInsets paddingHorizon = EdgeInsets.symmetric(horizontal: 24);
EdgeInsets paddingVertical = EdgeInsets.symmetric(vertical: 24);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
