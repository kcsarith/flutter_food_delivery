import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/common_widgets/rating_stars.dart';
import 'package:flutter_food_delivery/models/restaurant.dart';
import 'package:flutter_food_delivery/modules/restaurant/widgets/restaurant_header.dart';
import 'package:flutter_food_delivery/modules/restaurant/widgets/restaurant_main_image.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;
  RestaurantScreen({this.restaurant});
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RestaurantMainImage(widget.restaurant),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RestaurantHeader(widget.restaurant),
                RatingStars(widget.restaurant.rating),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
