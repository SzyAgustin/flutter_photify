import 'package:flutter/material.dart';

class PhotosList extends StatelessWidget {
  final List<String> photos = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',

  ]; //should be a list of images (or maybe urls of images).
  //After, should be a stream probably

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      right: 0,
      left: 0,
      bottom: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: photosList(context),
      ),
    );
  }

  Widget photosList(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.75,
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
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(photos[i]),
        ),
      ),
    );
  }
}
