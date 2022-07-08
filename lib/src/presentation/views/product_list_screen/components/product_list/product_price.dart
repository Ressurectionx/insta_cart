import 'package:flutter/material.dart';

import '../../../../../config/utils/font_styles.dart';
import '../../../../widget/widgets.dart';

class ProductPrice extends StatelessWidget {
  int price, discount;

  ProductPrice(this.price, this.discount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int originalPrice = (price + price * (discount / 100)).toInt();
    return Row(
      children: [
        Text(
          originalPrice.toString(),
          style: regularUnderLine,
        ),
        paddingLeft(5),
        Text(
          "\$$price",
          style: regularBlack,
        ),
        paddingLeft(5),
        Text(
          "$discount% off",
          style: regularCustom(Colors.green),
        ),
      ],
    );
  }
}