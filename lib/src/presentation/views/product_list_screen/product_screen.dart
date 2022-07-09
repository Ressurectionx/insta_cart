import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';
import 'package:insta_cart/src/config/utils/utils.dart';
import 'package:insta_cart/src/data/models/product_model.dart';

import '../../widget/widgets.dart';
import 'components/components.dart';

// ignore: must_be_immutable
class ProductScreen extends StatefulWidget {
  BuildContext context;
  ProductModel productModel;
  ProductModel laptopModel;
  ProductModel mobileModel;

  ProductScreen(this.context,this.productModel,this.laptopModel,this.mobileModel, {Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}


class _ProductScreenState extends State<ProductScreen> {
  List? pages;
  PageController pageController=PageController(initialPage: 2);

  void initState(){
    pages;
  }
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
            Categories(widget.productModel,widget.mobileModel,widget.laptopModel),

            // ProductTile(),
          ],
        ),
      ),
    );

  }
}


