import 'package:flutter/cupertino.dart';

import 'app_constants.dart';

class Category {
  String title;
  IconData icon;
  int index;

  Category(this.title, this.icon, this.index);
}

List<Category> category = [
  Category(categories[0], CupertinoIcons.star_circle, 0),
  Category(categories[1], CupertinoIcons.star, 1),
  Category(categories[2], CupertinoIcons.money_dollar_circle_fill, 2),
  Category(categories[3], CupertinoIcons.bag, 3),
  Category(categories[4], CupertinoIcons.music_house, 4),
  Category(categories[5], CupertinoIcons.checkmark_seal_fill, 5),
  Category(categories[6], CupertinoIcons.shield, 6),
  Category(categories[7], CupertinoIcons.scope, 7),
  Category(categories[8], CupertinoIcons.star_circle, 8),
  Category(categories[9], CupertinoIcons.star_circle, 9),
  Category(categories[10], CupertinoIcons.star_circle, 10),
  Category(categories[11], CupertinoIcons.star_circle, 11),
  Category(categories[12], CupertinoIcons.star_circle, 12),
  Category(categories[13], CupertinoIcons.star_circle, 13),
  Category(categories[14], CupertinoIcons.star_circle, 14),
  Category(categories[15], CupertinoIcons.star_circle, 15),
  Category(categories[16], CupertinoIcons.star_circle, 16),
  Category(categories[17], CupertinoIcons.star_circle, 17),
  Category(categories[18], CupertinoIcons.star_circle, 18),
  Category(categories[19], CupertinoIcons.star_circle, 19),
//  Category(categories[20], CupertinoIcons.star_circle, 0),
  //Category(categories[21], CupertinoIcons.star_circle, 0),
];