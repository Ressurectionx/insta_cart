import 'package:flutter/material.dart';

import '../../../../../../config/utils/utils.dart';

List<Widget> featureChips() {
  List<Widget> chips = [];
  for (int i = 0; i < features.length; i++) {
    Widget item = Container(
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: greyLight)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Text(
          features[i],
          style: lightCustom(darkGrey),
        ),
      ),
    );
    chips.add(item);
  }
  return chips;
}