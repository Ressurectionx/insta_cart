import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';
import 'package:insta_cart/src/config/utils/font_styles.dart';
import 'package:insta_cart/src/config/utils/utils.dart';
import 'package:insta_cart/src/data/models/product_model.dart';

import '../../widget/widgets.dart';
import 'components/components.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  BuildContext context;
  ProductModel productModel;
  ProductScreen(this.context,this.productModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: mainAxisStart,
          crossAxisAlignment: crossAxisCenter,
          children: [
            paddingTop(20),
            Text(
              "InstaCart",
              style: titleBlack,
            ),
            divider,
            const Categories(),
            divider,
            divider,
            ProductList(productModel),
            // ProductTile(),
          ],
        ),
      ),
    );
  }
}
