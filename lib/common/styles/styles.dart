import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//color
const Color primaryColor = Color(0xFFFFFFFF);
const Color secondaryColor = Colors.blue;
const Color contentColor = Color(0XFFF7F8FA);
const Color titleColor = Color.fromRGBO(47, 83, 95, 1);
const Color textColor = Colors.black;

//text
final myTextTheme = TextTheme(
  bodyLarge: GoogleFonts.nunitoSans(fontSize: 32, fontWeight: FontWeight.bold),
  bodyMedium: GoogleFonts.nunitoSans(fontSize: 24, fontWeight: FontWeight.w500),
  bodySmall:
      GoogleFonts.nunitoSans(fontSize: 16, fontWeight: FontWeight.normal),
  displayLarge: GoogleFonts.nunitoSans(
      fontSize: 57, fontWeight: FontWeight.w400, letterSpacing: -0.25),
  displayMedium: GoogleFonts.nunitoSans(
      fontSize: 45, fontWeight: FontWeight.w400, letterSpacing: 0.0),
  displaySmall: GoogleFonts.nunitoSans(
      fontSize: 30, fontWeight: FontWeight.w400, letterSpacing: 0.0),
  headlineLarge: GoogleFonts.nunitoSans(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineMedium: GoogleFonts.nunitoSans(
      fontSize: 28, fontWeight: FontWeight.w400, letterSpacing: 0.0),
  headlineSmall: GoogleFonts.nunitoSans(
      fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 0.0),
  titleLarge: GoogleFonts.nunitoSans(
      fontSize: 22, fontWeight: FontWeight.normal, letterSpacing: 0.0),
  titleMedium: GoogleFonts.nunitoSans(
      fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleSmall: GoogleFonts.nunitoSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  labelLarge: GoogleFonts.nunitoSans(
      fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 1.25),
  labelMedium: GoogleFonts.nunitoSans(
      fontSize: 12, fontWeight: FontWeight.normal, letterSpacing: 0.4),
  labelSmall: GoogleFonts.nunitoSans(
      fontSize: 11, fontWeight: FontWeight.normal, letterSpacing: 0.5),
);

//size
const double buttonHeight = 56.0;
const double textFieldHeight = 46.0;

final ThemeData appTheme = ThemeData(
  textTheme: myTextTheme,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryColor,
    onPrimary: Colors.black,
    secondary: secondaryColor,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: secondaryColor,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: secondaryColor),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    labelStyle: TextStyle(
      color: titleColor,
      fontWeight: FontWeight.normal,
      fontSize: 16,
    ),
    hintStyle: TextStyle(color: Colors.grey),
    iconColor: Colors.blue,
    prefixIconColor: Colors.blue,
    suffixIconColor: Colors.blue,
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey.shade300,
  ),
);
