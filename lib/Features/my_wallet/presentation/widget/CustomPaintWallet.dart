import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomPaintWallet extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 86, 108, 162)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0700000, size.height * 0.0245333);
    path_0.cubicTo(
        size.width * 0.0127667,
        size.height * 0.0289333,
        size.width * 0.0060333,
        size.height * 0.1048667,
        size.width * 0.0055667,
        size.height * 0.1912000);
    path_0.cubicTo(
        size.width * 0.0105500,
        size.height * 0.3511000,
        size.width * 0.0171667,
        size.height * 0.7222667,
        size.width * 0.0255000,
        size.height * 0.8308000);
    path_0.cubicTo(
        size.width * 0.0310333,
        size.height * 0.9540667,
        size.width * 0.0575333,
        size.height * 0.9906667,
        size.width * 0.1233000,
        size.height * 0.9844000);
    path_0.quadraticBezierTo(size.width * 0.1926667, size.height * 0.9972667,
        size.width * 0.9066667, size.height * 0.9733333);
    path_0.quadraticBezierTo(size.width * 0.9959000, size.height * 0.9842667,
        size.width * 0.9899667, size.height * 0.8510000);
    path_0.cubicTo(
        size.width * 0.9886000,
        size.height * 0.7592667,
        size.width * 0.9808667,
        size.height * 0.3245333,
        size.width * 0.9599667,
        size.height * 0.1311333);
    path_0.cubicTo(
        size.width * 0.9386000,
        size.height * 0.0564667,
        size.width * 0.9182333,
        size.height * 0.0543333,
        size.width * 0.8499667,
        size.height * 0.0511333);
    path_0.cubicTo(
        size.width * 0.6555333,
        size.height * 0.0500667,
        size.width * 0.6549750,
        size.height * 0.0444833,
        size.width * 0.0700000,
        size.height * 0.0245333);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
