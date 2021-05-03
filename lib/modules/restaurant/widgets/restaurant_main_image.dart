import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/models/restaurant.dart';

class RestaurantMainImage extends StatelessWidget {
  final Restaurant restaurant;
  RestaurantMainImage(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Hero(
          tag: restaurant.imageUrl,
          child: Image(
            height: 220.0,
            width: MediaQuery.of(context).size.width,
            image: AssetImage(restaurant.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 30.0,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              IconButton(
                  icon: Icon(Icons.favorite),
                  color: Theme.of(context).primaryColor,
                  iconSize: 35.0,
                  onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
