import 'package:flutter/material.dart';

import '../../../../../config/utils/utils.dart';
import '../../../../widget/widgets.dart';

class ExchangeOff extends StatelessWidget {
  const ExchangeOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Upto",
          style: extraLightCustom(black.withOpacity(0.75)),
        ),
        paddingLeft(5),
        Text(
          "\$200",
          style: lightCustom(black),
        ),
        Text(
          "Off on Exchange",
          style: extraLightCustom(black.withOpacity(0.75)),
        ),
        paddingLeft(5),
      ],
    );
  }
}