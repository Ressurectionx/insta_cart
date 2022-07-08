import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';
import 'package:insta_cart/src/presentation/views/product_list_screen/components/components.dart';

import '../../../../../config/utils/utils.dart';
import '../../../../widget/widgets.dart';

Widget productImage(String image) => Image.network(
  image,
  width: getProportionateScreenWidth(120),
  height: getProportionateScreenWidth(130),
  fit: BoxFit.contain,
);


Widget productTitle(title) => SizedBox(
    width: getProportionateScreenWidth(180),
    child: Text(
      title,
      style: regularBlack,
      maxLines: 2,
    ));



Widget ratingRow(rating) => Row(
  children: [
    ratingBar(rating),
    paddingLeft(5),
    Text(
      "(3,08,227)",
      style: lightCustom(grey),
    ),
    paddingLeft(2),
    Image.network(
      "https://static-assets-web.flixcart.com/www/linchpin/fk-cp-zion/img/fa_62673a.png",
      height: 17,
    )
  ],
);
