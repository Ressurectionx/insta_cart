import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';

import '../../../../config/utils/utils.dart';

Widget addToCartButton() => Container(
  width: screenWidth * 0.5,
  height: 45,
  decoration: BoxDecoration(color: white, boxShadow: [
    BoxShadow(color: greyLight, offset: const Offset(-1, -1)),
  ]),
  child: Center(
    child: Text(
      "ADD TO CART",
      style: regularBlack,
    ),
  ),
);

Widget buyNowButton() => Container(
  width: screenWidth * 0.5,
  height: 45,
  decoration: BoxDecoration(
    color: orange,
    boxShadow: [
      BoxShadow(color: greyLight, offset: const Offset(-1, -1)),
    ],
  ),
  child: Center(
    child: Text(
      "BUY NOW ",
      style: regularCustom(white),
    ),
  ),
);
