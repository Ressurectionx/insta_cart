import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';
import 'package:insta_cart/src/data/models/product_model.dart';

import '../../../../config/utils/utils.dart';
import '../../../widget/widgets.dart';
import '../../product_list_screen/components/product_list/rating_bar.dart';

class ImageCarousel extends StatelessWidget {
  List<String> images;
   ImageCarousel(this.images, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    int currentIndex = 0;
    var list = [];
    for (var i = 0; i < images.length; i++) {
      list.add(Image.network(images[0]));
    }
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.5,
            onPageChanged: (index, reason) {

                currentIndex = index;

            },
          ),
          items: list.map((card) {
            return Builder(builder: (BuildContext context) {
              return card;
            });
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list.map(
                (image) {
              int index = list.indexOf(image);
              return Container(
                width: currentIndex == index ? 15 : 8.0,
                height: 8.0,
                margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: currentIndex == index
                        ? const Color.fromRGBO(0, 0, 0, 0.9)
                        : const Color.fromRGBO(0, 0, 0, 0.4)),
              );
            },
          ).toList(), // this was the part the I had to add
        )
      ],
    );
  }
}
