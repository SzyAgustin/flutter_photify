import 'package:flutter/material.dart';
import 'package:flutter_photify/src/painter_tools/size_util.dart';

class MainBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeUtil.size = MediaQuery.of(context).size;
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
      ..color = Colors.black.withOpacity(0.83)
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

    paint.color = Colors.grey[700];
    canvas.drawPath(path, paint);

    var circle = Offset(SizeUtil.getAxisX(220), SizeUtil.getAxisY(410));
    paint.color = Colors.grey[700];
    canvas.drawCircle(circle, SizeUtil.getAxisBoth(90), paint);
    paint.color = Colors.black54;
    canvas.drawCircle(circle, SizeUtil.getAxisBoth(70), paint);

    var circleToRect = Offset(SizeUtil.getAxisX(330), SizeUtil.getAxisY(490));
    var rect = Rect.fromCircle(center: circleToRect, radius: 70);
    paint.color = Colors.grey[700];
    canvas.drawRect(rect, paint);

    var rect2 = Rect.fromCircle(center: circleToRect, radius: 50);
    paint.color = Colors.black54;
    canvas.drawRect(rect2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) => old != this;
}
