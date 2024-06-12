import 'package:flutter/material.dart';

const primaryColor = Color(0xFF09FBD3);
const secondaryColor = Color(0xFFFE53BB);

const textColor = Colors.black;
const lightgrayColor = primaryColor;
const whiteColor = Color(0xFFFFFFFF);
const blackColor = Colors.black;

Color lightBackgroundColor = const Color(0xFFFFFFFF);
Color lightTextColor = primaryColor;
Color darkBackgroundColor = Colors.black;
Color darkTextColor = const Color(0xFFF3F2FF);

const pinkpurple = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0XFFaa367c), Color(0XFF4a2fbd)],
);

const grayBack = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0XFF11101D), Color(0XFF11101D)],
);
const grayWhite = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFFFFF), Color(0xFFF3F2FF)],
);

const buttonGradi = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0XFF7DE7EB), Color(0XFF33BBCF)],
);

const contactGradi = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0XFF11101D), Color(0XFF11101D)],
);

//
BoxShadow primaryColorShadow =const  BoxShadow(
  color: Colors.black,
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);
BoxShadow blackColorShadow = const BoxShadow(
  color: Colors.black,
  blurRadius: 12.0,
  offset: const Offset(0.0, 0.0),
);
const Color darkgreen =Color.fromARGB(255, 2, 103, 86);
