import 'package:flutter/material.dart';

import '../../../../config/utils/utils.dart';
import '../../../widget/widgets.dart';

Widget aboutProduct(String? brand, String? category) => Column(
  children: [
    paddingTop(20),
    productFeatures("Brand:", brand),
    paddingTop(15),
    productFeatures("Category:", category),
    paddingTop(15),
    productFeatures("Available:", "Yes"),
  ],
);

Widget productFeatures(feature, value) => Row(
  children: [
    paddingLeft(16),
    Text(
      feature,
      style: lightCustom(black.withOpacity(0.80)),
    ),
    paddingLeft(4),
    Text(
      value,
      style: regularBlack,
    )
  ],
);