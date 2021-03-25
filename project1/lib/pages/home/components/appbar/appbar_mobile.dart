import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text("Udemy"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
          onPressed: null,
        ),
      ],
    );
  }
}
