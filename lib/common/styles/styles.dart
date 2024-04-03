import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//color
const Color primaryColor = Color(0xFFFFFFFF);
const Color secondaryColor = Colors.blue;
const Color contentColor = Color(0XFFF7F8FA);
const Color titleColor = Color(0XFF2F535F);
const Color textColor = Color(0XFF7491A0);

//text
final myTextTheme = TextTheme(
  headline1: GoogleFonts.roboto(
      fontSize: 105, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.roboto(
      fontSize: 65, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.roboto(fontSize: 52, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.roboto(
      fontSize: 37, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.roboto(
      fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.roboto(
      fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.roboto(
      fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.publicSans(
      fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.publicSans(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.publicSans(
      fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.publicSans(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.publicSans(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

//size
const double buttonHeight = 56.0;
const double textFieldHeight = 46.0;
