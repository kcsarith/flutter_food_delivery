import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/common_widgets/rating_stars.dart';
import 'package:flutter_food_delivery/models/restaurant.dart';
import 'package:flutter_food_delivery/modules/restaurant/screens/restaurant_screen.dart';

class HomeNearbyRestaurants extends StatelessWidget {
  final List<Restaurant> restaurants;
  HomeNearbyRestaurants(this.restaurants);

  _buildRestaurants(BuildContext context) {
    List<Widget> restaurantList = [];
    this.restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return RestaurantScreen(restaurant: restaurant);
            }),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.00),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: Colors.grey[200],
            ),
          ),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Hero(
                  tag: restaurant.imageUrl,
                  child: Image(
                    height: 150.0,
                    width: 150.0,
                    image: AssetImage(restaurant.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.0),
                    RatingStars(restaurant.rating),
                    SizedBox(height: 4.0),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    });
    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Nearby Restaurants',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        _buildRestaurants(context),
      ],
    );
  }
}
