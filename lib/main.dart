import 'package:flutter/material.dart';
import 'package:flutter_photify/src/main_background.dart';
import 'src/custom_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            MainBackground(),
            CustomAppBar(
              title: "Home",
              subtitle: "This is the home page",
              photoUrl: 'https://randomuser.me/api/portraits/men/11.jpg',
            ),
            photosList(),
          ],
        ),
      ),
    );
  }

  Widget photosList() {
    return ListView(
      children: <Widget>[
        
      ],
    );
  }

  Widget appBar() {
    return Text("Home");
  }
}
