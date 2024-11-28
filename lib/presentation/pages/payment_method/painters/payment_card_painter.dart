import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class PaymentCardPainter extends CustomPainter {
  final Color color;
  const PaymentCardPainter({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.02342342, 0);
    path_0.lineTo(size.width * 0.9765766, 0);
    path_0.cubicTo(size.width * 0.9894895, 0, size.width,
        size.height * 0.01944444, size.width, size.height * 0.04333333);
    path_0.lineTo(size.width, size.height * 0.9566667);
    path_0.cubicTo(size.width, size.height * 0.9805556, size.width * 0.9894895,
        size.height * 1.000000, size.width * 0.9765766, size.height * 1.000000);
    path_0.lineTo(size.width * 0.02342342, size.height * 1.000000);
    path_0.cubicTo(
        size.width * 0.01051051,
        size.height * 1.000000,
        size.width * 3.467363e-17,
        size.height * 0.9805556,
        size.width * 3.467363e-17,
        size.height * 0.9566667);
    path_0.lineTo(size.width * 3.467363e-17, size.height * 0.04333333);
    path_0.cubicTo(
        size.width * 3.467363e-17,
        size.height * 0.01944444,
        size.width * 0.01051051,
        size.height * 6.414622e-17,
        size.width * 0.02342342,
        size.height * 6.414622e-17);
    path_0.close();

    Paint paint_0Fill = Paint()..style = PaintingStyle.fill;
    paint_0Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3657658, size.height * 0.5555556);
    path_1.cubicTo(
        size.width * 0.4273273,
        size.height * 0.5388889,
        size.width * 0.4921922,
        size.height * 0.5555556,
        size.width * 0.5408408,
        size.height * 0.5755556);
    path_1.cubicTo(
        size.width * 0.5930931,
        size.height * 0.5972222,
        size.width * 0.6453453,
        size.height * 0.6194444,
        size.width * 0.6984985,
        size.height * 0.6255556);
    path_1.cubicTo(
        size.width * 0.7966967,
        size.height * 0.6361111,
        size.width * 0.8420420,
        size.height * 0.5816667,
        size.width * 0.9846847,
        size.height * 0.5294444);
    path_1.cubicTo(size.width * 0.9924925, size.height * 0.5266667, size.width,
        size.height * 0.5222222, size.width, size.height * 0.5222222);
    path_1.lineTo(size.width, size.height * 0.9977778);
    path_1.lineTo(size.width * 0.1921922, size.height * 0.9983333);
    path_1.cubicTo(
        size.width * 0.1921922,
        size.height * 0.9983333,
        size.width * 0.1933934,
        size.height * 0.9733333,
        size.width * 0.1954955,
        size.height * 0.9494444);
    path_1.cubicTo(
        size.width * 0.1966967,
        size.height * 0.9344444,
        size.width * 0.1969970,
        size.height * 0.9294444,
        size.width * 0.1984985,
        size.height * 0.9200000);
    path_1.cubicTo(
        size.width * 0.2081081,
        size.height * 0.8544444,
        size.width * 0.2534535,
        size.height * 0.5861111,
        size.width * 0.3657658,
        size.height * 0.5555556);
    path_1.close();

    Paint paint_1Fill = Paint()..style = PaintingStyle.fill;
    paint_1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.6832478, size.height * 0.9487914),
        Offset(size.width * 0.1412166, size.height * 0.3205984),
        [Colors.white.withOpacity(0.1), Colors.white.withOpacity(0)],
        [0, 1]);
    canvas.drawPath(path_1, paint_1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
