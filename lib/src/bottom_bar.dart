import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        color: Colors.grey[900].withOpacity(0.9),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.lightBlue[400],
              size: 40
            ),
            Icon(
              Icons.search,
              color: Colors.lightBlue[400],
              size: 40
            ),

          ],
        ),
      ),
    );
  }
}
