// Step 4 : sperate the Home widjet into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

// Step 5 : container,column, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orangeAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          color: Colors.orangeAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}