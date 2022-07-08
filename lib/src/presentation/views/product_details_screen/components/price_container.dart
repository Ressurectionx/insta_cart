import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';

import '../../../../config/utils/utils.dart';

Widget priceContainer(int? price) => Stack(
  children: [
    Container(
      height: getProportionateScreenHeight(80),
      width: screenWidth * 0.92,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: greenDark.withOpacity(0.1),
          boxShadow: [BoxShadow(color: blueLight.withOpacity(0.1))]),
      margin: const EdgeInsets.only(left: 15),
    ),
    Positioned(
        left: 30,
        top: 10,
        child: Text(
          "Extra \$100 off",
          style: regularCustom(greenDark),
        )),
    Positioned(
        left: 30,
        top: 40,
        child: Text(
          "\$$price",
          style: black22,
        )),
  ],
);