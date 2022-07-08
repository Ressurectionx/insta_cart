import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';
import 'package:insta_cart/src/data/models/product_model.dart';
import 'package:insta_cart/src/presentation/views/product_details_screen/details.dart';
import 'package:insta_cart/src/presentation/views/product_details_screen/product_details.dart';

import '../../../../../config/utils/utils.dart';
import '../../../../widget/widgets.dart';
import '../components.dart';

// ignore: must_be_immutable
class ProductList extends StatelessWidget {
  ProductModel productModel;
  ProductList(this.productModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 1,
        child: ListView.builder(
        itemCount: productModel.products!.length,
        itemBuilder: (context, index) {
      return ProductTile(productModel.products![index]);
    }));
  }
}


class ProductTile extends StatelessWidget {
  Products products;

  ProductTile(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        paddingTop(12),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(products)));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: crossAxisCenter,
            children: [
              paddingLeft(8),
              productImage(products.thumbnail.toString()),
              paddingLeft(14),
              Column(
                mainAxisAlignment: mainAxisStart,
                crossAxisAlignment: crossAxisStart,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: crossAxisCenter,
                    children: [
                      productTitle(products.title.toString()),
                      addToFavourite,
                    ],
                  ),
                  paddingTop(2),
                  ratingRow(products.rating),
                  paddingTop(10),
                  ProductPrice(products.price!.toInt(),
                      products.discountPercentage!.toInt()),
                  paddingTop(6),
                  const ExpectedDelivery(),
                  paddingTop(6),
                  const ExchangeOff(),
                  paddingTop(8),
                  Text(
                    "Bank Offer",
                    style: lightCustom(Colors.green),
                  ),
                ],
              )
            ],
          ),
        ),
        paddingTop(6),
        products.category == "smartphones"
            ? Wrap(
          direction: Axis.horizontal,
          children: featureChips(),
        )
            : const Text(""),
        paddingTop(5),
        divider
        // Text(product!.title)
      ],
    );
  }
}