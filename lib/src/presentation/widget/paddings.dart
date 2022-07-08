
import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';

Widget paddingTop(double value) => SizedBox(
      height: getProportionateScreenHeight(value),
    );

Widget paddingLeft(double value) => SizedBox(
      width: getProportionateScreenWidth(value),
    );
