import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget ratingBar(rating) => RatingBar(
    initialRating: rating,
    itemSize: 22,
    direction: Axis.horizontal,
    allowHalfRating: true,
    ratingWidget: RatingWidget(
        full: const Icon(Icons.star, color: Colors.green),
        half: const Icon(
          Icons.star_half,
          color: Colors.green,
        ),
        empty: const Icon(
          Icons.star_outline,
          color: Colors.orange,
        )),
    onRatingUpdate: (value) {});