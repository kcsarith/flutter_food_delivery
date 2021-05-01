import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/models/restaurant.dart';

class RestaurantHeader extends StatelessWidget {
  final Restaurant restaurant;
  RestaurantHeader(this.restaurant);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          restaurant.name,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '0.2 miles away',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
