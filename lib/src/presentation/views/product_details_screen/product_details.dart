import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';
import 'package:insta_cart/src/data/models/product_model.dart';

import '../../../config/utils/utils.dart';
import '../../widget/widgets.dart';
import '../product_list_screen/components/components.dart';
import 'components/components.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  Products products;

   ProductDetails(this.products,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: crossAxisStart,
              children: [
                const BackButton(),
                ImageCarousel(products.images!.toList()),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    products.description.toString(),
                    style: mediumBlack,
                  ),
                ),
                Row(
                  children: [
                    paddingLeft(10),
                    ratingBar(products.rating),
                    paddingLeft(4),
                    Text(
                      "531 ratings",
                      style: lightCustom(grey),
                    ),
                  ],
                ),
                paddingTop(15),
                priceContainer(products.price),
                aboutProduct(
                  products.brand,
                  products.category,
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Row(
                  children: [addToCartButton(), buyNowButton()],
                ))
          ],
        )),);
  }
}
