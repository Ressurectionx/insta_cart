import 'dart:ui';

import 'package:flutter/material.dart';

//Height and Width of device
var pixelRatio = window.devicePixelRatio;
var logicalScreenSize = window.physicalSize / pixelRatio;
var screenWidth = logicalScreenSize.width;
var height = logicalScreenSize.height;

MainAxisAlignment mainAxisCenter = MainAxisAlignment.center;
CrossAxisAlignment crossAxisCenter = CrossAxisAlignment.center;
MainAxisAlignment mainAxisStart = MainAxisAlignment.start;
CrossAxisAlignment crossAxisStart = CrossAxisAlignment.start;

double getProportionateScreenHeight(double inputHeight) {
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * height;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
