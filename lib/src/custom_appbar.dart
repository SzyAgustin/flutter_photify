import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String photoUrl;

  CustomAppBar({this.title, this.subtitle = "", this.photoUrl = ""});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //goBack,
            titleAndSub(),
            circleAvatar(),
          ],
        ),
      ),
    );
  }

  Widget titleAndSub() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,
            style: TextStyle(
                color: Colors.lightBlue[400],
                fontSize: 35,
                fontWeight: FontWeight.w600)),
        subtitle != ""
            ? Text(subtitle,
                style: TextStyle(
                    color: Colors.lightBlue[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w600))
            : SizedBox(),
      ],
    );
  }

  Widget circleAvatar() {
    if (photoUrl != "") {
      return CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(photoUrl),
      );
    }
    return SizedBox();
  }
}
