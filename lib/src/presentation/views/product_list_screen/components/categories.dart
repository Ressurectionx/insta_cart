import 'package:flutter/material.dart';
import 'package:insta_cart/src/config/size_config/size_configuration.dart';

import '../../../../config/utils/utils.dart';
import '../../../widget/widgets.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenHeight(50),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = category[index].index;
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 16, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: selectedIndex == category[index].index
                            ? greenLight.withOpacity(0.7)
                            : white,
                        border: Border.all(color: grey, width: 1.5)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        paddingLeft(10),
                        Icon(
                          category[index].icon,
                          color: blue,
                        ),
                        paddingLeft(15),
                        Text(
                          category[index].title.toUpperCase(),
                          style: mediumBlack,
                        ),
                        paddingLeft(10),
                      ],
                    ),
                  ),
                )));
  }
}
