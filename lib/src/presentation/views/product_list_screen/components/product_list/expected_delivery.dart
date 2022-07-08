import 'package:flutter/material.dart';

import '../../../../../config/utils/utils.dart';
import '../../../../widget/widgets.dart';

class ExpectedDelivery extends StatelessWidget {
  const ExpectedDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Free Delivery",
          style: extraLightCustom(black.withOpacity(0.75)),
        ),
        paddingLeft(5),
        Text(
          "2 PM Tomorrow",
          style: lightCustom(black),
        ),
      ],
    );
  }
}