import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  RatingStars(this.rating);
  @override
  Widget build(BuildContext context) {
    String starString = '';
    for (int i = 0; i < rating; i++) {
      starString += '⭐';
    }
    starString.trim();
    return Text(
      starString,
      style: TextStyle(
        fontSize: 18.0,
      ),
    );
  }
}
