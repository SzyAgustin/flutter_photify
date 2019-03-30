import 'package:flutter/material.dart';

class MainBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: CurvesPainter(),
      ),
    );
  }
}

class CurvesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..color = Colors.black.withOpacity(0.85)
    ..strokeWidth = 8.0;

    Path opacityPath = Path();
    opacityPath.lineTo(0.0, size.height * 0.9);
    opacityPath.lineTo(size.width, size.height * 0.7);
    opacityPath.lineTo(size.width, 0.0);
    opacityPath.close();
    canvas.drawPath(opacityPath, paint);

    Path path = Path();
    path.moveTo(0.0, size.height * 0.9);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.7);
    path.close();

    paint.color = Colors.black.withOpacity(0.65);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) => old != this;

}