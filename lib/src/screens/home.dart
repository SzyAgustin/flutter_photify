import 'package:flutter/material.dart';
import 'package:flutter_photify/src/screens/freelancer_media.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        color: Colors.lightBlue[400],
        onPressed: onPressed,
        child: Text("Log In with Google Account"),
      ),
    );
  }

  onPressed(){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FreelancerMedia();
    }));
  }
}