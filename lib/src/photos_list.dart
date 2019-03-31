import 'package:flutter/material.dart';

class PhotosList extends StatelessWidget {
  final List<String> photos = [
    'Amazon Forest',
    'The Bahamas',
    'Australia',
    'The Volcanos',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k'
  ];
  //After, should be a stream, containing image, name, description, date, etc etc

  @override
  Widget build(BuildContext context) {
    //for some reason, it is separating the starting of the grid too much from the beggining of the list.
    return Positioned(
      top: 110,
      right: 0,
      left: 0,
      bottom: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: photosList(context),
      ),
    );
  }

  Widget photosList(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.72,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      children: List.generate(photos.length, (i) {
        return photoWidget(i);
      }),
    );
  }

  Widget photoWidget(int i) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 25,
                right: 20,
                left: 20,
                child: Text(photos[i],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
