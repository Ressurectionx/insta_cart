
//Black TextStyles

//TextStyle titleBlack=TextStyle(fontFamily: "Roboto,fontWeight: FontWeight.w600,fontSize: 36,color: black);
import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/utils/app_color.dart';

TextStyle titleBlack = TextStyle(
    fontFamily: "Old Standard TT",
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: black);
TextStyle headingBlack = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: black,
    letterSpacing: 1.0);
TextStyle mediumBlack = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: black,
    letterSpacing: 1.0);
TextStyle black22 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: black,
    letterSpacing: 1.0);

TextStyle regularBlack = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: black);
TextStyle lightBlack = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: black);
TextStyle extraLightBlack = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: black);

//Custom TextStyles
TextStyle titleCustom(Color color) => TextStyle(
    fontFamily: "Old Standard TT",
    fontWeight: FontWeight.w600,
    fontSize: 36,
    color: color);

TextStyle headingCustom(Color color) => TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: color);

TextStyle mediumCustom(Color color) => TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: color);

TextStyle regularCustom(Color color) => TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: color);

TextStyle lightCustom(Color color) => TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: color);

TextStyle extraLightCustom(Color color) => TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: color);

TextStyle regularUnderLine = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w500,
    fontSize: 17,
    color: grey,
    decoration: TextDecoration.lineThrough);
