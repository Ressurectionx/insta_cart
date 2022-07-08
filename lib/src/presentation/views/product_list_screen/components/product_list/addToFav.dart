
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/utils/utils.dart';

Widget addToFavourite = Card(
    margin: const EdgeInsets.only(bottom: 5),
    color: white.withOpacity(0.80),
    shadowColor: black,
    elevation: 0.9,
    shape: const CircleBorder(),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 7),
        child: Icon(
          CupertinoIcons.heart_fill,
          color: grey,
        ),
      ),
    ));