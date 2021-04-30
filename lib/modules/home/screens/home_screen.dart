import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/data/data.dart';
import 'package:flutter_food_delivery/modules/home/widgets/home_app_bar.dart';
import 'package:flutter_food_delivery/modules/home/widgets/home_recent_orders.dart';
import 'package:flutter_food_delivery/modules/home/widgets/home_search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(currentUser.cart.length.toString()),
      body: ListView(
        children: <Widget>[
          HomeSearchBar(),
          HomeRecentOrders(currentUser.orders),
        ],
      ),
    );
  }
}
