import 'package:flutter/material.dart';

class HomeAppBar extends PreferredSize {
  final String cartAmount;

  @override
  final Size preferredSize;

  HomeAppBar(this.cartAmount) : preferredSize = Size.fromHeight(50.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.account_circle),
        iconSize: 30.0,
        onPressed: () {},
      ),
      title: Text('Food Delivery'),
      actions: <Widget>[
        TextButton(
          child: Text('Cart (${this.cartAmount})',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          onPressed: () {},
        ),
      ],
    );
  }
}
