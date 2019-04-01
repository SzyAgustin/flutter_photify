import 'package:flutter/material.dart';
import 'package:flutter_photify/src/main_background.dart';
import '../bottom_bar.dart';
import '../photos_list.dart';
import '../custom_appbar.dart';

class FreelancerMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MainBackground(),
          CustomAppBar(
            title: "Home",
            subtitle: "This is the home page",
            photoUrl: 'https://randomuser.me/api/portraits/men/11.jpg',
          ),
          PhotosList(),
          BottomBar(),
        ],
      ),
    );
  }
}
